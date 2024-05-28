package kr.ac.kopo.board.dao;

import java.util.List;

import kr.ac.kopo.board.vo.BoardVO;

public interface BoardDAO {

	List<BoardVO> selectAll() throws Exception;
	
	BoardVO selectByNo(int no) throws Exception;
	
	void insert(BoardVO board) throws Exception;
	
	void upViewCnt(int no) throws Exception;
	
	List<BoardVO> selectMy(String id) throws Exception;
}
