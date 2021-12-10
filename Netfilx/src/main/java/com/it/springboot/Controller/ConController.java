package com.it.springboot.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConController {
    
    @RequestMapping("/main")
    public String main(){
        return "main";
	}

}
