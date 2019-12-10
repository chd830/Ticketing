package com.ticket.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ticket.dao.RemainDAO;
import com.ticket.dao.SeatDAO;
import com.ticket.dto.Remain;
import com.ticket.dto.SelectedTicket;
 
@Controller
public class SeatController {

	@Autowired
	@Qualifier("remainDAO")
	RemainDAO remain;
	
	@Autowired
	@Qualifier("seatDAO")
	SeatDAO seat;
		
	@RequestMapping(value = "/step2", method = RequestMethod.GET)
	public String reservation(HttpServletRequest request) {
		List<Remain> checkSeat = remain.selectListIsEmpty();
		System.out.println(checkSeat.size());
		request.setAttribute("checkSeat", checkSeat);
		return "step2";
	}
	
	@RequestMapping(value = "/right", method = RequestMethod.GET)
	public String right() {
		return "right";
	}
	
	
	/*
	 * SelectedTicket에 선택된 좌석을 입력하고, 
	 * 선택된 좌석을 포함하여 right페이지를 반환.
	 * right페이지에서 선택된 좌석들의 리스트를 출력.
	 */
	@RequestMapping(value = "/get/seatData", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView setTicket(@RequestParam String seatRow, @RequestParam String seatNum, HttpServletRequest request) {
		ModelAndView m = new ModelAndView();
		SelectedTicket ticket = new SelectedTicket();
		ticket.setSeatRow(seatRow);
		ticket.setSeatNum(Integer.parseInt(seatNum));
		seat.setSelectedTicket(ticket);
		List<SelectedTicket> list = seat.getSelectedTicket("test");
		m.setViewName("right");
		m.addObject("seatRow", seatRow);
		m.addObject("seatNum", seatNum);
		m.addObject("list", list);
		request.setAttribute("seatRow", seatRow);
		request.setAttribute("seatNum", seatNum);
		request.setAttribute("list", list);
		return m;
	}
	
	/*
	 * 선택한 좌석을 다시 클릭했을 때 SelectedTicket에서 삭제하고
	 * 삭제된 좌석을 제외한 나머지 좌석들의 정보를 right로 반환.
	 */
	@RequestMapping(value = "/delete/seatData", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView removeTicketData(@RequestParam String seatRow, @RequestParam String seatNum, HttpServletRequest request) {
		ModelAndView m = new ModelAndView();
		SelectedTicket ticket = new SelectedTicket();
		ticket.setSeatRow(seatRow);
		ticket.setSeatNum(Integer.parseInt(seatNum));
		seat.deleteSelectedTicket(ticket);
		List<SelectedTicket> list = seat.getSelectedTicket("test");
		m.setViewName("right");
		m.addObject("seatRow", "");
		m.addObject("seatNum", "");
		m.addObject("list", list);
		request.setAttribute("seatRow", "");
		request.setAttribute("seatNum", "");
		request.setAttribute("list", list);
		return m;
	}

	/* 결제가 다 되었을 때 처리해야하는 부분
	 * selectedTicket에서 userId랑, performCode로 >> 이부분은 생략함.
	 * 선택한 공연에서 선택한 좌석을 List로 가져온다.
	 * 각각의 list에서 seatrow, seatnum을 가져와서 
	 * dao를 통해 remainData의 좌석을 isEmpty = 0으로 만든다.
	 */
	@RequestMapping(value = "/set/remainData", method = RequestMethod.GET)
	@ResponseBody
	public String setIsEmpty(/* @RequestParam String userId, @RequestParam String performCode */) {
		System.out.println("controller");
		if(seat.updateSeat())
			 return "success";
		return "fail";
	}
}