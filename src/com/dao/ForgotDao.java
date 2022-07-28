package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.model.ForgotPasswordModel;
import com.util.DBUtil;

public class ForgotDao {
	
	Connection conn=null;
	public ForgotPasswordModel checkEmail(String email)
	{
		
		ForgotPasswordModel f=new ForgotPasswordModel();
		
		try {
		
			 conn= new DBUtil().getConnectionData();
			String sql="select * from  customer_regi where email=?";
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setString(1, email);
			ResultSet rs=stmt.executeQuery();
			if(rs.next())
			{
				f.setCustomer_id(rs.getInt(1));
				f.setEmail(rs.getString("email"));
				f.setName(rs.getString(2));
			}
			else

			{
				f=null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	public int resetPassword(ForgotPasswordModel f)
	{
		int r=0;
		try {
			conn=new DBUtil().getConnectionData();
			String sql="update  customer_regi set password=? where customer_id=?";
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setString(1, f.getPassword());
			stmt.setInt(2, f.getCustomer_id());
			r=stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}

}