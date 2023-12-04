package displayFlex.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import test.JDBCTemplate;

public class MemberDao {

	public MemberVo login(Connection conn, MemberVo vo) throws Exception {
		
		//sql
		String sql = "SELECT * FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_PWD = ? AND DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getMemberId());
		pstmt.setString(2, vo.getMemberPwd());
		ResultSet rs = pstmt. executeQuery();
		
		MemberVo loginMember = null;
		if(rs.next()) {
			String memberNo = rs.getString("MEMBER_NO");
			String gradeNo = rs.getString("GRADE_NO");
			String adminYn = rs.getString("ADMIN_YN");
			String memberId = rs.getString("MEMBER_ID");
			String memberPwd = rs.getString("MEMBER_PWD");
			String memberNick = rs.getString("MEMBER_NICK");
			String memberEmail = rs.getString("MEMBER_EMAIL");
			String memberPhoneNum = rs.getString("MEMBER_PHONENUM");
			String enrolldate = rs.getString("ENROLLDATE");
			String deleteYn = rs.getString("DELETE_YN");
			String privilegedYn = rs.getString("PREVILEGED_YN");
			String registerNo = rs.getString("REGISTER_NO");
			String gradeScore = rs.getString("GRADE_SCORE");
			
			loginMember = new MemberVo();
			
			loginMember.setMemberNo(memberNo);
			loginMember.setGradeNo(gradeNo);
			loginMember.setAdminYn(adminYn);
			loginMember.setMemberId(memberId);
			loginMember.setMemberPwd(memberPwd);
			loginMember.setMemberNick(memberNick);
			loginMember.setMemberEmail(memberEmail);
			loginMember.setMemberPhoneNum(memberPhoneNum);
			loginMember.setEnrolldate(enrolldate);
			loginMember.setDeleteYn(deleteYn);
			loginMember.setPrivilegedYn(privilegedYn);
			loginMember.setRegisterNo(registerNo);
			loginMember.setGradeScore(gradeScore);
		}
		
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return loginMember;
	}

}
