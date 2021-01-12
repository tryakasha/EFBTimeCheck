package com.el.check.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ElController {
	
	@RequestMapping(value = "goTCPage.tc")
	public String home(Locale locale, Model model) {
		
		return "TimeCheck";
	}
}
