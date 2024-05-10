package com.mbc.pmac.CRUDTest;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.mbc.pmac.domain.CampVO;
import com.mbc.pmac.repository.CampRepository;
import com.mbc.pmac.service.CampService;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class CampInfoInsertTest {

	@Autowired
	CampService campService;

	@Autowired
	CampRepository campRepo;

	@Test
	public void test() {

		log.info("데이터 크기 : {}", campService.loadCampData().size());

		for (CampVO camp : campService.loadCampData()) {

			 campRepo.save(camp);
		} //

	} //


}
