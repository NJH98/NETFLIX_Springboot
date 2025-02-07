package com.it.springboot.auth;

import java.io.IOException;

import javax.security.auth.login.CredentialExpiredException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

@Configuration 
public class CustomAuthenticationFailureHandler implements AuthenticationFailureHandler{

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException 
	{
		String loginid = request.getParameter("j_useremail");
		String errormsg = "";
		
		if(exception instanceof BadCredentialsException) {
			loginFailure(loginid);
			errormsg = "아이디나 비밀번호가 맞지 않습니다... ";			
		} else if(exception instanceof InternalAuthenticationServiceException) {
			loginFailure(loginid);
			errormsg = "아이디나 비밀번호가 맞지 않습니다... ";			
		} else if(exception instanceof DisabledException) {
			loginFailure(loginid);
			errormsg = "계정이 비활성화... 관리자에게 문의... ";			
		} else if(exception instanceof CredentialsExpiredException) {
			loginFailure(loginid);
			errormsg = "비밀번호 유효기간이 만료... 관리자에게 문의... ";			
		} 
		
		request.setAttribute("username", loginid);
		request.setAttribute("error_message", errormsg);
		
		request.getRequestDispatcher("/loginForm?error=true").forward(request, response);
	}
	
	protected void loginFailure(String username) {
		
	}

}





