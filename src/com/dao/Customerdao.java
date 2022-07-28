package com.dao;

import java.sql.PreparedStatement;

import com.model.BookServices;
import com.model.CustomerModel;

//import com.mysql.jdbc.Connection;
import com.util.DBUtil;

public class Customerdao {
	 java.sql.Connection cn =null;
	 int x=0;
	 CustomerModel model=null;
	 public int doInsertData(CustomerModel cmodel)
	 {
		 cn=new DBUtil().getConnectionData();
		 String qry="insert into customer_regi(name,email,gender,address,mobno,password) values(?,?,?,?,?,?)";
		 try {
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1, cmodel.getName());
			st.setString(2, cmodel.getEmail());
			st.setString(3, cmodel.getGender());
			st.setString(4, cmodel.getAddress());
			st.setString(5, cmodel.getMobno());
			st.setString(6, cmodel.getPassword());
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return x;
	 }
	 public int bookDetails(BookServices b1)
	 {
		 cn=new DBUtil().getConnectionData();
		 String qry="insert into bookservices(serviceid,pincode,total,cname,mobno,address,status,zone) values(?,?,?,?,?,?,?,?)";
		 try {
			PreparedStatement st = cn.prepareStatement(qry);
			
			st.setInt(1, b1.getServiceid());
			st.setInt(2, b1.getPincode());
			st.setFloat(3, b1.getTotal());
			st.setString(4, b1.getCname());
			st.setString(5, b1.getMobno());
			st.setString(6, b1.getAddress());
			st.setString(7,b1.getStatus());
			st.setString(8, b1.getZone());
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return x;
	 }
}
