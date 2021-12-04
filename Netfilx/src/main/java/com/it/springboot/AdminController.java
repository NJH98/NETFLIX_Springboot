package com.it.springboot;

import com.it.springboot.daodto.IUserlistDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @Autowired
    IUserlistDao dao;

    @RequestMapping("/list")
    public String userlistPage(Model model) {
        model.addAttribute("list",dao.listDao());
        return "admin/list";
    }

    @RequestMapping("/chart")
	public String chart() {
		
		return "/admin/chart";
	}

}
