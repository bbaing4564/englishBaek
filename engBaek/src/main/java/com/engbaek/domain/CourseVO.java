package com.engbaek.domain;

import java.util.List;

import lombok.Data;

@Data
public class CourseVO {	//강좌
	
	private long courseCode; // 강좌 코드
	private String teacherId; // 강사 ID
	private long classroomNo; //강의실 번호
	private String courseName; //강좌이름
	private String courseType; //과목구분
	private String courseLevel; //과목단계
	private String courseInfo; //강좌 소개 내용
	private String courseDay; //강의 요일
	private String courseTime; //강의 시간
	private String courseStart; //개강일
	private String courseEnd; //종강일
	
	private long price;
	
	private List<CourseAttachVO> courseAttachList;
	
}
