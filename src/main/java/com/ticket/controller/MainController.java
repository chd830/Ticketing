package com.ticket.controller;

import java.io.File;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ticket.util.HttpUtils;
import com.ticket.util.MyUtil;
import com.ticket.dao.MainDAO;
import com.ticket.dto.CompanyMainDTO;
import com.ticket.dto.MainListDTO;
import com.ticket.dto.UserMainDTO;

@Controller
public class MainController {
	
	@Autowired @Qualifier("mainDAO") MainDAO dao;
	@Resource MyUtil myUtil;
	 
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public String main(Locale locale, Model model) {
		
		return "main";
		
	}
	
	//첫 메인 화면
	@RequestMapping(value = "/main.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String mainPage(Locale locale, Model model, HttpServletRequest request, MainListDTO mainListDTO, HttpSession session) throws Exception {

		Cookie[] userId = request.getCookies();
		String id = "";

		if (userId != null) {
			for (int i = 0; i < userId.length; i++) {
				if (userId[i].getName().equals("userId")) {
					id = userId[i].getValue();
				}
			}
		}

		 
		//여기서 부터 
		
		String cp = request.getContextPath();
		String pageNum = request.getParameter("pageNum");
		int currentPage = 1;
		
		if(pageNum!=null)
			currentPage = Integer.parseInt(pageNum);
		
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");
		
		if(searchKey==null) {
			
			searchKey = "genreName";
			searchValue = "";
			
		}else {
			
			if(request.getMethod().equalsIgnoreCase("GET"))
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			
		}
		
		int dataCount = dao.getDataCount(searchKey,searchValue);
		int numPerPage = 3;
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);
		
		if(currentPage>totalPage)
			currentPage = totalPage;
		
		int start = (currentPage-1)*numPerPage+1;
		int end = currentPage*numPerPage;
		
		List<MainListDTO> lists = dao.getList(); 
		
		System.out.println(lists.size() + "★★★★★★★★★★★★★★★★★★★");
		
		session = request.getSession(); 
		String root = session.getServletContext().getRealPath("/");
		System.out.println(root);
		String savePath = "D://image";
		System.out.println(savePath);
		String param = "";
		
		if(!searchValue.equals("")) {
			
			param  = "searchKey=" + searchKey;
			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			
		}
		
		String listUrl = cp + "/list.action";
		
		if(!param.equals("")) {
			
			listUrl = listUrl + "?" + param;
			
		}
		
		String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
		
		request.setAttribute("savePath", savePath);
		request.setAttribute("lists", lists);
		request.setAttribute("pageIndexList", pageIndexList);
		request.setAttribute("dataCount", dataCount);
		request.setAttribute("success", id);
		request.setAttribute("c_success", id);
		
		return "main";
		
	}
	
	//로그인 화면 (일반회원)
	@RequestMapping(value = "/userLogin.action", method = {RequestMethod.GET, RequestMethod.POST}) // 일반사용자 로그인
	public ModelAndView userLogin(HttpServletRequest request,HttpServletResponse response, UserMainDTO userMainDTO) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("userLogin");
		
		return mav;
		
	}
	
	//로그인 화면 (기업회원)
	@RequestMapping(value = "/companyLogin.action", method = {RequestMethod.GET, RequestMethod.POST}) // 일반사용자 로그인
	public ModelAndView companyLogin(HttpServletRequest request,HttpServletResponse response, CompanyMainDTO companyMainDTO) {
			
		ModelAndView mav = new ModelAndView();
		mav.setViewName("companyLogin");
			
		return mav;
		
	}
	
	//로그인_OK 화면 (일반회원)
	@RequestMapping(value = "/userLogin_ok.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String userLogin_ok(HttpServletRequest request,HttpServletResponse response, Model model) {
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		UserMainDTO userMainDTO = dao.myPageReadData(userId);
		
		if(userMainDTO==null || !userMainDTO.getUserId().equals(userId) || !userMainDTO.getUserPwd().equals(userPwd)) {
			
			request.setAttribute("message", "아이디 또는 패스워드를 정확히 입력하세요");
			return "userLogin";
			
		}
		
		Cookie u_userId = new Cookie("userId", userId);
		u_userId.setMaxAge(600);
		u_userId.setPath("/ticketing");
		response.addCookie(u_userId);
		return "redirect:/main.action";
		
	}
	
	//로그인_OK 화면 (기업회원)
	@RequestMapping(value = "/companyLogin_ok.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyLogin_ok(HttpServletRequest request,HttpServletResponse response, CompanyMainDTO companyMainDTO, Model model) {
		
		String companyId = request.getParameter("companyId");
		String companyPwd = request.getParameter("companyPwd");
			
		CompanyMainDTO CompanyMainDTO = dao.myPageCompanyReadData(companyId);
		
		if(companyMainDTO==null || !companyMainDTO.getCompanyId().equals(companyId) || !companyMainDTO.getCompanyPwd().equals(companyPwd)) {
				
			request.setAttribute("message", "아이디 또는 패스워드를 정확히 입력하세요");
			return "redirect:/companyLogin.action";
				
		}
			
		Cookie u_userId = new Cookie("userId", companyId);
		u_userId.setMaxAge(600);
		u_userId.setPath("/ticketing");
		response.addCookie(u_userId);
		return "redirect:/main.action";
			
		}
	
	//로그아웃 화면
	@RequestMapping(value = "/logout.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String logout(HttpServletRequest request,HttpServletResponse response, UserMainDTO userMainDTO) {
		
		Cookie cookie = new Cookie("userId", null);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		return "main";
		
	}
	
	//로그아웃 화면
		@RequestMapping(value = "/companyLogout.action", method = {RequestMethod.GET, RequestMethod.POST})
		public String companyLogout(HttpServletRequest request,HttpServletResponse response, CompanyMainDTO CompanyMainDTO) {
			
			Cookie cookie = new Cookie("userId", null);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
			return "main";

		}
	
	//회원가입 화면 (일반회원)
	@RequestMapping(value = "/userSignUp.action", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView userSignUp(HttpServletRequest request,HttpServletResponse response, UserMainDTO userMainDTO) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("userSignUp");
		return mav;
		
	}
	
	//회원가입_OK 화면 (일반회원)
	@RequestMapping(value = "/userSignUp_ok.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String userSignUp_ok(HttpServletRequest request,HttpServletResponse response, UserMainDTO userMainDTO) {
		
		int maxNum = 0;
		userMainDTO.setNum(maxNum + 1);
		dao.insertUserSignUpData(userMainDTO);
		return "userLogin";
		
	}
	
	//회원가입 화면 (기업회원)
	@RequestMapping(value = "/companySignUp.action", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView companySignUp(HttpServletRequest request,HttpServletResponse response, CompanyMainDTO companyMainDTO) {
			
		ModelAndView mav = new ModelAndView();
		mav.setViewName("companySignUp");
		return mav;
			
	}
		
		//회원가입_OK 화면 (기업회원)
		@RequestMapping(value = "/companySignUp_ok.action", method = {RequestMethod.GET, RequestMethod.POST})
		public String companySignUp_ok(HttpServletRequest request,HttpServletResponse response, CompanyMainDTO companyMainDTO) {
			
			int maxNum = 0;
			companyMainDTO.setNum(maxNum + 1); 
			dao.insertCompanySignUpData(companyMainDTO);
			return "companyLogin";
			
		}

	//마이페이지 화면(수정)
	@RequestMapping(value = "/myPage.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String myPage(HttpServletRequest request,HttpServletResponse response,Model model) {
		
		UserMainDTO dto = dao.myPageReadData(HttpUtils.getUserId(request));
		CompanyMainDTO c_dto = dao.myPageCompanyReadData(HttpUtils.getUserId(request));
		request.setAttribute("userMainDTO", dto);
		//System.out.println(dto.getUserFinalAddr() + "★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★");
		request.setAttribute("companyMainDTO", c_dto);
		
		if(dto != null) {
			request.setAttribute("success", HttpUtils.getUserId(request));
		}
		//System.out.println(dto.getUserFinalAddr());
		//System.out.println(dto.getUserEmail());
		if(c_dto != null) {
			request.setAttribute("c_success", HttpUtils.getUserId(request));
		}

		return "myPage";

	}

	
	//마이페이지_OK 화면 (수정)
	@RequestMapping(value = "/myPage_ok.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String myPage_pk(HttpServletRequest request,HttpServletResponse response, UserMainDTO 
			userMainDTO, CompanyMainDTO companyMainDTO) throws Exception {
		
		//String cp = request.getContextPath();
		System.out.println("미친새끼야 이거 실행 안하냐??");
		userMainDTO = dao.updateUserData(userMainDTO);
		System.out.println("미친새끼야 이거 실행 안하냐??");
		
		return "redirect:/main.action";
		
	}
	
	//회원가입_OK 화면 (일반회원)
		@RequestMapping(value = "/idCheck.action", method = {RequestMethod.GET, RequestMethod.POST})
		public ModelAndView idCheck(HttpServletRequest request,HttpServletResponse response, UserMainDTO userMainDTO, Model model) {
			
			ModelAndView mav = new ModelAndView();
			
			String userId = request.getParameter("userId");
			String userPwd = request.getParameter("userPwd");
			
			mav.setViewName("userSignUp");
			if(dao.idCheck(userId)==null) {
				
				
				mav.addObject("message", "     " + userId + "는 사용 가능한 아이디입니다.");
				return mav;
				
			}
			
			userId = dao.idCheck(userId);
			mav.addObject("message", "     " + userId + "는 사용 중인 아이디입니다.");
			model.addAttribute("userMainDTO", userMainDTO);
			request.setAttribute("userMainDTO", userMainDTO);
	
			return mav;
			
		}
		
		//회원가입_OK 화면 (기업회원)
				@RequestMapping(value = "/companyIdCheck.action", method = {RequestMethod.GET, RequestMethod.POST})
				public ModelAndView companyIdCheck(HttpServletRequest request,HttpServletResponse response, CompanyMainDTO companyMainDTO, Model model) {
					
					ModelAndView mav = new ModelAndView();
					
					String companyId = request.getParameter("companyId");
					String companyPwd = request.getParameter("companyPwd");
					
					mav.setViewName("companySignUp");
					if(dao.companyIdCheck(companyId)==null) {
						
						
						mav.addObject("message", "     " + companyId + "는 사용 가능한 아이디입니다.");
						return mav;
						
					}
					
					companyId = dao.companyIdCheck(companyId);
					mav.addObject("message", "     " + companyId + "는 사용 중인 아이디입니다.");
					model.addAttribute("companyMainDTO", companyMainDTO);
					request.setAttribute("companyMainDTO", companyMainDTO);
			
					return mav;
					
				}
		
}
	
	

























































































































































































	
	
	
	
	
	
	
	
	
