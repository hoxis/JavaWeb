package com.liuhao.dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseConnection {
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/mldn";
	private static final String USER = "root";
	private static final String PASSWORD = "root";
	private Connection conn = null;
	
	public DatabaseConnection(){
		try {
			Class.forName(DRIVER);
			this.conn = DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection(){
		return this.conn;
	}
	
	public void close(){
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
