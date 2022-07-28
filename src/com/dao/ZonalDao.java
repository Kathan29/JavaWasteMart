package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.ConfirmModel;
import com.model.CustomerModel;
import com.model.SubServices;
import com.model.ZonalModel;
import com.util.DBUtil;

public class ZonalDao {
	int x;
	public int addZonaldetails(ZonalModel z1)
	 {
		 x=0;
		Connection cn=new DBUtil().getConnectionData();
		 String str = "insert into zonal(name,email,gender,zone,mobno,userid,password) values(?,?,?,?,?,?,?)";
		try {
			java.sql.PreparedStatement st= cn.prepareStatement(str);
			st.setString(1, z1.getName());
			st.setString(2, z1.getEmail());
			st.setString(3, z1.getGender());
			st.setString(4,z1.getZone());
			st.setString(5,z1.getMobno() );
			st.setString(6,z1.getUserid() );
			st.setString(7,z1.getPassword() );
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
		 
		 return x;
	 }
	Connection cn = null;
	 ZonalModel mmodel=null;
	 public ZonalModel getZonalData(ZonalModel lmodel)
	 {
		 cn = new DBUtil().getConnectionData();
		 String qry="select * from zonal where userid=? and password=?";
		 try {
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1,lmodel.getUserid());
			st.setString(2,lmodel.getPassword());
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				mmodel = new ZonalModel();
				mmodel.setZid(rs.getInt(1));
				mmodel.setName(rs.getString(2));
				mmodel.setEmail(rs.getString(3));
				mmodel.setGender(rs.getString(4));
				mmodel.setZone(rs.getString(5));
				mmodel.setMobno(rs.getString(6));
				mmodel.setUserid(rs.getString(7));
				mmodel.setPassword(rs.getString(8));
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		 return mmodel;
	 }
	 public int confirmZonaldetails(ConfirmModel z1)
	 {
		 x=0;
		Connection cn=new DBUtil().getConnectionData();
		 String str = "insert into zonalconfirm(zid,serviceid,bid,date,time) values(?,?,?,?,?)";
		try {
			java.sql.PreparedStatement st= cn.prepareStatement(str);
			st.setInt(1, z1.getZid());
			st.setInt(2, z1.getServiceid());
			st.setInt(3, z1.getBid());
			st.setString(4,z1.getDate());
			st.setString(5,z1.getTime() );
			
			x=st.executeUpdate();
			cn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
		 
		 return x;
	 }
}
