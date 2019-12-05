package com.ticket.controller;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ticket.dao.PosterDAO;
import com.ticket.dto.PayDTO;
import com.ticket.dto.PerformDetailDTO;
import com.ticket.dto.PosterDTO;

@Controller
public class PosterController {

	@Autowired
	@Qualifier("posterDAO")
	PosterDAO PosterDAO;

	@RequestMapping(value = "/poster.action", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView poster(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// ÄíÅ° °¡Á®¿À±â
		// id ÄíÅ°
		Cookie[] userId = request.getCookies();
		String id = "";

		if (userId != null) {
			for (int i = 0; i < userId.length; i++) {
				if (userId[i].getName().equals("userId")) {
					id = userId[i].getValue();
				}
			}
		}

		// performcodeÄíÅ°
		Cookie[] p_peformcode = request.getCookies();
		String performcode1 = "";

		if (p_peformcode != null) {
			for (int i = 0; i < p_peformcode.length; i++) {
				if (p_peformcode[i].getName().equals("performCode")) {
					performcode1 = p_peformcode[i].getValue();
				}
			}
		}

		ModelAndView mav = new ModelAndView();

		String performCode = request.getParameter("performCode");

		PosterDTO p_dto = PosterDAO.getReadData(performCode);
		PayDTO pay_dto = PosterDAO.getPayData(performCode);
		List<PerformDetailDTO> lists = PosterDAO.getDetailImageData(performCode);
				

		// performcode ÄíÅ° »ý¼º
		Cookie p_performCode = new Cookie("performcode", performCode);
		//p_performCode.setMaxAge(600*24*10);
		p_performCode.setPath("/ticketing");
		response.addCookie(p_performCode);
				
		
		mav.setViewName("poster");
		mav.addObject("p_dto", p_dto);
		mav.addObject("pay_dto", pay_dto);
		mav.addObject("lists", lists);
				
		return mav;

	}

}
