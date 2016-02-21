package com.pzy.controller.front;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pzy.entity.News;
import com.pzy.entity.User;
import com.pzy.service.GameService;
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
	
	@Autowired
	private GameService gameService;
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
	
	
	@RequestMapping("game")
	public String game(Model model) {
		model.addAttribute("news", gameService.findAll());
		return "game";
	}
	
	@RequestMapping("game/{id}")
	public String game(Model model,@PathVariable Long id) {
		model.addAttribute("news", gameService.find(id));
		return "gamedetail";
	}
	
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String register() {
		return "register";
	}
	
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String register(User user,Model model) {
		model.addAttribute("tip","注册成功，请登录！");
		return "login";
	}
	
	@RequestMapping("gologin")
	public String gologin(HttpSession httpSession,String userName,String password,Model model)  {
		User user=userService.login(userName, password);
		if(user!=null){
    		httpSession.setAttribute("user", user);
    		return "index";
    	}
    	else{
    		httpSession.setAttribute("user", null);
    		model.addAttribute("tip","登陆失败 不存在此用户名或密码!");
    		return "login";
    	}
    	
	}
	
	@RequestMapping(value="login")
	public String login() {
		return "login";
	}
	@RequestMapping("exmple")
	public String exmple() {
		return "exmple";
	}
}

