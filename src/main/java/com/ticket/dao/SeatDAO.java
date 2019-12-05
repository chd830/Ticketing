package com.ticket.dao;

import java.util.*;
import org.mybatis.spring.SqlSessionTemplate;

import com.ticket.dto.Remain;
import com.ticket.dto.SelectedTicket;


public class SeatDAO {

	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}

	//좌석을 선택했을 때 좌석이 선택되었다고 insert하는 코드
	public void setSelectedTicket(SelectedTicket ticket) {
		sessionTemplate.selectOne("ticketMapper.insertSelectedTicket", ticket);
	}
	
	//선택된 좌석을 다시 선택했을 때 delete하는 코드
	public void deleteSelectedTicket(SelectedTicket ticket) {
		sessionTemplate.selectOne("ticketMapper.deleteSelectedTicket", ticket);
	}
	
	//선택된 좌석의 리스트를 반환하는 코드
	public List<SelectedTicket> getSelectedTicket(String userId) {
		return sessionTemplate.selectList("ticketMapper.selectSelectedTicket", userId);
	}
	
	/*
	 * remainDAO와 같은내용. seat에서 접근중인데 위치를 어디에서 할지 고민중.
	 * 마지막에 결제완료했을 때 remainData에서 각 좌석의 isEmpty를 0으로 만든다.
	 * isEmpty = 1 >> 비어있는 좌석
	 * isEmpty = 0 >> 비어있지 않은 좌석
	 */
	public boolean updateSeat() {
		try {
			//좌석정보를 가져와서 비어있을 때에만 update할 수 있게 바꿔야됨.
			System.out.println("update start");
			sessionTemplate.selectOne("mapper.updateSeat");
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
