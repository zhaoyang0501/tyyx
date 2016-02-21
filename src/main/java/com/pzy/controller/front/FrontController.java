package com.pzy.controller.front;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pzy.entity.User;
import com.pzy.service.NewsService;
import com.pzy.service.UserService;
/***
 * 后台首页，处理后台登录验证权限等操作
 * @author qq:263608237
 *
 */
@Controller
@RequestMapping("/")
public class FrontController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private NewsService newsService;
	@RequestMapping("index")
	public String index(Model model) {
		return "index";
	}
	
	@RequestMapping("news")
	public String news(Model model) {
		model.addAttribute("news", newsService.findAll());
		return "news";
	}
	
	@RequestMapping("news/{id}")
	public String news(Model model,@PathVariable Long id) {
		model.addAttribute("news", newsService.find(id));
		return "newsdetail";
	}
	@RequestMapping("register")
	public String register() {
		return "register";
	}
	@RequestMapping("exmple")
	public String exmple() {
		return "exmple";
	}
}

