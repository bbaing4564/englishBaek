package com.engbaek.mapper;

import java.util.List;

import com.engbaek.domain.Criteria;
import com.engbaek.domain.ReviewVO;

public interface ReviewMapper {
	
	// 수강후기 게시글 수
	public int getTotalCount(Criteria cri);

	// 수강후기 페이징
	public List<ReviewVO> getListWithPaging(Criteria cri);

	// 수강후기 수정
	public int update(ReviewVO reivew);

	// 수강후기 삭제
	public int delete(Long reveiw_bno);
	
	// 수강후기 조회
	public ReviewVO read(Long reveiw_bno);

	// 수강후기 등록
	public Integer insertSelectKey(ReviewVO review);

	// 수강후기 등록(without notice_bno)
	public void insert(ReviewVO review);

	// 수강후기 목록
	public List<ReviewVO> getList();
}
