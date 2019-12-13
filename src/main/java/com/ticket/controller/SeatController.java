package com.ticket.controller;

import java.util.List;

import javax.servlet.http.Cookie;
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
import com.ticket.dao.SelectedTicketDAO;
import com.ticket.dto.Remain;
import com.ticket.dto.SelectedTicketDTO;

@Controller
public class SeatController {

	@Autowired
	@Qualifier("remainDAO")
	RemainDAO remain;

	@Autowired
	@Qualifier("selectedTicketDAO")
	SelectedTicketDAO selectedTicket;
	
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
		Cookie[] cookies = request.getCookies();
		String performCode = "";
		String userId = "";


		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("performcode")) {
					performCode = cookie.getValue();
				}
				if(cookie.getName().equals("userId")) {
					userId = cookie.getValue();
				}
			}
		}

		if(userId.equals("")) {
			ModelAndView m = new ModelAndView();
			m.setViewName("main");
			return m;
		}
		System.out.println(seatRow+"석 "+seatNum+"열");
		ModelAndView m = new ModelAndView();
		SelectedTicketDTO ticket = new SelectedTicketDTO();
		ticket.setUserId(userId);
		ticket.setPerformCode(performCode);
		ticket.setSeatRow(seatRow);
		ticket.setSeatNum(Integer.parseInt(seatNum));
		System.out.println("장르: "+selectedTicket.get_performCode(performCode));
		ticket.setPerformGenreCode(selectedTicket.get_performCode(performCode));
		seat.setSelectedTicket(ticket);
		List<SelectedTicketDTO> list = seat.getSelectedTicket(ticket);
		SelectedTicketDTO finalTicket = new SelectedTicketDTO();
		finalTicket.setUserId(userId);
		finalTicket.setPerformCode(performCode);
		finalTicket.setPerformGenreCode(ticket.getPerformGenreCode());
		int sum = 0;
		boolean checkFinal = false;
		for(SelectedTicketDTO l : list) {
			if(l.getFinalPay() == 1) {
				checkFinal = true;
				System.out.println("break;");
				break;
			}
			sum += l.getTicketPrice();
			finalTicket.setInwon(finalTicket.getInwon() + 1);
			System.out.println("총인원: "+finalTicket.getInwon());
		}
		finalTicket.setTicketPrice(sum);
		if(checkFinal) {
			seat.updateFinalSelectedTicket(finalTicket);
		}
		else {
			seat.setFinalSelectedTicket(finalTicket);	
		}
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
		Cookie[] cookie = request.getCookies();

		String performCode = "";
		String userId = "";



		if (cookie != null) {
			for (int i = 0; i < cookie.length; i++) {
				if (cookie[i].getName().equals("performcode")) {
					performCode = cookie[i].getValue();
				}
			}
		}


		if (cookie != null) {
			for (int i = 0; i < cookie.length; i++) {
				if (cookie[i].getName().equals("userId")) {
					userId = cookie[i].getValue();
				}
			}
		}

		ModelAndView m = new ModelAndView();
		SelectedTicketDTO ticket = new SelectedTicketDTO();
		ticket.setUserId(userId);
		ticket.setPerformCode(performCode);
		ticket.setSeatRow(seatRow);
		ticket.setSeatNum(Integer.parseInt(seatNum));
		seat.deleteSelectedTicket(ticket);
		List<SelectedTicketDTO> list = seat.getSelectedTicket(ticket);
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
	public String setIsEmpty(HttpServletRequest request) {
		Cookie[] cookie = request.getCookies();

		String performCode = "";
		String userId = "";



		if (cookie != null) {
			for (int i = 0; i < cookie.length; i++) {
				if (cookie[i].getName().equals("performcode")) {
					performCode = cookie[i].getValue();
				}
			}
		}


		if (cookie != null) {
			for (int i = 0; i < cookie.length; i++) {
				if (cookie[i].getName().equals("userId")) {
					userId = cookie[i].getValue();
				}
			}
		}
		SelectedTicketDTO ticket = new SelectedTicketDTO();
		ticket.setUserId(userId);
		ticket.setPerformCode(performCode);
		if(seat.updateSeat(ticket))
			return "success";
		return "fail";
	}
}