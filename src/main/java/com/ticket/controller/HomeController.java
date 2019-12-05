package com.ticket.controller;

import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ticket.util.MyUtil;
import com.ticket.dao.SelectedTicketDAO;
import com.ticket.dto.MyCouponDTO;
import com.ticket.dto.SelectedTicketDTO;
import com.ticket.dto.UserInfoDTO;
import com.ticket.dto.AccountDTO;
import com.ticket.dto.AutoImageDTO;
import com.ticket.dto.CouponDataDTO;
import com.ticket.dto.DiscountDTO;

@Controller
public class HomeController {

	@Autowired
	@Qualifier("selectedTicketDAO")
	SelectedTicketDAO dao;

	@Autowired
	MyUtil myUtil;

	String userId = "suzi";
	SelectedTicketDTO stdto;
	String cancelDate;


	@RequestMapping(value = "/step3", method = { RequestMethod.GET, RequestMethod.POST })
	public String step3(HttpServletRequest req, HttpServletResponse resp) {

		stdto = dao.selectTicket(userId);

		int step = 3;

		// 할인,쿠폰 리스트
		List<DiscountDTO> discountList = dao.MyDiscountList(userId);
		List<MyCouponDTO> couponList = dao.MyCouponList(userId);

		req.setAttribute("userId", userId);
		req.setAttribute("step", step);
		req.setAttribute("couponList", couponList);
		req.setAttribute("discountList", discountList);

		req.setAttribute("stdto", stdto);

		return "step3";

	}

	@RequestMapping(value = "/use_discount", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public ModelAndView use_discount(@RequestParam int discountPrice,@RequestParam int inwon, HttpServletRequest request) {
		System.out.println("use_discount들어옴");
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		
		session.setAttribute("step", "3");

		System.out.println("discountPrice: " + discountPrice);
		
		System.out.println(discountPrice*inwon);

		dao.input_discountPrice(userId, discountPrice*inwon);
		stdto = dao.selectTicket(userId);

		mv.setViewName("detail");
		mv.addObject("stdto", stdto);
		
		System.out.println("stdto: "+stdto.getDiscountPrice());

		request.setAttribute("stdto", stdto);

		return mv;

	}

	@RequestMapping(value = "/use_coupon", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public ModelAndView use_coupon(@RequestParam int couponPrice,@RequestParam int inwon, HttpServletRequest request) {
		System.out.println("use_coupon들어옴");
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		
		session.setAttribute("step", "3");

		dao.input_couponPrice(userId, couponPrice*inwon);
		stdto = dao.selectTicket(userId);

		mv.setViewName("detail");
		mv.addObject("stdto", stdto);

		request.setAttribute("stdto", stdto);

		return mv;

	}

	@RequestMapping(value = "/use_point", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public ModelAndView use_point(@RequestParam String pointPrice, HttpServletRequest request) {

		System.out.println("use_point들어옴");
		ModelAndView mv = new ModelAndView();

		System.out.println("1.point: " + pointPrice);

		dao.input_point(userId, Integer.parseInt(pointPrice));
		stdto = dao.selectTicket(userId);

		System.out.println("2.point: " + stdto.getPointPrice());

		mv.setViewName("detail5");
		mv.addObject("stdto", stdto);

		request.setAttribute("stdto", stdto);

		return mv;

	}

	@RequestMapping(value = "/allPointUse", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public ModelAndView allPointUse(@RequestParam String point, HttpServletRequest request) {
		System.out.println("allPointUse들어옴");
		ModelAndView mv = new ModelAndView();

		System.out.println("1.point: " + point);

		dao.input_couponPrice(userId, Integer.parseInt(point));
		stdto = dao.selectTicket(userId);

		System.out.println("2.point: " + point);

		mv.setViewName("step5");
		mv.addObject("stdto", stdto);

		request.setAttribute("stdto", stdto);

		return mv;

	}

	// 쿠폰 등록
	@RequestMapping(value = "/coupon", method = { RequestMethod.GET, RequestMethod.POST })
	public String coupon(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String couponCode = req.getParameter("couponCode");

		if (couponCode == null || couponCode.equals("")) {
			couponCode = "0";
		}

		// coupon번호에 맞는 할인금액 찾기(couponData에서)
		CouponDataDTO cddto = new CouponDataDTO();
		try {
			cddto = dao.CouponSearch(couponCode);

			if (cddto == null || cddto.getcouponCode() == null || cddto.getcouponCode().equals("")) {
				cddto.setcouponCode("error");
			}

		} catch (Exception e) {
			cddto.setcouponCode("error");
			cddto.setCouponPrice(0);
		}

		// 만약 쿠폰번호가 없는 번호라면 유효하지않다고 뜨기
		String msg = "";
		if (cddto.getcouponCode().equals("error")) {

			msg = "유효하지 않은 번호입니다.";

			req.setAttribute("msg", msg);

			return "step3";
		}

		System.out.println("유효한 번호입니다");

		// MyCouponDTO에 넣기
		dao.input_MyCoupon(userId, cddto);
		// CouponData에서 삭제
		dao.deleteCoupon(couponCode);

		return "redirect:/step3.action";

	}

	@RequestMapping(value = "/step4", method = RequestMethod.GET)
	public String step4(HttpServletRequest req, HttpServletResponse resp) {

		UserInfoDTO uidto = dao.selectUserInfo(userId);

		int goll = uidto.getuserEmail().indexOf("@");

		req.setAttribute("goll", goll);
		req.setAttribute("uidto", uidto);
		
		stdto = dao.selectTicket(userId);
		
		req.setAttribute("stdto", stdto);
		req.setAttribute("step", "4");
		
		return "step4";

	}

	@RequestMapping(value = "/step5", method = RequestMethod.GET)
	public String header(HttpServletRequest req, HttpServletResponse resp) {

		UserInfoDTO uidto = dao.selectUserInfo(userId);

		Random rd = new Random();

		int imageNum = rd.nextInt(6) + 1;

		AutoImageDTO aidto = dao.selectAutoImage(imageNum);
		stdto = dao.selectTicket(userId);
		
		//취소마감일자
		cancelDate = stdto.getSelectedDate();
		int year = Integer.parseInt(cancelDate.substring(0,4));
		int month = Integer.parseInt(cancelDate.substring(5,7));
		int day = Integer.parseInt(cancelDate.substring(8,10));
		
		day-=1;
		
		if(day==0) {
			
			if(month==1||month==5||month==7||month==8||month==10||month==12) 
				day=30;
			else if(month==3) 
				day=29;
			else 
				day=31;
			
			month-=1;

		}
		
		cancelDate = year+"년 "+month+"월 "+day+"일 11:00까지";
		
		System.out.println("canceldate:" +cancelDate);

		int point = uidto.getUserPoint();
		String flag = "";
		req.setAttribute("flag", flag);
		req.setAttribute("point", point);
		req.setAttribute("cancelDate", cancelDate);
		req.setAttribute("aidto", aidto);
		String check = "1";
		req.setAttribute("check", check);
		
		stdto = dao.selectTicket(userId);
		
		req.setAttribute("stdto", stdto);

		return "step5";
	}

	@RequestMapping(value = "/reloadImage", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String reloadImage(HttpServletRequest request) {
		// System.out.println("reloadImage들어옴");
		// autoImage-start

		Random rd = new Random();

		int imageNum = rd.nextInt(6) + 1;
		System.out.println("imageNum: " + imageNum);

		AutoImageDTO aidto = dao.selectAutoImage(imageNum);

		// autoImage-end

		request.setAttribute("aidto", aidto);
		return aidto.getImagePath();

	}

	@RequestMapping(value = "autoPayPre", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String autoPayPre(@RequestParam String imageCode, @RequestParam String imagePath,
			HttpServletRequest request) {

		System.out.println("autoPayPre 들어옴");
		System.out.println("imagePath: " + imagePath);
		AutoImageDTO aidto = dao.checkAutoImage(imagePath);

		String flag = "";

		if (imageCode.equals(aidto.getImageCode())) {
			// 같으면 결제 성공
			flag = "1";
		} else {
			flag = "0";
		}

		return flag;
	}


	@RequestMapping(value = "/laststep", method = { RequestMethod.GET, RequestMethod.POST })
	public String why(HttpServletRequest request, HttpServletResponse response) {

		String bank = (request.getParameter("bank"));

		System.out.println("bank: " + bank);

		AccountDTO adto = dao.selectAccount(bank);

		stdto = dao.selectTicket(userId);
		
		Calendar today = Calendar.getInstance();
		
		//입금마감일자
		String deadline = today.get(Calendar.YEAR)+"년 "+(today.get(Calendar.MONTH)+1)+"월 "+(today.get(Calendar.DAY_OF_MONTH)+3)+"일 "+"23:59:59";
		
		System.out.println("canceldate: "+cancelDate+"/deadline: "+deadline);

		request.setAttribute("adto", adto);
		request.setAttribute("stdto", stdto);
		request.setAttribute("cancelDate", cancelDate);
		request.setAttribute("deadline", deadline);

		return "laststep";
	}

	
	/*
	 * @RequestMapping(value = "/laststep", method = RequestMethod.GET) public
	 * String final_step(@RequestParam String bank, HttpServletRequest req,
	 * HttpServletResponse resp) {
	 * 
	 * System.out.println("final 들어옴"); System.out.println("bank: "+bank);
	 * 
	 * 
	 * AccountDTO adto = dao.selectAccount(bank);
	 * 
	 * stdto = dao.selectTicket(userId);
	 * 
	 * req.setAttribute("adto", adto); req.setAttribute("stdto", stdto);
	 * 
	 * 
	 * 
	 * System.out.println("여기까진옴"); return "step5#open_pay";
	 * 
	 * }
	 */
	/*
	 * @RequestMapping(value = "/final_pay", method = RequestMethod.GET)
	 * 
	 * @ResponseBody public ModelAndView final_step(@RequestParam String bank,
	 * HttpServletRequest req, HttpServletResponse resp) {
	 * 
	 * ModelAndView mv = new ModelAndView();
	 * 
	 * System.out.println("final 들어옴");
	 * 
	 * AccountDTO adto = dao.selectAccount(bank);
	 * 
	 * stdto=dao.selectTicket(userId);
	 * 
	 * req.setAttribute("adto", adto); req.setAttribute("stdto", stdto);
	 * 
	 * mv.setViewName("step5#open_pay"); mv.addObject("adto", adto);
	 * mv.addObject("stdto", stdto);
	 * 
	 * return mv;
	 * 
	 * }
	 * 
	 * 
	 * 
	 * 
	 */

}
