package com.ticket.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ticket.dao.SelectedTicketDAO;
import com.ticket.dto.SelectedTicketDTO;
import com.ticket.util.MyUtil;

@Controller
public class SelectTicketController {
	
	@Autowired
	@Qualifier("selectedTicketDAO")
	SelectedTicketDAO dao;
	
	@Autowired
	MyUtil myUtil;

	String selectYear = "";
	String selectMonth = "";
	String selectDay = "";
	
	SelectedTicketDTO stdto;
	
	@RequestMapping(value = "/home.action", method = RequestMethod.GET)
	public String home() {
		
		return "home";
		
	}
	
	/*
	 * @RequestMapping(value = "/home_ok.action", method =
	 * {RequestMethod.GET,RequestMethod.POST}) public String
	 * home_ok(selectedTicketDTO dto, HttpServletRequest request,HttpServletResponse
	 * response) {
	 * 
	 * return "step1";
	 * 
	 * }
	 */
	
	
	@RequestMapping(value = "/step1.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String step1(HttpServletRequest request,HttpServletResponse response) {
		
	  SelectedTicketDTO stdto = new SelectedTicketDTO();
		
	  String userId = "hong"; 
	  String performCode = "1111";
	  String selectedYear = selectYear;
	  String selectedMonth = selectMonth;
	  String selectedDay = selectDay;
	  String time = request.getParameter("time");
	  
	  String selectDate = selectedYear + "." + selectedMonth + "." + selectedDay;
	  
	  stdto.setUserId(userId);
	  stdto.setPerformCode(performCode);
	  stdto.setSelectedDate(selectDate);
	  stdto.setTime(time);
	  
	  dao.home_updateData(stdto);
	 
	  request.setAttribute("userId", userId);
	  request.setAttribute("performCode", performCode);
	  request.setAttribute("selectedYear", selectedYear);
	  request.setAttribute("selectedMonth", selectedMonth);
	  request.setAttribute("selectedDay", selectedDay);
	  request.setAttribute("time", time);
	  
	 return "step1";
		
	}
	
	
	 @RequestMapping(value = "getDate", method = RequestMethod.GET)
	 @ResponseBody 
	 public String getDate(@RequestParam String year,@RequestParam String month,@RequestParam String day, HttpServletRequest request) {
	  
		  selectYear = year;
		  selectMonth = month;
		  selectDay = day;
		  
		  String params = selectYear + selectMonth + selectDay;
		  
		  return params;
	  
	 }
	 
	 @RequestMapping(value = "changeDate", method = RequestMethod.GET)
	 @ResponseBody 
	 public String changeDate(@RequestParam String params, HttpServletRequest request) {
	  
		 System.out.println("들어왔뉘?");
		 
		 String userId = "hong";
		 String performCode = "1111";
		 
		 SelectedTicketDTO stdto = new SelectedTicketDTO();
		 
		 stdto.setUserId(userId);
		 stdto.setPerformCode(performCode);
		 stdto.setSelectedDate(params);
		 
		 dao.date_updateData(stdto);
		 
		 System.out.println("날짜 update 완료");
		 
		 return params;
	 
	 }
	 
	 @RequestMapping(value = "changeTime", method = RequestMethod.GET)
	 @ResponseBody 
	 public String changeTime(@RequestParam String time, HttpServletRequest request) {
	  
		 System.out.println("time들어왔뉘?");
		 
		 String userId = "hong";
		 String performCode = "1111";
		 int realtime = time.indexOf(":");
		 
		 String rtime = time.substring(realtime-2, realtime+3);
		 
		 SelectedTicketDTO stdto = new SelectedTicketDTO();
		 
		 stdto.setUserId(userId);
		 stdto.setPerformCode(performCode);
		 stdto.setTime(rtime);
		 
		 dao.time_updateData(stdto);
		 
		 System.out.println("시간 update 완료");
		 
		 return time;
	 
	 }
	 
	 @RequestMapping(value = "changeInwon", method = RequestMethod.GET)
	 @ResponseBody 
	 public String changeInwon(@RequestParam String inwon, HttpServletRequest request) {
	  
		 System.out.println("inwon들어왔뉘?");
		 
		 System.out.println(inwon + "********");
		 
		 String userId = "hong";
		 String performCode = "1111";
		 
		 SelectedTicketDTO stdto = new SelectedTicketDTO();
		 
		 stdto.setUserId(userId);
		 stdto.setPerformCode(performCode);
		 stdto.setInwon(Integer.parseInt(inwon));
		 
		 dao.inwon_updateData(stdto);
		 
		 System.out.println("인원 update 완료");
		 
		return inwon;
	 
	 }
	 
	 
	 @RequestMapping(value = "detailDate", method = RequestMethod.GET)
	 @ResponseBody 
	 public ModelAndView detailDate(@RequestParam String check, HttpServletRequest request) {
	  
		System.out.println("detailDate들어왔뉘?");
		System.out.println(check);
		 
		//HashMap<String, Object> hmap = dao.detail_readData();
		
		SelectedTicketDTO stdto = dao.detail_readData();
		
		System.out.println("stdto 했어?");
		
		ModelAndView mav = new ModelAndView();
		 
		mav.setViewName("detail");
			
		//mav.addObject("hmap",hmap);
		
		mav.addObject("stdto",stdto);
		
		
		//request.setAttribute("hmap", hmap);
		request.setAttribute("stdto", stdto);
		
		//System.out.println(hmap);
		
		return mav;
	 
	 }
	 
	 
	 
	 
	
	
	/*
	 * @RequestMapping(value = "gett", method = RequestMethod.GET)
	 * 
	 * @ResponseBody 
	 * public ModelAndView testdetail(@RequestParam String de,String
	 * step, HttpServletRequest request) {
	 * 
	 * ModelAndView mv = new ModelAndView();
	 * 
	 * mv.setViewName("detail"); mv.addObject("params",de);
	 * mv.addObject("step",step);
	 * 
	 * request.setAttribute("params", de); request.setAttribute("step", step);
	 * 
	 * return mv;
	 * 
	 * }
	 * 
	 * @RequestMapping(value = "selectTime", method = RequestMethod.GET)
	 * 
	 * @ResponseBody public ModelAndView selectTime(@RequestParam String time,
	 * HttpServletRequest request) {
	 * 
	 * ModelAndView mv = new ModelAndView();
	 * 
	 * mv.setViewName("detail"); mv.addObject("time",time);
	 * 
	 * request.setAttribute("time", time);
	 * 
	 * return mv;
	 * 
	 * }
	 */
	
	
}