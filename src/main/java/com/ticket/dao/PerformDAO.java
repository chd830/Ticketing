package com.ticket.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.ticket.dto.GenreDTO;
import com.ticket.dto.PerformDTO;
import com.ticket.dto.PerformDetailDTO;
import com.ticket.dto.PerformInfoDTO;
import com.ticket.dto.PlaceDTO;
import com.ticket.dto.RatingDTO;
import com.ticket.dto.SeatingDTO;

public class PerformDAO {
	
	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception {
		this.sessionTemplate = sessionTemplate;

	}
	
	public List<PerformDTO> selectPerformData() {
		List<PerformDTO> lists = sessionTemplate.selectList("performMapper.selectPerformData");
		return lists;
	}
	
	public void insertPerformData(PerformDTO dto) {
		sessionTemplate.insert("performMapper.insertPerformData",dto);
	}
	
	public int getMaxSeatingData() {
		int maxNum = sessionTemplate.selectOne("performMapper.getMaxSeatingData");
		return maxNum;
	}
	
	public int getMaxDetailData() {
		int maxNum = sessionTemplate.selectOne("performMapper.getMaxDetailData");
		return maxNum;
	}
	
	public List<PlaceDTO> selectPlaceData() {
		List<PlaceDTO> lists = sessionTemplate.selectList("performMapper.selectPlaceData");
		return lists;
	}
	
	public List<GenreDTO> selectGenreData() {
		List<GenreDTO> lists = sessionTemplate.selectList("performMapper.selectGenreData");
		return lists;
	}
	
	public List<RatingDTO> selectRatingData() {
		List<RatingDTO> lists = sessionTemplate.selectList("performMapper.selectRatingData");
		return lists;
	}
	
	public void insertSeatingData(SeatingDTO dto) {
		sessionTemplate.insert("performMapper.insertSeatingData",dto);
	}
	
	public void insertDetailData(PerformDetailDTO dto) {
		sessionTemplate.insert("performMapper.insertDetailData",dto);
	}
	
	public List<Map<String,Object>> selectCalendarStartData(HashMap<String, Object> hMap) {
		List<Map<String,Object>> lists = sessionTemplate.selectList("performMapper.selectCalStartData",hMap);
		return lists;
	}
	
	public List<Map<String,Object>> selectCalendarEndData(HashMap<String, Object> hMap) {
		List<Map<String,Object>> lists = sessionTemplate.selectList("performMapper.selectCalEndData",hMap);
		return lists;
	}
	
	public void insertPerformInfoData(PerformInfoDTO dto) {
		sessionTemplate.insert("performMapper.insertPerformInfoData",dto);
	}

}
