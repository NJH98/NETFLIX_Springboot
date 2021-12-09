package com.it.springboot.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	

	@RequestMapping("/")
    public String root() throws Exception{
        return "index";
	}
	@RequestMapping("/main")
    public String main() throws Exception{
        return "main";
	}

	@RequestMapping("/memberjoinForm")
    public String memberjoinForm(){
        return "security/memberjoinForm"; //memberjoinForm.jsp
    }
	

	@RequestMapping("/guest/welcome")
	public String welcome1() {

		return "guest/welcome1";
	}
	
	@RequestMapping("/member/welcome")
	public String welcome2() {
		return "member/welcome2";
	}
	
	@RequestMapping("/master")
	public String master() {
		
		return "admin/master";
	}

	@RequestMapping("/loginForm")
	public String loginForm() {
		return "security/loginForm"; //security/loginForm.jsp
	}

}
