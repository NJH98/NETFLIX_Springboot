package com.it.springboot;

import javax.servlet.http.HttpServletRequest;

import com.it.springboot.daodto.IUserlistDao;
import com.it.springboot.daodto.UserlistDto;
import com.it.springboot.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SignupController {

    
	@Autowired
	private MemberService memberService;

	@Autowired 
	private IUserlistDao userlistDao;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;

    // @RequestMapping(value = "/memberSaveDB", method = RequestMethod.GET)
    // public void registerGET() throws Exception {

    // }

	@ResponseBody
	@RequestMapping(value = "/security/emailCheck" , method = RequestMethod.POST)
	public int emailCheck(String email) throws Exception {
		int result = memberService.emailCheck(email);
		return result;
	}

    @RequestMapping("/memberSaveDB")
    public String memberSaveDB(HttpServletRequest req){
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
    	dto.setAuthority("USER");
    	dto.setEnabled(1);
    	
    	
    	userlistDao.save(dto);
    	
    	return "redirect:/";
    }
    // @RequestMapping(value = "/memberSaveDB", method = RequestMethod.POST)
	// public String registerPOST(UserlistDto userlistDto, String email) throws Exception {
	// 	int emailResult = memberService.emailCheck(email);

	// 	try {
	// 		if (emailResult == 1) {
	// 			return "/memberSaveDB";
	// 		} else if (emailResult == 0) {
	// 			memberService.register(userlistDto);
	// 			return "security/loginForm";
	// 		}
	// 	} catch (Exception e) {
	// 		throw new RuntimeException();
	// 	}
	// 	return "redirect:/";
	// }
}
