package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Article;
public interface ArticleRepository extends PagingAndSortingRepository<Article, Long>,JpaSpecificationExecutor<Article>{
}

