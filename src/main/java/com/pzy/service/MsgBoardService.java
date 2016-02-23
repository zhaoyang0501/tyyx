
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
import com.pzy.entity.MsgBoard;
import com.pzy.entity.Skill;
import com.pzy.repository.MsgBoardRepository;

@Service
public class MsgBoardService {
		
		@Autowired
		private MsgBoardRepository msgBoardRepository;
		public MsgBoard findOne(Long  id){
			return msgBoardRepository.findOne(id);
		}
		public void save(MsgBoard msgBoard){
			msgBoardRepository.save(msgBoard);
		}
		public List<MsgBoard> findBySkill(Skill skill){
			List<MsgBoard> list= msgBoardRepository.findBySkill(skill);
			this.addSubMsg(list);
			return list;
		}
		
		public Page<MsgBoard> findAll(final int pageNumber, final int pageSize,final String msg ){
		         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
		         Specification<MsgBoard> spec = new Specification<MsgBoard>() {
		              public Predicate toPredicate(Root<MsgBoard> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
		              Predicate predicate = cb.conjunction();
		              if (msg != null) {
		            	  predicate.getExpressions().add(cb.like(root.get("msg").as(String.class), "%"+msg+"%"));
		               }
		              return predicate;
		              }
		         };
		         Page<MsgBoard> result = (Page<MsgBoard>) msgBoardRepository.findAll(spec, pageRequest);
		         return result;
		 }
		  
		public void delete(Long id){
			msgBoardRepository.delete(id);
		}
		private void addSubMsg( List<MsgBoard> list){
			if(list!=null&&list.size()!=0){
				for(MsgBoard bean:list){
					bean.setSubMsg(msgBoardRepository.findByReplyfor(bean));
				}
			}
		}
		
}