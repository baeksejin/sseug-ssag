package com.s4.personal.service;

import org.springframework.stereotype.Service;

import com.s4.personal.dao.AccountPDao;
import com.s4.personal.dto.AccountPDto;

import lombok.Setter;

@Service
public class AccountPServiceImpl implements AccountPService{

	@Setter
	private AccountPDao accountPDao;
	
	@Override
	public void register(AccountPDto accountP) {
		accountPDao.insertAccountP(accountP);
	}

	@Override
	public AccountPDto login(AccountPDto accountP) {
		AccountPDto loginAccountP = accountPDao.selectAccountPByIdAndPw(accountP.getP_id(), accountP.getP_pw()); 
		return loginAccountP;
	}

	@Override
	public int editProfile(AccountPDto accountP) {
		int editProfile = accountPDao.updateMyProfile(accountP);
		return editProfile;
	}


}