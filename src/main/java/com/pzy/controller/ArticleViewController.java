package com.pzy.controller;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pzy.entity.Article;
import com.pzy.service.ArticleService;
import com.pzy.service.CategoryService;
/***
 * @author panchaoyang
 *qq 263608237
 */
@Controller
@RequestMapping("/admin/articleview")
public class ArticleViewController {
	@Autowired
	private ArticleService articleService;
	@Autowired
	private CategoryService categoryService;
	@RequestMapping("index")
	public String index(Model model) {
		return "admin/articleview/index";
	}
	@RequestMapping("view/{id}")
	public String view(@PathVariable Long id,Model model) {
		Article bean=articleService.find(id);
		bean.setClickcount(bean.getClickcount()+1);
		articleService.save(bean);
		model.addAttribute("bean", bean);
		return "admin/articleview/view";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(value = "sEcho", defaultValue = "1") int sEcho,
			@RequestParam(value = "iDisplayStart", defaultValue = "0") int iDisplayStart,
			@RequestParam(value = "iDisplayLength", defaultValue = "10") int iDisplayLength,
			String title,
			String keyword,
			String summary
			) throws ParseException {
		int pageNumber = (int) (iDisplayStart / iDisplayLength) + 1;
		int pageSize = iDisplayLength;
		Page<Article> articles = articleService.findAll(pageNumber, pageSize, title,keyword,summary);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aaData", articles.getContent());
		map.put("iTotalRecords", articles.getTotalElements());
		map.put("iTotalDisplayRecords", articles.getTotalElements());
		map.put("sEcho", sEcho);
		return map;
	}
	
}
