package com.tech.project_shopping_mall;

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

}
