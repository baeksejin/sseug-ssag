package com.s4.personal.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.s4.personal.dto.AccountPDto;

@Mapper
public interface AccountPDao { 

	void insertAccountP(AccountPDto accountP);

	 AccountPDto selectAccountPByIdAndPw(@Param("p_id") String p_id, @Param("p_pw") String p_pw);

	 int updateMyProfile(AccountPDto accountP);
 
}
