package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;


public class DBUtil {
	private final static String driver = "com.mysql.jdbc.Driver";
	private final static String url = "jdbc:mysql://localhost:3306/mydb";
	private final static String user = "root";
	private final static String password = "123";
	
	private static Connection  conn = null;
	private static Statement  stmt = null;
	private static ResultSet  rs = null;
	
	static{
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static void getConnection(){
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(){
		try {
			if(rs!=null)
				rs.close();
			if(stmt!=null)
				stmt.close();
			if(conn!=null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static ResultSet doQuery(String sql){
		//getConnection();
		ResultSet rst = null;
		try {
			rst = stmt.executeQuery(sql);
			rs = rst;
			return rst;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
		//	close();
		}
		return null;
	}
	public static int doUpdate(String sql){
		getConnection();
		int num = -1;
		try {
			num = stmt.executeUpdate(sql);
			return num;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close();
		}
		return -1;
	}
	@SuppressWarnings("unchecked")
	public static List resultSetToList(ResultSet rs) throws java.sql.SQLException {
		int columnCount = -1;
		if(rs==null){
			return Collections.EMPTY_LIST; 
		}
		ResultSetMetaData rsmd = rs.getMetaData();
		columnCount = rsmd.getColumnCount();
		List list = new LinkedList();
		Map rowData = null;
		while (rs.next()) {     
	        rowData = new HashMap(columnCount);  
	        for (int i = 1; i <= columnCount; i++) { 
	                rowData.put(rsmd.getColumnName(i), rs.getObject(i));    
	        }     
	        list.add(rowData);  
		}
		return list;
	}
	@SuppressWarnings("unchecked")
	public static List doQueryList(String sql){
		List list = null;
		try {
			DBUtil.getConnection();
			ResultSet rs = DBUtil.doQuery(sql);
			list = DBUtil.resultSetToList(rs);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return list;
	}
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
		getConnection();
		String sql = "select * from message";
		ResultSet rs = doQuery(sql);
			List list = resultSetToList(rs);
			for(int i = 0;i<list.size();i++){
				System.out.println(((HashMap)list.get(i)).get("Id"));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage()+"------");
		}finally{
			close();
		}
	}
}




















