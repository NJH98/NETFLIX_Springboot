package com.it.springboot;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.it.springboot.dao.IMyuser;
import com.it.springboot.dto.MyuserDTO;

@Controller
public class MyController {
	
	@Autowired
	private IMyuser dao;

	@RequestMapping("/")
	public @ResponseBody String root() {
		return "MyBatis 학습학기";
	}
	
	@RequestMapping("/list")
	public String list(Model model) { //myuser 테이블의 사용자 list를 가져옴
		List<MyuserDTO> list = dao.userList();
		
		model.addAttribute("list", list);
		return "list"; //list.jsp
	}
	
	
}
