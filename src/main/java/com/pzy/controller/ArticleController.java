package com.pzy.controller;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pzy.entity.Article;
import com.pzy.entity.User;
import com.pzy.service.ArticleService;
import com.pzy.service.CategoryService;
/***
 * @author panchaoyang
 *qq 263608237
 */
@Controller
@RequestMapping("/admin/article")
public class ArticleController {
	@Autowired
	private ArticleService articleService;
	@Autowired
	private CategoryService categoryService;
	@RequestMapping("index")
	public String index(Model model) {
		return "admin/article/index";
	}
	
	
	@RequestMapping(value="create" , method = RequestMethod.GET) 
	public String create( ModelMap model) {
		model.addAttribute("category",categoryService.findAll());
		return "admin/article/create";
	}
	@RequestMapping(value="create" , method = RequestMethod.POST) 
    public String upload(@RequestParam(value = "file", required = true) MultipartFile file, 
    		HttpServletRequest request, ModelMap model,Article article,HttpSession httpSession) throws IOException {  
        	
			System.out.println("开始");  
        	if(!"pdf".equalsIgnoreCase(StringUtils.getFilenameExtension(file.getOriginalFilename()))){
        		model.addAttribute("tip","只能上传PDF文件");
                return "admin/article/create";
        	}
        	InputStream is=file.getInputStream();
        	String path = request.getSession().getServletContext().getRealPath("upload");  
            String fileName = file.getOriginalFilename();  
        	File targetFile = new File(path, fileName);  
            if(!targetFile.exists()){  
                targetFile.mkdirs();  
            }  
      
            //保存  
            try {  
                file.transferTo(targetFile);  
            } catch (Exception e) {  
                e.printStackTrace();  
            } 
         article.setClickcount(0);
        article.setCreateDate(new Date());
        article.setUser((User)httpSession.getAttribute("adminuser"));
        article.setUrl(file.getOriginalFilename());
        articleService.save(article);		
     	model.addAttribute("tip","上传成功");
        return "admin/article/create";
    }
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(value = "sEcho", defaultValue = "1") int sEcho,
			@RequestParam(value = "iDisplayStart", defaultValue = "0") int iDisplayStart,
			@RequestParam(value = "iDisplayLength", defaultValue = "10") int iDisplayLength, String articlename
			) throws ParseException {
		int pageNumber = (int) (iDisplayStart / iDisplayLength) + 1;
		int pageSize = iDisplayLength;
		Page<Article> articles = articleService.findAll(pageNumber, pageSize, articlename);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aaData", articles.getContent());
		map.put("iTotalRecords", articles.getTotalElements());
		map.put("iTotalDisplayRecords", articles.getTotalElements());
		map.put("sEcho", sEcho);
		return map;
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> save(Article article) {
		article.setCreateDate(new Date());
		articleService.save(article);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("state", "success");
		map.put("msg", "保存成功");
		return map;
	}
	@RequestMapping(value = "/update")
	@ResponseBody
	public Map<String, Object> update(Article article) {
		articleService.save(article);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("state", "success");
		map.put("msg", "保存成功");
		return map;
	}
	@RequestMapping(value = "/delete/{id}")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable Long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			articleService.delete(id);
			map.put("state", "success");
			map.put("msg", "删除成功");
		} catch (Exception e) {
			map.put("state", "error");
			map.put("msg", "删除失败，外键约束");
		}
        return map;
	}

	@RequestMapping(value = "/get/{id}")
	@ResponseBody
	public Map<String, Object> get(@PathVariable Long id ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("object", articleService.find(id));
		map.put("state", "success");
		map.put("msg", "成功");
		return map;
	}
}
