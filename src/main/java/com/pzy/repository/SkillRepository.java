package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import com.pzy.entity.Skill;
public interface SkillRepository extends PagingAndSortingRepository<Skill, Long>,JpaSpecificationExecutor<Skill>{
}

