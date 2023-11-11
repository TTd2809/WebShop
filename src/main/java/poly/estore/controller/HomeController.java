package poly.estore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.estore.entity.Product;
import poly.estore.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	ProductService productService;
	@RequestMapping("/home/index")
	public String index(Model model) {
		List<Product> list = productService.findAll();
		model.addAttribute("items", list);
		return "home/index";
	}
	@RequestMapping("/home/shop")
	public String about(Model model) {
		List<Product> list = productService.findAll();
		model.addAttribute("items", list);
		return "home/shop";
	}
	@RequestMapping({"/admin","/admin/home/index"})
	public String admin() {
		return "redirect:/admin/index.html";
	}
	@RequestMapping("/home/feedback")
	public String feedback() {
		return "home/feedback";
	}
	@RequestMapping("/home/faq")
	public String faq() {
		return "home/faq";
	}
}