package function;
import java.sql.*;
import javax.servlet.http.HttpSession; 

public class Service {
	public Service()
	{}

	public String add_account(String password,String name,String gender,int age,String grade,String introduction,float height,float weight,String emotion,String phone) 
	{	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project","root","0917");
		    Statement stat = conn.createStatement();
		    Statement stat1 = conn.createStatement();
			String sq1 = "select * from user";
			ResultSet rs = stat.executeQuery(sq1);	
			int flag=1;
			while(rs.next())
			{
				flag++;
			}
		  	String sq2 = "INSERT INTO user(id,password)VALUES('"+flag+"','"+password+"')";
		  	stat1.executeUpdate(sq2);
		  	String str = add_user(flag,name,gender,age,grade,introduction,height,weight,emotion,phone);
		  	return str;
		}catch(Exception e){e.printStackTrace();}
			return "Î´Öª´íÎó";
	}
	
	public String add_user(int id,String name,String gender,int age,String grade,String introduction,float height,float weight,String emotion,String phone)
	{	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project","root","0917");
		    Statement stat = conn.createStatement();
		    String sq1 = "call add_user('"+id+"','"+name+"','"+gender+"',"+age+",'"+grade+"','"+introduction+"',"+height+","+weight+",'"+emotion+"','"+phone+"')";
		    System.out.println(sq1);
		    stat.executeUpdate(sq1);
		    return "×¢²á³É¹¦";
			}catch(Exception e){e.printStackTrace();}
			return "unclear error";	
	}
}
