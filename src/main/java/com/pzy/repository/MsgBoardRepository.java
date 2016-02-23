package com.pzy.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.MsgBoard;
import com.pzy.entity.Skill;
public interface MsgBoardRepository extends PagingAndSortingRepository<MsgBoard, Long>,JpaSpecificationExecutor<MsgBoard>{
	public List<MsgBoard> findByReplyfor(MsgBoard reply);
	
	public List<MsgBoard> findBySkill(Skill skill);
}

