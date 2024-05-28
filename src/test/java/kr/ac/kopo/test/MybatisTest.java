package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.board.vo.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"file:///src//main//webapp//WEB-INF//spring//*.xml"})
@ContextConfiguration(locations = {"file:C:\\Users\\user\\OneDrive - 한국폴리텍대학\\Lecture\\spring\\sts-workspace\\Board_STS\\src\\main\\webapp\\WEB-INF\\spring\\root-context.xml"})
public class MybatisTest {
	
	@Autowired
	private DataSource ds;

	@Autowired
	private SqlSessionFactory session;
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Test
	public void selectAll() {
		List<BoardVO> list = sessionTemplate.selectList("dao.BoardDAO.selectBoard");
		for(BoardVO board:list) {
			System.out.println(board);
		}
	}
	
	@Ignore
	@Test
	public void Template() {
		assertNotNull(sessionTemplate);
	}
	
	@Ignore
	@Test
	public void sessionTest() {
		assertNotNull(session);
	}
	
	@Ignore
	@Test
	public void DStest() {
		assertNotNull(ds);
	}

}
