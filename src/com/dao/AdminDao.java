package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;

import com.model.BookServices;
import com.model.Services;
import com.model.SubServices;

import com.util.DBUtil;

public class AdminDao 
{
 Connection cn = null;
 int x=0;
 public int addServicesdetails(Services s1)
 {
	 cn=new DBUtil().getConnectionData();
	 String str = "insert into services(servicename,price) values(?,?)";
	try {
		java.sql.PreparedStatement st= cn.prepareStatement(str);
		st.setString(1, s1.getServicename());
		st.setInt(2, s1.getPrice());
		x=st.executeUpdate();
		cn.close();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	 
	 
	 return x;
 }
 
 public int addSubServicesdetails(SubServices s1)
 {
	 x=0;
	 cn=new DBUtil().getConnectionData();
	 String str = "insert into subservices(serviceid,subname,price) values(?,?,?)";
	try {
		java.sql.PreparedStatement st= cn.prepareStatement(str);
		st.setInt(1, s1.getServiceid());
		st.setString(2, s1.getSubname());
		st.setInt(3, s1.getPrice());
		x=st.executeUpdate();
		cn.close();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	 
	 
	 return x;
 }
 String s =null;
 public String  getData(int serviceid)
 {
	 cn = new DBUtil().getConnectionData();
	 String qry="select servicename from services where serviceid=?";
	 try {
		java.sql.PreparedStatement st = cn.prepareStatement(qry);
		st.setInt(1, serviceid);
		
		ResultSet rs = st.executeQuery();
		if(rs.next())
		{			
			s=rs.getString("servicename");
		} }catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	 return s;
 }
 
 public int  getServicePrice(int serviceid)
 {
	 int x=0;
	 cn = new DBUtil().getConnectionData();
	 String qry="select price from services where serviceid=?";
	 try {
		java.sql.PreparedStatement st = cn.prepareStatement(qry);
		st.setInt(1, serviceid);
		
		ResultSet rs = st.executeQuery();
		if(rs.next())
		{			
			x=rs.getInt("price");
		} }catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	 return x;
 }
 Services s2 = null;
 public int doUpdateServiceData(Services s2)
 {
 	int x=0;
     cn = new DBUtil().getConnectionData();
     String qry = "update services set servicename=?,price=? where serviceid=?";
 	try {
 		java.sql.PreparedStatement st = cn.prepareStatement(qry);
 		st.setString(1, s2.getServicename());
 		st.setInt(2, s2.getPrice());
 		st.setInt(3, s2.getServiceid());
 		
 		x=st.executeUpdate();
 		cn.close();
 	} catch (Exception e) {
 		// TODO Auto-generated catch block
 		e.printStackTrace();
 	}
 	
 	return x;
 } 
 public int deletedetails(int serviceid)
 {
	 x=0;
	 cn=new DBUtil().getConnectionData();
	 String str = "delete from services where serviceid=?";
	try {
		java.sql.PreparedStatement st= cn.prepareStatement(str);
		st.setInt(1, serviceid);
		x=st.executeUpdate();
		cn.close();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	 
	 
	 return x;
 }
 BookServices b1 = null;
 public int doUpdateBookData(BookServices b1)
 {
 	int x=0;
     cn = new DBUtil().getConnectionData();
     String qry = "update bookservices set status=?,zone=? where bid=?";
 	try {
 		java.sql.PreparedStatement st = cn.prepareStatement(qry);
 		st.setString(1, b1.getStatus());
 		st.setString(2, b1.getZone());
 		st.setInt(3, b1.getBid());
 		
 		x=st.executeUpdate();
 		cn.close();
 	} catch (Exception e) {
 		// TODO Auto-generated catch block
 		e.printStackTrace();
 	}
 	
 	return x;
 } 
}
