package com.ticket.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.ticket.dto.PayDTO;
import com.ticket.dto.PerformDetailDTO;
import com.ticket.dto.PosterDTO;
import com.ticket.dto.ReviewBoardDTO;
import com.ticket.dto.SelectedTicketDTO;

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
	
<<<<<<< HEAD


	
}
=======
	
	  public List<Map<String,Object>> infoMap (String performCode) {
	  List<Map<String,Object>> lists =  sessionTemplate.selectList("ticketMapper.infoMap",performCode); 
	  return lists; 
	  }
	 
	}
>>>>>>> b4715e2c6bee6371c0d746af47787eb64439deb2
