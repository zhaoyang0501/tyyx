package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import com.pzy.entity.Game;
public interface GameRepository extends PagingAndSortingRepository<Game, Long>,JpaSpecificationExecutor<Game>{
}

