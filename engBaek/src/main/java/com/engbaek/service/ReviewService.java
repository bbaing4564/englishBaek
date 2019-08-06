package com.engbaek.service;

import java.util.List;

import com.engbaek.domain.Criteria;
import com.engbaek.domain.ReviewVO;

public interface ReviewService {

	// 수강 후기 게시물 개수
	public int getTotal(Criteria cri);
	
	// 수강 후기 목록
	public List<ReviewVO> getList(Criteria cri);
	
	// 수강 후기 등록
	public void register(ReviewVO notice);
	
	// 수강 후기 조회
	public ReviewVO read(Long bno);
	
	// 수강 후기 수정
	public boolean modify(ReviewVO review);
	
	// 수강 후기 삭제
	public boolean remove(Long review_bno);
}
