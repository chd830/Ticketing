package com.ticket.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.ticket.dto.AccountDTO;
import com.ticket.dto.AutoImageDTO;
import com.ticket.dto.CouponDataDTO;
import com.ticket.dto.DiscountDataDTO;
import com.ticket.dto.MyDiscountDTO;
import com.ticket.dto.MyCouponDTO;
import com.ticket.dto.SelectedTicketDTO;
import com.ticket.dto.UserInfoDTO;


public class SelectedTicketDAO {
	
	private SqlSessionTemplate sessionTemplate;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception{
		
		this.sessionTemplate = sessionTemplate;
	}

	//*******************************정화 시작********************************
	

	public void home_updateData(SelectedTicketDTO dto){
	
		sessionTemplate.selectOne("ticketMapper.home_updateData",dto);
	}
	
	public void date_updateData(SelectedTicketDTO dto){
		sessionTemplate.selectOne("ticketMapper.date_updateData",dto);
	}
	
	public void time_updateData(SelectedTicketDTO dto){
		sessionTemplate.selectOne("ticketMapper.time_updateData",dto);
	}
	
	public void inwon_updateData(SelectedTicketDTO dto){
		sessionTemplate.selectOne("ticketMapper.inwon_updateData",dto);
	}
	
	public SelectedTicketDTO detail_readData(){
		
		SelectedTicketDTO stdto = sessionTemplate.selectOne("ticketMapper.detail_ReadData");
		
		/*
		 * HashMap<String, Object> map = new HashMap<String, Object>();
		 * 
		 * map.put("selectedDate", stdto.getSelectedDate()); map.put("time",
		 * stdto.getTime()); map.put("inwon",stdto.getInwon());
		 */
		
			
		return stdto;
	}
	
	
	
	
	
	//*********************************정화 끝********************************
	
	//*********************************연주 시작********************************
	
public CouponDataDTO CouponSearch(String couponCode){
		
		CouponDataDTO dto = new CouponDataDTO();
		
		try {
			dto = sessionTemplate.selectOne("ticketMapper.couponSearch",couponCode);
			
			if(dto==null||dto.getcouponCode()==null||dto.getcouponCode().equals("")) {
				dto.setcouponCode("error");
				dto.setCouponPrice(0);
			}
			
			
			
		} catch (Exception e) {
			dto.setcouponCode("error");
			dto.setCouponPrice(0);
			System.out.println(e.toString()+"//CouponSearch");
		}
		
		System.out.println("couponCode: "+dto.getcouponCode());
		
		return dto;
		
	}
	
	public List<MyCouponDTO> MyCouponList(String userId){
		
		List<MyCouponDTO> list = sessionTemplate.selectList("ticketMapper.myCouponList",userId);
		
		return list;
		
	}
	
	public List<MyDiscountDTO> MyDiscountList(String userId) {
		
		List<MyDiscountDTO> list = sessionTemplate.selectList("ticketMapper.myDiscountList",userId);
		
		return list;
		
	}
	
	
	
	
	public void input_discountPrice(String userId, int discountPrice) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("userId", userId);
		map.put("discountPrice", discountPrice);
		
		sessionTemplate.update("ticketMapper.input_discountPrice",map);		
		
	}

	public void input_couponPrice(String userId, int couponPrice) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("userId", userId);
		map.put("couponPrice", couponPrice);
		
		sessionTemplate.update("ticketMapper.input_couponPrice",map);		
		
	}
	
	public void input_point(String userId, int pointPrice) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("userId", userId);
		map.put("pointPrice", pointPrice);
		
		sessionTemplate.update("ticketMapper.input_point",map);		
		
	}
	
	public void input_MyCoupon(String userId, CouponDataDTO dto) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("userId", userId);
		map.put("dto", dto);
		
		sessionTemplate.insert("ticketMapper.insert_MyCoupon",map);		
		
	}
	
	public SelectedTicketDTO selectTicket(String userId) {
		
		SelectedTicketDTO dto = sessionTemplate.selectOne("ticketMapper.ticket",userId);
		return dto;
	}
	
	public void deleteCoupon(String couponCode) {
		
		sessionTemplate.delete("ticketMapper.deleteCoupon",couponCode);
		
	}
	
	public UserInfoDTO selectUserInfo(String userId) {
		
		UserInfoDTO dto = sessionTemplate.selectOne("ticketMapper.selectUserInfo",userId);
		return dto;
		
	}
	
	public AutoImageDTO selectAutoImage(int imageNum) {
		
		AutoImageDTO dto = sessionTemplate.selectOne("ticketMapper.selectAutoImage",imageNum);
		return dto;
		
	}
	
	public AutoImageDTO checkAutoImage(String imagePath) {
		
		AutoImageDTO aidto =  sessionTemplate.selectOne("ticketMapper.checkAutoImage",imagePath);
		return aidto;
		
	}
	
	public AccountDTO selectAccount(String accountBank) {
		AccountDTO adto = sessionTemplate.selectOne("ticketMapper.selectAccount",accountBank);
		return adto;
	}

	public List<DiscountDataDTO> discountDataList() {
		
		List<DiscountDataDTO> dddto = sessionTemplate.selectList("ticketMapper.discountDataList");
		return dddto;
	}

	public DiscountDataDTO selectDiscountDataDTO(String discountCode) {
		
		DiscountDataDTO dddto = sessionTemplate.selectOne("ticketMapper.selectDiscountDataDTO",discountCode);
		return dddto;
	}

	public void insertMyDiscount(DiscountDataDTO dddto,String userId) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("userId", userId);
		map.put("dddto", dddto);
		
		sessionTemplate.insert("ticketMapper.insertMyDiscount",map);
		
	}

	public void updateDiscountData(String discountCode) {
		sessionTemplate.update("ticketMapper.updateDiscountData",discountCode);
		
	}

	public void deleteDiscountData(String discountCode) {
		sessionTemplate.delete("ticketMapper.deleteDiscountData",discountCode);
		
	}

	public MyDiscountDTO selectMyDiscount(String discountCode) {
		MyDiscountDTO mddto = sessionTemplate.selectOne("ticketMapper.selectMyDiscount",discountCode);
		return mddto;
	}


	//********************************연주 끝********************************
	
	
}
