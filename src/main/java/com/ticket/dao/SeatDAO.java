package com.ticket.dao;

import java.util.*;
import org.mybatis.spring.SqlSessionTemplate;

import com.ticket.dto.Remain;
import com.ticket.dto.SelectedTicketDTO;


public class SeatDAO {

	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}
	
	//최종좌석을 update하는 코드
	public void setFinalSelectedTicket(SelectedTicketDTO ticket) {
		sessionTemplate.selectOne("ticketMapper.insertFinalSelectedTicket", ticket);
		
	}
	
	//최종좌석을 update하는 코드
	public void updateFinalSelectedTicket(SelectedTicketDTO ticket) {
		sessionTemplate.selectOne("ticketMapper.updateFinalSelectedTicket", ticket);
	}

	//장르코드를 가져오는 코드
	public int get_performCode(String performCode){
		int performGenreCode = sessionTemplate.selectOne("ticketMapper.get_performCode",performCode);
		return performGenreCode;
	}
	
	//좌석을 선택했을 때 좌석이 선택되었다고 insert하는 코드
	public void setSelectedTicket(SelectedTicketDTO ticket) {
		sessionTemplate.selectOne("ticketMapper.insertSelectedTicket", ticket);
	}
	
	//선택된 좌석을 다시 선택했을 때 delete하는 코드
	public void deleteSelectedTicket(SelectedTicketDTO ticket) {
		sessionTemplate.selectOne("ticketMapper.deleteSelectedTicket", ticket);
	}
	
	//선택된 좌석의 SelectedTicketDTO 반환하는 코드
	public List<SelectedTicketDTO> getSelectedTicket(SelectedTicketDTO ticket) {
		return sessionTemplate.selectList("ticketMapper.selectSelectedTicket", ticket);
	}
	
	public String getSelectedDate() {
		return "";
	}
	/*
	 * remainDAO와 같은내용. seat에서 접근중인데 위치를 어디에서 할지 고민중.
	 * 마지막에 결제완료했을 때 remainData에서 각 좌석의 isEmpty를 0으로 만든다.
	 * isEmpty = 1 >> 비어있는 좌석
	 * isEmpty = 0 >> 비어있지 않은 좌석
	 */
	public boolean updateSeat(SelectedTicketDTO ticket) {
		try {
			//좌석정보를 가져와서 비어있을 때에만 update할 수 있게 바꿔야됨.
			System.out.println("update start");
			sessionTemplate.selectOne("mapper.updateSeat", ticket);
			System.out.println("update end");
		} catch(Exception e) {
			System.out.println("update fail");
			return false;
		}
		return true;
	}
	
	public boolean checkIsEmpty(Remain remain) throws InterruptedException {
		System.out.print("result: "+remain.getSeatRow()+", "+remain.getSeatNum()+"\t");
		int check = sessionTemplate.selectOne("mapper.selectIsEmpty", remain);
		if(check == 1)
			return true;
		return false;
	}
}
