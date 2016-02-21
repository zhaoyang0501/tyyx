
package com.pzy.service;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.pzy.entity.Article;
import com.pzy.repository.ArticleRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class ArticleService {
     @Autowired
     private ArticleRepository articleRepository;

 	public List<Article> findTop3() {
 		return articleRepository.findAll(
 				new PageRequest(0, 15, new Sort(Direction.DESC, "createDate")))
 				.getContent();
 	}
     public List<Article> findAll() {
         return (List<Article>) articleRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public Page<Article> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Article> spec = new Specification<Article>() {
              public Predicate toPredicate(Root<Article> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.like(root.get("title").as(String.class), "%"+name+"%"));
              }
              return predicate;
              }
         };
         Page<Article> result = (Page<Article>) articleRepository.findAll(spec, pageRequest);
         return result;
     	}
     public Page<Article> findAll(final int pageNumber, final int pageSize,final String name,final String keyword,final String summary){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Article> spec = new Specification<Article>() {
			public Predicate toPredicate(Root<Article> root,
					CriteriaQuery<?> query, CriteriaBuilder cb) {
				Predicate predicate = cb.conjunction();
				if (name != null) {
					predicate.getExpressions().add(
							cb.like(root.get("title").as(String.class), "%"
									+ name + "%"));
				}
				if (keyword != null) {
					predicate.getExpressions().add(
							cb.like(root.get("keyword").as(String.class), "%"
									+ keyword + "%"));
				}
				if (summary != null) {
					predicate.getExpressions().add(
							cb.like(root.get("summary").as(String.class), "%"
									+ summary + "%"));
				}
				return predicate;
			}
         };
         Page<Article> result = (Page<Article>) articleRepository.findAll(spec, pageRequest);
         return result;
     	}
     public Page<Article> findAll(final int pageNumber, final int pageSize,final Integer type ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Article> spec = new Specification<Article>() {
              public Predicate toPredicate(Root<Article> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (type != null) {
                  predicate.getExpressions().add(cb.equal(root.get("type").as(Integer.class),type));
               }
              return predicate;
              }
         };
         Page<Article> result = (Page<Article>) articleRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			articleRepository.delete(id);
		}
		public Article find(Long id){
			  return articleRepository.findOne(id);
		}
		public void save(Article article){
			articleRepository.save(article);
		}
}