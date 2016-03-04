package model_DB;

import java.sql.*;


public class User {
	    private  String user_id;
	    private   String password;
	     private String user_sex;
	      private String call;
	      private String mail;
	      private String location;
	      Connection con=null;
	  	  PreparedStatement ps=null;
	  	  ResultSet rs=null;
	     public String getUser_Id() {
	         return user_id;
	     }
	      public void setUser_Id(String user_id) {
	         this.user_id=user_id;
	      }
	  
	      public String getPassWord() {
	          return password;
	      }
	  
	      public void setPassWord(String password) {
	          this.password=password;
	     }
	  
	      public String getUser_Sex() {
	         return user_sex;
	     }
	  
	      public void setUser_Sex(String user_sex) {
	          this.user_sex =user_sex;
	      }
	     public String getCall(){
	    	 return call;
	     }
	     public void setCall(String call){
	    	 this.call=call;
	     }
	      public String getMail() {
	          return mail;
	      }	  
	      public void setMail(String mail) {
	          this.mail = mail;
	      }
	      public String getLocation() {
	          return location;
	      }	  
	      public void setLocation(String location) {
	          this.location = location;
	      }
	    
	  	public ResultSet login(String user_id,String password){
	  		con = (Connection) DB.getcon(); 
			try {
				ps=con.prepareStatement("select * from user_b where user_id=? and password=?");
				ps.setString(1, user_id);
				ps.setString(2, password);
				rs=ps.executeQuery();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return rs;
		}	
		public int register
	(String user_id,String password,String user_sex,String call,String mail,String location){
			int b=0;
			con = (Connection) DB.getcon(); 
			try {
				ps=con.prepareStatement("insert into user_b values(?,?,?,?,?,?)");
				ps.setString(1, user_id);
				ps.setString(2, password);
				ps.setString(3, user_sex);
				ps.setString(4, call);
				ps.setString(5, mail);
				ps.setString(6, location);			
				b=ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}		
			return b;
			
		}
      public ResultSet update_search(String user_id,String password,String call)
      {
    	  con = (Connection) DB.getcon();
    	  try {
			String sql="select * from user_b where user_id=? and password=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, user_id);
			ps.setString(2, password);
			rs=ps.executeQuery();			
		} catch (Exception e) {
             e.printStackTrace();
    	  
      }
		  return rs;
      }
		
		
		public int update_me
		(String user_id,String password,String user_sex,String call,String mail,String location)
		{
			int c=0;
			con =(Connection) DB.getcon();
			try {
				String sql=
	"update user_b set user_id=?,password=?,user_sex=?,user_call=?,user_mail=?,location=? where user_id=?";
				ps=con.prepareStatement(sql);
				ps.setString(1, user_id);
				ps.setString(2, password);
				ps.setString(3, user_sex);
				ps.setString(4, call);
				ps.setString(5, mail);
				ps.setString(6, location);
				ps.setString(7, user_id);
				c=ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		   	return c;						
		}
		
		
		
		
	
		
	  }

