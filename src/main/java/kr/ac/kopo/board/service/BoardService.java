package kr.ac.kopo.board.service;

import java.util.List;

import kr.ac.kopo.board.vo.BoardVO;

public interface BoardService {

	List<BoardVO> selectAll() throws Exception;
	
	BoardVO selectByNo(int no) throws Exception;
	
	void addBoard(BoardVO board) throws Exception;
	
	void updateView(int no) throws Exception;
	
	List<BoardVO> selectMy(String id) throws Exception;
}
