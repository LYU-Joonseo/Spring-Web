package kr.ac.kopo.member.dao;

import kr.ac.kopo.member.vo.MemberVO;

public interface MemberDAO {

	MemberVO login(MemberVO member) throws Exception;
	
	MemberVO checkMember(String id);

	void signUp(MemberVO member);

	void update(MemberVO member);

	void deleteMember(MemberVO member);
}
