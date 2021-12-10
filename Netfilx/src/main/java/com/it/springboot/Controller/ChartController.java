package com.it.springboot.Controller;

import com.it.springboot.daodto.IUserlistDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/chart")
public class ChartController {

    @Autowired
    IUserlistDao dao;

  @RequestMapping(value = "", method = RequestMethod.GET)
  	public String chart(String sx, Model model)throws Exception {


  		int womenCount = dao.getWomenCount(sx);
  		int menCount = dao.getMenCount(sx);

  		model.addAttribute("menCount", menCount);
  		model.addAttribute("womenCount", womenCount);

  		return "/admin/chart";

  	}
}
