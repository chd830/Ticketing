package com.ticket.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ticket.dao.PerformDAO;
import com.ticket.dto.GenreDTO;
import com.ticket.dto.PerformDTO;
import com.ticket.dto.PerformDetailDTO;
import com.ticket.dto.PerformInfoDTO;
import com.ticket.dto.PlaceDTO;
import com.ticket.dto.RatingDTO;
import com.ticket.dto.SeatingDTO;
import com.ticket.util.FileManager;

@Controller
public class PerformController {

	// private static final Logger logger =
	// LoggerFactory.getLogger(HomeController.class);

	@Autowired
	@Qualifier("performDAO")
	PerformDAO dao;

	@Autowired
	FileManager fileManager;

	@RequestMapping(value = "/performInsert.action", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		List<GenreDTO> genreList = dao.selectGenreData();
		List<PlaceDTO> placeList = dao.selectPlaceData();
		List<RatingDTO> ratingList = dao.selectRatingData();

		model.addAttribute("genreList", genreList);
		model.addAttribute("placeList", placeList);
		model.addAttribute("ratingList", ratingList);

		return "regConcert";
	}

	@RequestMapping(value = "/insert.action", method = RequestMethod.POST)
	public String performInsert(Locale locale, Model model, PerformDTO performDTO, SeatingDTO seatingDTO,
			HttpServletRequest req) throws Exception {

		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0: // a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1: // A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2: // 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}

		Cookie[] userId = req.getCookies();
		String id = "";

		if (userId != null) {
			for (int i = 0; i < userId.length; i++) {
				if (userId[i].getName().equals("userId")) {
					id = userId[i].getValue();
				}
			}
		}

		int count = 0;
		String savePath = "D:\\image";
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) req;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		String performCode = temp.toString();
		PerformDetailDTO detailDTO = null;
		PerformInfoDTO performInfoDTO = null;

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = dateFormat.parse(performDTO.getPerformStartDate());
		Date endDate = dateFormat.parse(performDTO.getPerformEndDate());
		long diffDate = (endDate.getTime() - startDate.getTime()) / (24 * 60 * 60 * 1000);
		int diffValue = Math.abs((int) diffDate);
		Calendar cal = Calendar.getInstance();

		for (int i = 0; i <= diffValue; i++) {
			cal.setTime(startDate);
			cal.add(Calendar.DATE, i);
			System.out.println(dateFormat.format(cal.getTime()));

			for (int j = 0; j < Integer.parseInt(req.getParameter("countTime")); j++) {
				System.out.println(req.getParameter("PerformTime" + j));
				performInfoDTO = new PerformInfoDTO();
				performInfoDTO.setPerformCode(performCode);
				performInfoDTO.setPerformDate(dateFormat.format(cal.getTime()));
				String performTime = req.getParameter("PerformTime" + j);
				if(performTime.length() == 5) 
					performTime = performTime + ":00";
				performInfoDTO.setPerformTime(performTime);
				dao.insertPerformInfoData(performInfoDTO);
			}
		}

		while (iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if (multipartFile.isEmpty() == false) {

				InputStream is = multipartFile.getInputStream();
				String originalFileName = multipartFile.getOriginalFilename();
				String newFileName = fileManager.doFileUpload(is, originalFileName, savePath);

				if (count == 0) {
					performDTO.setPerformMainImage(newFileName);
				} else {
					detailDTO = new PerformDetailDTO();
					detailDTO.setPerformDetailCode(dao.getMaxDetailData() + 1);
					detailDTO.setPerformCode(performCode);
					detailDTO.setPerformDetailImage(newFileName);
					dao.insertDetailData(detailDTO);
				}

				count++;
			}
		}

		performDTO.setPerformCode(performCode);
		performDTO.setCompanyId(id);

		seatingDTO.setPerformCode(performCode);
		seatingDTO.setPlaceCode(performDTO.getPerformPlaceCode());

		// 상세 정보 넣는 기능 추가 //티켓가격 설정 기능 추가

		dao.insertPerformData(performDTO);
		dao.insertSeatingData(seatingDTO);

		return "redirect:/performInsert.action";
	}

	@RequestMapping(value = "/calendarView.action", method = RequestMethod.GET)
	public ModelAndView calendarView(Locale locale, Model model, HttpServletRequest req) {

		LocalDate nowDate = LocalDate.now();
		int year = nowDate.getYear();
		int month = nowDate.getMonthValue();
		
		if(req.getParameter("year") != null && req.getParameter("month") != null) {
			year = Integer.parseInt(req.getParameter("year")); 
			month =	Integer.parseInt(req.getParameter("month")) + 1; 
		}
		
		HashMap<String, Object> hMap = new HashMap<String, Object>();
		
		hMap.put("year", year);
		hMap.put("month", month);
		
		
		System.out.println(year + " 년 " + month + " 월");
		
		List<Map<String, Object>> startList = dao.selectCalendarStartData(hMap);
		List<Map<String, Object>> endList = dao.selectCalendarEndData(hMap);
		System.out.println(endList.size());

		/*
		HttpSession session = req.getSession();
		String root = session.getServletContext().getRealPath("/");
		String savePath = root + "pds" + File.separator + "data";
		*/

		ModelAndView mav = new ModelAndView();
		//mav.addObject("savePath", savePath);
		mav.addObject("startList", startList);
		mav.addObject("endList", endList);
		mav.setViewName("calendarView");

		return mav;
	}

}
