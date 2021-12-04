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

    // @RequestMapping("/")
    // public String root() throws Exception{
    //     return "redirect:list";
    // }

    @RequestMapping("/list")
    public String userlistPage(Model model) {
        model.addAttribute("list",dao.listDao());
        return "admin/list";
    }

}
