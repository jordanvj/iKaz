package net.vin.iKAZfront.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		//mv.addObject("greeting", "Welcome to iKAZ");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		return mv;
	}
	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About");
		mv.addObject("userClickAbout", true);
		return mv;
	}
	@RequestMapping(value = "/delivery")
	public ModelAndView delivery() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Delivery");
		mv.addObject("userClickDelivery", true);
		return mv;
	}
	@RequestMapping(value = "/news")
	public ModelAndView news() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "News");
		mv.addObject("userClickNews", true);
		return mv;
	}
	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact");
		mv.addObject("userClickContact", true);
		return mv;
	}
	
}
