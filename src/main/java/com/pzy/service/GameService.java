
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

import com.pzy.entity.Game;
import com.pzy.repository.GameRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class GameService {
     @Autowired
     private GameRepository gameRepository;

 	public List<Game> findTop3() {
 		return gameRepository.findAll(
 				new PageRequest(0, 15, new Sort(Direction.DESC, "createDate")))
 				.getContent();
 	}
     public List<Game> findAll() {
         return (List<Game>) gameRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public Page<Game> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Game> spec = new Specification<Game>() {
              public Predicate toPredicate(Root<Game> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.like(root.get("title").as(String.class), "%"+name+"%"));
              }
              return predicate;
              }
         };
         Page<Game> result = (Page<Game>) gameRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<Game> findAll(final int pageNumber, final int pageSize,final Integer type ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Game> spec = new Specification<Game>() {
              public Predicate toPredicate(Root<Game> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (type != null) {
                  predicate.getExpressions().add(cb.equal(root.get("type").as(Integer.class),type));
               }
              return predicate;
              }
         };
         Page<Game> result = (Page<Game>) gameRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			gameRepository.delete(id);
		}
		public Game find(Long id){
			  return gameRepository.findOne(id);
		}
		public void save(Game game){
			gameRepository.save(game);
		}
}