package com.servlet.jstlEl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;

public class RegisterDAO {

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	final String USER_INSERT="insert into membertbl values(?, ?, ?, ? );";
	final String USER_LIST="select * from membertbl;";
	

	public ArrayList<RegisterDTO> selectMemberList() throws SQLException {
		conn= JDBCUtil.getConnection();
		pstmt=conn.prepareStatement(USER_LIST);
		rs=pstmt.executeQuery();
		ArrayList<RegisterDTO> aList=new ArrayList<RegisterDTO>();
		while(rs.next()) {
			RegisterDTO rd=new RegisterDTO();
			rd.setMemberid( rs.getString("memberid")  );
			rd.setPassword( rs.getString("password")  );
			rd.setName( rs.getString("name")  );
			rd.setEmail( rs.getString("email")  );
			aList.add(rd);
		}		
		JDBCUtil.close(pstmt, conn);
		return aList;
	}	

}











