package com.engbaek.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.engbaek.domain.NoticeVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private NoticeMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(notice -> log.info(notice));
	}
	
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(notice -> log.info(notice));
//	}
//	
//	@Test
//	public void testInsertSelectKey() {
//		NoticeVO notice = new NoticeVO();
//		notice.setNoticeTitle("Notice Test");
//		notice.setAdminId("admin");
//		notice.setNoticeContent("notice test contents");
//		
//		mapper.insertSelectKey(notice);
//		
//		log.info(notice);
//	}
	
//	@Test
//	public void testRead() {
//		NoticeVO notice = mapper.read(1L);
//		
//		log.info(notice);
//	}
	
//	@Test
//	public void testDelete() {
//		log.info("delete " + mapper.delete(2L));
//	}

}
