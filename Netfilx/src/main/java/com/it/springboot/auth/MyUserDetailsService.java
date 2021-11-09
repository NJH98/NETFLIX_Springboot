package com.it.springboot.auth;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.it.springboot.daodto.IUserlistDao;
import com.it.springboot.daodto.UserlistDto;

@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	IUserlistDao dao;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		System.out.println("============>userEmail:"+email);
		List<UserlistDto> list = dao.findUser(email);
						
		UserlistDto dto;
		
		if(list.size() > 0 ) { 
			dto = list.get(0);  //�쉶�썝 �젙蹂닿� dto�뿉 �떞源�
			System.out.println("회원 맞는디");
		}
		else {
			dto = new UserlistDto(); //鍮덇컼泥�
			System.out.println("회원 아닌디");
		}
		
		MyUserDetails pd = new MyUserDetails(dto);   		                                          // �떆�걧由ы떚 �꽭�뀡�뿉 ���옣�맖
		return pd;  
	}
	
}
