package com.ticket.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.ticket.dto.PayDTO;
import com.ticket.dto.PerformDetailDTO;
import com.ticket.dto.PosterDTO;
import com.ticket.dto.ReviewBoardDTO;

public class PosterDAO {

	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception {

		this.sessionTemplate = sessionTemplate;

	}

	public PosterDTO getReadData(String performCode) {
		try {
			PosterDTO p_dto = sessionTemplate.selectOne("ticketMapper.posterReadData", performCode);
			System.out.println("p_dto: " + p_dto.getGenreCode());
			System.out.println("read success");
			return p_dto;
		} catch (Exception e) {
			System.out.println("error");
			return null;
		}
	}

	public PayDTO getPayData(String performCode) {
		try {
			PayDTO pay_dto = sessionTemplate.selectOne("ticketMapper.payReadData", performCode);
			System.out.println("pay_dto: " + pay_dto.getRclass());
			return pay_dto;
		} catch (Exception e) {
			return null;
		}

	}

	public List<PerformDetailDTO> getDetailImageData(String performCode) {
		try {
			List<PerformDetailDTO> detailImage_dto = sessionTemplate.selectList("ticketMapper.detailImageRead",
					performCode);
			return detailImage_dto;
		} catch (Exception e) {
			return null;
		}

	}

	/*
	 * public ReviewBoardDTO getMaxNum(int num) {
	 * 
	 * ReviewBoardDTO review_dto =
	 * sessionTemplate.selectOne("ticketMapper.reviewMaxNum", num); return
	 * review_dto;
	 * 
	 * }
	 */

}
