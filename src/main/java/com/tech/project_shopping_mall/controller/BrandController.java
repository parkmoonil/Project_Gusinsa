package com.tech.project_shopping_mall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BrandController {

	@RequestMapping("/brand")
	public String brand() {

		System.out.println("brandPage");
		return "/BrandPage/brand";
	}
	@RequestMapping("/brand1")
	public String brand1() {
		
		System.out.println("brand1Page");
		return "/BrandPage/brand1";
	}

}