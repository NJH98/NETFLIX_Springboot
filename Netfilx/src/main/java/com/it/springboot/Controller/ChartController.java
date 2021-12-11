package com.it.springboot.Controller;

import com.it.springboot.daodto.IUserlistDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChartController {

	@Autowired
	IUserlistDao dao;

	@RequestMapping("/chart")
	public String chart(String sx, Model model) throws Exception {

		int womenCount = dao.getWomenCount(sx);
		int menCount = dao.getMenCount(sx);

		model.addAttribute("menCount", menCount);
		model.addAttribute("womenCount", womenCount);

		return "/admin/chart";

	}

	@RequestMapping("/contentchart")
	public String contents(String category, Model model) throws Exception {

		int actionCount = dao.getActionCount(category);
		int HorrorCount = dao.getHorrorCount(category);
		int RomenceCount = dao.getRomenceCount(category);
		int SfCount = dao.getSfCount(category);
		int ComicCount = dao.getComicCount(category);

		model.addAttribute("actionCount", actionCount);
		model.addAttribute("HorrorCount", HorrorCount);
		model.addAttribute("RomenceCount", RomenceCount);
		model.addAttribute("SfCount", SfCount);
		model.addAttribute("ComicCount", ComicCount);

		return "/admin/contentchart";

	}
}
