package servlet;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import function.*;
public class adduser extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String grade = request.getParameter("grade");
		String emotion = request.getParameter("emotion");
		String sage = request.getParameter("age");
		String sheight = request.getParameter("height");
		String sweight = request.getParameter("weight");
		String introudction = request.getParameter("introudction");
		String phone="123";
		try
		{
		    Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project","root","0917");
			Statement stat = conn.createStatement();
			ResultSet rs = stat.executeQuery("Select name FROM user_inf");	
			int flag=0;
			while(rs.next())
			{		
				
			   	String name2 = rs.getString("name");
			   	if(name.equalsIgnoreCase(name2))
			   	{
			   		flag=1;
			   		session.setAttribute("tip", "Í«≥∆“—¥Ê‘⁄£¨«Î÷ÿ ‘");
			    	response.sendRedirect("http://localhost:8080/Project/signtip.jsp");	
			   	}		   				
			} 	
			if(flag!=1)
			{
			   	int age = Integer.parseInt(sage);
			   	float height = Float.parseFloat(sheight);
			   	float weight = Float.parseFloat(sweight);
			   	Service ser = new Service();	
			   	String tip = ser.add_account(password,name,gender,age,grade,introudction,height,weight,emotion,phone);
			   	session.setAttribute("tip", tip);
			   	response.sendRedirect("http://localhost:8080/Project/signtip.jsp");		   	
			   }		   			
		    }
		    catch (Exception e)
		    {   
		    	e.printStackTrace();
		    } 
		}
	}



