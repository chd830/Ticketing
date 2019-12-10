package com.ticket.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.ticket.dto.Remain;
import com.ticket.dto.SelectedTicket;

public class RemainDAO {
	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}

	public void insertRemain() {
		for(int i = 1; i <= 20; i++) {
			sessionTemplate.selectOne("mapper.insert", i);
		}
	}
	
	public List<Remain> getRemainData() {
		return sessionTemplate.selectList("mapper.getRemainList");
	}
	
	public int selectCount() {
		return sessionTemplate.selectOne("mapper.getCount");
	}
	
	/*
	 * 마지막에 결제완료했을 때 remainData에서 각 좌석의 isEmpty를 0으로 만든다.
	 * isEmpty = 1 >> 비어있는 좌석
	 * isEmpty = 0 >> 비어있지 않은 좌석
	 */
	public boolean updateSeat() {
		try {
			sessionTemplate.selectOne("mapper.updateSeat");
		} catch(Exception e) {
			return false;
		}
		return true;
	}
	
	//리스트로 빈좌석을 가져옴.
	public List<Remain> selectListIsEmpty() {
		return sessionTemplate.selectList("mapper.selectListEmpty");
	}
}
