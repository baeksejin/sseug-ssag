package com.s4.personal.service;

import com.s4.personal.dto.AccountPDto;

public interface AccountPService {

	public void register(AccountPDto accountP); 

	public AccountPDto login(AccountPDto accountP); 
	
	public int editProfile(AccountPDto accountP);


}
