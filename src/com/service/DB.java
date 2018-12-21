package com.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DB {
	
	private static DB instance = new DB();
	
	public static DB getInstance() {
		return instance;
	}
	
	private Connection getConnection() throws Exception{
		
		Connection conn = null;
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/fingame";
		String dbId = "fingame";
		String dbPass = "dbs950623";
		
		Class.forName("com.mysql.jdbc.Driver");
		return conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	}
	
	public void signup(Data member) throws Exception{
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into signup(id,pw,email,name,nicname,reg_date) values(?,?,?,?,?,now())");
			pstmt.setString(1,member.getId());
			pstmt.setString(2,member.getPw());
			pstmt.setString(3,member.getEmail());
			pstmt.setString(4,member.getName());
			pstmt.setString(5,member.getNicname());
			
			pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt != null)
				try {pstmt.close();}catch(SQLException sqle) {}
			if(conn != null)
				try {conn.close();}catch(SQLException sqle) {}
		}
	}

}
