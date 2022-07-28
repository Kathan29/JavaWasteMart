package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.CustomerModel;
import com.model.Services;
import com.util.DBUtil;

public class LoginDao {
	Connection cn = null;
CustomerModel mmodel =null;
public CustomerModel getuserdata(CustomerModel lmodel) {
	 cn = new DBUtil().getConnectionData();
	 String qry="select * from customer_regi where email=? and password=?";
	 try {
		PreparedStatement st = cn.prepareStatement(qry);
		st.setString(1,lmodel.getEmail());
		st.setString(2,lmodel.getPassword());
		ResultSet rs = st.executeQuery();
		if(rs.next())
		{
			mmodel = new CustomerModel();
			mmodel.setCustomer_id(rs.getInt(1));
			mmodel.setName(rs.getString(2));
			mmodel.setEmail(rs.getString(3));
			mmodel.setGender(rs.getString(4));
			mmodel.setAddress(rs.getString(5));
			mmodel.setMobno(rs.getString(6));
			mmodel.setPassword(rs.getString(7));
		}
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
	 return mmodel;
	
}
public int doUpdateUserData(CustomerModel hmodel)
{
	cn = null;
	int x=0;
    cn = new DBUtil().getConnectionData();
    String qry = "update customer_regi set name=?,email=?,gender=?,address=?,mobno=? where customer_id=?";
	try {
		java.sql.PreparedStatement st = cn.prepareStatement(qry);
		st.setString(1, hmodel.getName());
		st.setString(2, hmodel.getEmail());
		st.setString(3, hmodel.getGender());
		st.setString(4, hmodel.getAddress());
		st.setString(5, hmodel.getMobno());
		st.setInt(6, hmodel.getCustomer_id());
		
		x=st.executeUpdate();
		cn.close();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return x;
} 

}
