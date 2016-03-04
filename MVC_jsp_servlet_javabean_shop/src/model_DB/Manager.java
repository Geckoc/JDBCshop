package model_DB;

import java.sql.*;


public class Manager {
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	private String manager_id;
	private String manager_pwd;
	private String manager_sex;
	private String manger_mail;	
	private String manager_info;

public String getManager_id()
{ return manager_id; }
public void setManager_id(String manager_id)
{ this.manager_id=manager_id; }
public String getManager_pwd()
{ return manager_pwd;}
public void setManager_pwd(String manager_pwd) 
{ this.manager_pwd=manager_pwd; }
public String getManager_sex()
{ return manager_sex; }
public void setManager_sex(String manager_sex)
{ this.manager_sex=manager_sex; }
public String getManager_mail()
{ return manger_mail;}
public void setManager_mail(String manager_mail){
	this.manger_mail=manager_mail;
}
public String getManager_info(){
	return manager_info;
}
public void setManager_info(String manager_info){
	this.manager_info=manager_info;
}

public ResultSet Managerlogin(String manager_id,String manager_pwd){
		con = (Connection) DB.getcon(); 
	try {
		ps=con.prepareStatement("select * from manager where manager_id=? and manager_pwd=?");
		ps.setString(1, manager_id);
		ps.setString(2, manager_pwd);
		rs=ps.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return rs;
}
public int ManagerSignup
(String manager_id,String manager_pwd,String manager_sex,String manager_mail,String manager_info){
	int managersign_up=0;
	con=(Connection)DB.getcon();
	try {
		String sql="insert into manager values(?,?,?,?,?)";
		ps=con.prepareStatement(sql);
		ps.setString(1, manager_id);
		ps.setString(2, manager_pwd);
		ps.setString(3, manager_sex);
		ps.setString(4, manager_mail);
		ps.setString(5, manager_info);
		managersign_up=ps.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return managersign_up;
}
}


