package org.seoil.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import org.seoil.example.VO.ProductVO;

@Controller
public class BoarderController {
	private static final Logger logger = LoggerFactory.getLogger(BoarderController.class);


	/* 리턴타입이 String인 경우 */
	@RequestMapping("sign")
	public String doC(@ModelAttribute("msg") String msg) {
		logger.info("doC called............................");
		return "sign";
	}

	@RequestMapping("index")
	public String index(@ModelAttribute("msg") String msg) {
		logger.info("index called............................");
		return "index";
	}
	
	
	
	
	
	
}
