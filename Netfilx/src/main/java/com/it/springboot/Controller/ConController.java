package com.it.springboot.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConController {
    
    @RequestMapping("/play1")
    public String play1(){
        return "main";
	}

}
