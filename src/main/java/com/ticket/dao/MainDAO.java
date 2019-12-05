package com.ticket.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.ticket.dto.CompanyMainDTO;
import com.ticket.dto.MainListDTO;
import com.ticket.dto.UserMainDTO;

public class MainDAO {

	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception {
		this.sessionTemplate = sessionTemplate;

	}

	public int getMaxNum() {

		int maxNum = 0;
		maxNum = sessionTemplate.selectOne("mainMapper.maxNum");
		return maxNum;

	}

	public int getMaxCompanyNum() {

		int maxNum = 0;
		maxNum = sessionTemplate.selectOne("mainMapper.maxCompanyNum");
		return maxNum;

	}

	public void insertUserSignUpData(UserMainDTO userMainDTO) { // 일반 사용자 회원가입

		sessionTemplate.insert("mainMapper.insertUserSignUpData", userMainDTO);

	}

	public void insertCompanySignUpData(CompanyMainDTO companyMainDTO) { // 기업 회원 회원가입

		sessionTemplate.insert("mainMapper.insertCompanySignUpData", companyMainDTO);

	}

	public UserMainDTO myPageReadData(String userId) { // 일반회원 데이터 읽어오기

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		UserMainDTO userMainDTO = sessionTemplate.selectOne("mainMapper.myPageReadData", map);

		return userMainDTO;

	}

	public CompanyMainDTO myPageCompanyReadData(String companyId) { // 기업회원 데이터 읽어오기

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyId", companyId);
		CompanyMainDTO companyMainDTO = sessionTemplate.selectOne("mainMapper.myPageCompanyReadData", map);

		return companyMainDTO;

	}

	public String idCheck(String userId) { // 일반회원 아이디 체크(중복)

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		String idCheck = sessionTemplate.selectOne("mainMapper.idCheck", map);

		return idCheck;

	}

	public String companyIdCheck(String companyId) { // 기업회원 아이디 체크(중복)

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyId", companyId);
		String companyIdCheck = sessionTemplate.selectOne("mainMapper.companyIdCheck", map);

		return companyIdCheck;

	}

	
	  public List<MainListDTO> getList() {
	  
		  Map<String, Object> params = new HashMap<String, Object>();
	  
	  
		/*
		 * params.put("start", start); params.put("end", end); params.put("searchKey",
		 * searchKey); params.put("searchValue", searchValue);
		 */
	  
	  
		  List<MainListDTO> lists = sessionTemplate.selectList("mainMapper.getLists");
	  
		  return lists;
	  
	  }
	 

	// 전체 데이터수 구하기
	public int getDataCount(String searchKey, String searchValue) {

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("searchKey", searchKey);
		params.put("searchValue", searchValue);

		int result = sessionTemplate.selectOne("mainMapper.getDataCount", params);

		return result;

	}

	public UserMainDTO updateUserData(UserMainDTO userMainDTO) {
		
		sessionTemplate.update("mainMapper.updateUserData",userMainDTO);
		return userMainDTO;
		
	}

}


























































































































































































