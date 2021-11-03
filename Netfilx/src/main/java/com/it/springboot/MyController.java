package com.it.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.it.springboot.daodto.IUserlistDao;
import com.it.springboot.daodto.UserlistDto;

@Controller
public class MyController {
	
	@Autowired 
	private IUserlistDao userlistDao;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;

	@RequestMapping("/")
    public String root() throws Exception{
        return "index"; //index.jsp
    }
	
	@RequestMapping("/memberjoinForm")
    public String memberjoinForm(){
        return "security/memberjoinForm"; //memberjoinForm.jsp
    }
	
	@RequestMapping("/memberSaveDB")
    public String memberSaveDB(HttpServletRequest req){
	    // hello hahah
    	String email=req.getParameter("email");
    	String encpwd= pwdEncoder.encode(req.getParameter("password"));
    	String username=req.getParameter("username");
    	String phone=req.getParameter("phone");
    	String age=req.getParameter("age");
    	
    	
    	UserlistDto dto = new UserlistDto();
    	dto.setEmail(email);
    	dto.setPassword(encpwd);
    	dto.setUsername(username);
    	dto.setPhone(phone);
    	dto.setAge(age);
    	dto.setSx(1);
    	dto.setAuthority("ROLE_USER");
    	dto.setEnabled(1);
    	
    	
    	userlistDao.save(dto);
    	
    	return "redirect:/";
    }

	@RequestMapping("/guest/welcome")
	public String welcome1() {

		return "guest/welcome1";
	}
	
	@RequestMapping("/member/welcome")
	public String welcome2() {

		return "member/welcome2";
	}
	
	@RequestMapping("/admin/welcome")
	public String welcome3() {
		
		return "admin/welcome3";
	}
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "security/loginForm"; //security/loginForm.jsp
	}

}
