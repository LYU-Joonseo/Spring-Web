package kr.ac.kopo.test;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.board.dao.BoardDAO;
import kr.ac.kopo.board.vo.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:C:\\Users\\user\\OneDrive - 한국폴리텍대학\\Lecture\\spring\\sts-workspace\\Board_STS\\src\\main\\webapp\\WEB-INF\\spring\\**\\*.xml"})
public class BoardDAOtest {

	@Autowired
	private BoardDAO dao;
	
	@Ignore
	@Test
	public void 전체게시글조회테스트() throws Exception{
		List<BoardVO> list = dao.selectAll();
		for(BoardVO board : list) {
			System.out.println(board);
		}
	}
	
	@Test
	public void 번호조회(int no) throws Exception{
		BoardVO board = dao.selectByNo(no);
		System.out.println(board);
	}
}
