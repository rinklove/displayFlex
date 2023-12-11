package displayFlex.event.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import displayFlex.coupon.vo.CouponVo;
import displayFlex.event.dto.EventDto;
import test.JDBCTemplate;

public class EventDao {
	
	
	//이벤트 등록
	public int createEvent(Connection conn, EventDto dto) throws Exception {
	      
	      //SQL
			String sql = "INSERT INTO EVENT\r\n"
					+ "            (EVENT_NO\r\n"
					+ "            , EVENTTYPE_NO\r\n"
					+ "            , MEMBER_NO\r\n"
					+ "            , EVENT_TITLE\r\n"
					+ "            , EVENT_CONTENTS\r\n"
					+ "            , EVENT_PREPARATIONDATE\r\n"
					+ "            , EVENT_PROGRESS\r\n"
					+ "            , EVENT_STARTDATE\r\n"
					+ "            , EVENT_ENDDATE\r\n"
					+ "            , EVENT_HIT)\r\n"
					+ "VALUES \r\n"
					+ "(           SEQ_EVENT.NEXTVAL  \r\n"
					+ "            ,?\r\n"
					+ "            ,?\r\n"
					+ "            , ?\r\n"
					+ "            , ?\r\n"
					+ "            , ?\r\n"
					+ "            , ?\r\n"
					+ "            , ?\r\n"
					+ "            , ?\r\n"
					+ "            , ?);";
		
				PreparedStatement pstmt= conn.prepareStatement(sql);
				pstmt.setString(1, dto.getEventtypeNo());
				pstmt.setString(2, dto.getMemberNo());
				pstmt.setString(3, dto.getEventTitle());
				pstmt.setString(4, dto.getEventContents());
				pstmt.setString(5, dto.getEventPreparationdate());
				pstmt.setString(6, dto.getEventProgress());
				pstmt.setString(7, dto.getEventStartdate());
				pstmt.setString(8, dto.getEventEnddate());
				pstmt.setString(9, dto.getEventHit());
				
				int result = pstmt.executeUpdate();
				
				//close
				JDBCTemplate.close(pstmt);
				return result;
	}

	public List<EventDto> selectEventList(Connection conn) throws Exception{
	      
	      //SQL
	      String sql = "SELECT \r\n"
	      		+ "       A.EVENT_NO\r\n"
	      		+ "       ,A. EVENTTYPE_NO\r\n"
	      		+ "       ,A. MEMBER_NO\r\n"
	      		+ "       ,A. EVENT_TITLE\r\n"
	      		+ "       ,A. EVENT_CONTENTS\r\n"
	      		+ "       ,A. EVENT_PREPARATIONDATE\r\n"
	      		+ "       ,A. EVENT_REPORTINGDATE\r\n"
	      		+ "       ,A. EVENT_PROGRESS\r\n"
	      		+ "       ,A. EVENT_STARTDATE\r\n"
	      		+ "       ,A. EVENT_ENDDATE\r\n"
	      		+ "       ,A. EVENT_HIT\r\n"
	      		+ "       FROM EVENT A\r\n"
	      		+ "        ORDER BY EVENT_NO;   ";
	      PreparedStatement pstmt = conn.prepareStatement(sql);
//	      pstmt.setInt(1, pvo.getStartRow());
//	      pstmt.setInt(2, pvo.getLastRow());
	      
	      ResultSet rs = pstmt.executeQuery();
	   
	      //rs
	      List<EventDto> eventDtoList = new ArrayList<EventDto>();
	      while(rs.next()) {
	         
	         String eventNo = rs.getString("EVENT_NO");
	         String eventTypeNo= rs.getString("EVENTTYPE_NO");
	         String memberNo = rs.getString("MEMBER_NO");
	         String eventTitle = rs.getString("EVENT_TITLE");
	         String creationDate = rs.getString("EVENT_CONTENTS");
	         String validPeriod = rs.getString("VALIDPERIOD");
	         String info = rs.getString("COUPON_INFO");
	         
	         
	         EventDto dto = new EventDto();
	         vo.setCouponNo(no);
	         vo.setCouponType(type);
	         vo.setCouponDiscount(discount);
	         vo.setCouponName(name);
	         vo.setCouponCreationDate(creationDate);
	         vo.setCouponValidePeriod(validPeriod);
	         vo.setCouponInfo(info);
	         
	         
	         eventDtoList.add(dto);
	         
	      }
	      
	      
	      //close
	      JDBCTemplate.close(pstmt);
	      JDBCTemplate.close(rs);
	      
	      return couponVoList;
	   }
}//class
				
//	      String sql = "INSERT INTO COUPON\r\n"
//	      		+ "                (\r\n"
//	      		+ "                 NO --1\r\n"
//	      		+ "                , TYPE --2\r\n"
//	      		+ "                , DISCOUNT\r\n"
//	      		+ "                , NAME\r\n"
//	      		+ "                , CREATIONDATE\r\n"
//	      		+ "                , VALIDPERIOD\r\n"
//	      		+ "                , COUPON_INFO\r\n"
//	      		+ "                )\r\n"
//	      		+ "                \r\n"
//	      		+ "        VALUES(\r\n"
//	      		+ "                (SELECT MAX(NO) + 1 FROM COUPON)--1\r\n"
//	      		+ "                ,?--2 type\r\n"
//	      		+ "                ,?--3 discoupon\r\n"
//	      		+ "                ,?--4 name\r\n"
//	      		+ "                ,?--5 creationdate\r\n"
//	      		+ "                ,?--6 validperiod\r\n"
//	      		+ "                ,?--7 info\r\n"
//	      		+ "                )";
//	      PreparedStatement pstmt = conn.prepareStatement(sql);
//	      pstmt.setString(1, vo.getCouponType());
//	      pstmt.setString(2, vo.getCouponDiscount());
//	      pstmt.setString(3, vo.getCouponName());
//	      pstmt.setString(4, vo.getCouponCreationDate());
//	      pstmt.setString(5, vo.getCouponValidePeriod());
//	      pstmt.setString(6, vo.getCouponInfo());
	      
	      //
	    
	      
	      
	   
	//이벤트 조회
//	public List<EventDto> selectEventList(Connection conn) throws Exception{
//	      
//	      //SQL
//	      String sql = "select\r\n"
//	      		+ "     a.NO\r\n"
//	      		+ "    ,a.TYPE\r\n"
//	      		+ "    ,a.DISCOUNT\r\n"
//	      		+ "    ,a.NAME\r\n"
//	      		+ "    ,a.CREATIONDATE\r\n"
//	      		+ "    ,a.VALIDPERIOD\r\n"
//	      		+ "    ,a.COUPON_INFO\r\n"
//	      		+ " from coupon a \r\n"
//	      		+ " order by no";
//	      PreparedStatement pstmt = conn.prepareStatement(sql);
////	      pstmt.setInt(1, pvo.getStartRow());
////	      pstmt.setInt(2, pvo.getLastRow());
//	      
//	      ResultSet rs = pstmt.executeQuery();
//	   
//	      //rs
//	      List<EventDto> eventDtoList = new ArrayList<EventDto>();
//	      while(rs.next()) {
//	         
//	         String no = rs.getString("NO");
//	         String type= rs.getString("TYPE");
//	         String discount = rs.getString("DISCOUNT");
//	         String name = rs.getString("NAME");
//	         String creationDate = rs.getString("CREATIONDATE");
//	         String validPeriod = rs.getString("VALIDPERIOD");
//	         String info = rs.getString("COUPON_INFO");
//	         
//	         
//	         EventDto dto = new EventDto();
//	         vo.setCouponNo(no);
//	         vo.setCouponType(type);
//	         vo.setCouponDiscount(discount);
//	         vo.setCouponName(name);
//	         vo.setCouponCreationDate(creationDate);
//	         vo.setCouponValidePeriod(validPeriod);
//	         vo.setCouponInfo(info);
//	         
//	         
//	         eventDtoList.add(dto);
//	         
//	      }
//	      
//	      
//	      //close
//	      JDBCTemplate.close(pstmt);
//	      JDBCTemplate.close(rs);
//	      
//	      return eventDtoList;
//	   }
	
	

