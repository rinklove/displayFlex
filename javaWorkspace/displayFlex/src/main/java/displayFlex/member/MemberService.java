package displayFlex.member;

import java.sql.Connection;

import test.JDBCTemplate;

public class MemberService {

	public MemberVo login(MemberVo vo) throws Exception {
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//dao
		MemberDao dao = new MemberDao();
		MemberVo loginMember = dao.login(conn, vo);
		
		JDBCTemplate.close(conn);
		
		return loginMember;
	}

}
