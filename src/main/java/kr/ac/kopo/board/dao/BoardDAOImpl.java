package kr.ac.kopo.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.board.vo.BoardVO;
@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<BoardVO> selectAll() throws Exception {
		List<BoardVO> list = sqlSession.selectList("dao.BoardDAO.selectBoard");
		return list;
	}

	@Override
	public BoardVO selectByNo(int no) throws Exception {
		BoardVO board = sqlSession.selectOne("dao.BoardDAO.secletByNo", no);
		return board;
	} 
	
	@Override
	public void insert(BoardVO board) {
		sqlSession.insert("dao.BoardDAO.insertBoard", board);
//		sqlSession.commit();
	}
	
	@Override
	public void upViewCnt(int no) throws Exception{
		sqlSession.update("dao.BoardDAO.updateViewCnt", no);
	}

	@Override
	public List<BoardVO> selectMy(String id) throws Exception {
		List<BoardVO> list = sqlSession.selectList("dao.BoardDAO.selectMy", id);
		return list;
	}
}
