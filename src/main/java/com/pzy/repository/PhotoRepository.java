package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Photo;
public interface PhotoRepository extends PagingAndSortingRepository<Photo, Long>,JpaSpecificationExecutor<Photo>{
}

