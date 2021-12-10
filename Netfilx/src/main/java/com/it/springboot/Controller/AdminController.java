package com.it.springboot.Controller;

import javax.servlet.http.HttpServletRequest;

import com.it.springboot.daodto.IUserlistDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @Autowired 
	private IUserlistDao dao;

    @RequestMapping("/list")
    public String userlistPage(Model model) {
        model.addAttribute("list",dao.listDao());
        return "admin/list";
    }

    @RequestMapping("/content")
    public String contentPage(Model model) {
        model.addAttribute("content",dao.content());
        return "admin/content";
    }

    @RequestMapping("/delete")
    public String delete(HttpServletRequest req, Model model){

        dao.userdelete(req.getParameter("email"));

        return "redirect:/list";
                
    }

    @RequestMapping("/contentdelete")
    public String contentdelete(HttpServletRequest req, Model model){

        dao.contentdelete(req.getParameter("title"));

        return "redirect:/content";
                
    }

    @RequestMapping("/chart")
	public String chart() {
		
		return "/admin/chart";
    }}
