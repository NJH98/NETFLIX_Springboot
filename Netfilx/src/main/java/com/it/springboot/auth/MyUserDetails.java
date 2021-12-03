package com.it.springboot.auth;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.it.springboot.daodto.IUserlistDao;
import com.it.springboot.daodto.UserlistDto;

public class MyUserDetails implements UserDetails{

	private UserlistDto user; //컴포지션 - 객체속의 객체
	
	@Autowired
	IUserlistDao dao;

	public MyUserDetails(UserlistDto user) {
		this.user = user;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority> collectors = new ArrayList<>();		
		collectors.add( ()->{
		   return user.getAuthority();
		}); 
		return collectors;
	}

	@Override
	public String getPassword() {
		
		return user.getPassword();
	}

	@Override
	public String getUsername() {
		
		return user.getEmail();
	}

	@Override
	public boolean isAccountNonExpired() {
		//만료되었는지 확인하는 로직
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		//계정이 잠금되었는지 확인
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// 패스워드가 만료되었는지 확인하는 로직
		return true;
	}

	@Override
	public boolean isEnabled() {
		 // 계정이 사용 가능한지 확인하는 로직
		return true;
	}
}
