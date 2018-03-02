package servlet;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import function.*;
public class login extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String password = request.getParameter("password");
		String id = request.getParameter("id");
		try
		{
		    Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project?useUnicode=true&amp;characterEncoding=utf-8","root","0917");
			Statement stat = conn.createStatement();
			ResultSet rs = stat.executeQuery("Select id FROM user");
			int flag=0;
			while(rs.next())
			{		
			   	String id2 = rs.getString("id");
			   	if(id.equalsIgnoreCase(id2))
			   	{
			   		String password2 = rs.getString("password");
			   		if(password.equalsIgnoreCase("password2"))
			   		{
			   			flag=1;
			   			session.setAttribute("tip", "Í«≥∆“—¥Ê‘⁄£¨«Î÷ÿ ‘");
				    	response.sendRedirect("http://localhost:8080/Project/signtip.jsp");
			   		}
		
			   	}		   				
			}
			if(flag!=1)
			{
				session.setAttribute("tip", "d5");
		    	response.sendRedirect("http://localhost:8080/Project/signtip.jsp");
			}
		}
		    catch (Exception e)
		    {   
		    	e.printStackTrace();
		    } 
		}
	}



