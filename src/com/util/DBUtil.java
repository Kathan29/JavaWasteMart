package com.util;

import java.sql.*;

public class DBUtil {
	Connection cn=null;
	 public Connection getConnectionData()
	 {
		 	try {
				Class.forName("com.mysql.cj.jdbc.ConnectionImpl"); 
				cn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/customerdetails","root","root");
				System.out.println("Connection Established");;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 return cn;
	 }
}

