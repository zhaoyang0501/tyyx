
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

import com.pzy.entity.Skill;
import com.pzy.repository.SkillRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class SkillService {
     @Autowired
     private SkillRepository skillRepository;

 	public List<Skill> findTop3() {
 		return skillRepository.findAll(
 				new PageRequest(0, 15, new Sort(Direction.DESC, "createDate")))
 				.getContent();
 	}
     public List<Skill> findAll() {
         return (List<Skill>) skillRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public Page<Skill> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Skill> spec = new Specification<Skill>() {
              public Predicate toPredicate(Root<Skill> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.like(root.get("title").as(String.class), "%"+name+"%"));
              }
              return predicate;
              }
         };
         Page<Skill> result = (Page<Skill>) skillRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<Skill> findAll(final int pageNumber, final int pageSize,final Integer type ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Skill> spec = new Specification<Skill>() {
              public Predicate toPredicate(Root<Skill> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (type != null) {
                  predicate.getExpressions().add(cb.equal(root.get("type").as(Integer.class),type));
               }
              return predicate;
              }
         };
         Page<Skill> result = (Page<Skill>) skillRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			skillRepository.delete(id);
		}
		public Skill find(Long id){
			  return skillRepository.findOne(id);
		}
		public void save(Skill skill){
			skillRepository.save(skill);
		}
}