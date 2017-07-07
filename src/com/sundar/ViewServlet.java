package com.sundar;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ViewServlet
 */
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String regno = request.getParameter("regno");
		System.out.println(regno);
		try{
			StudentDB s=new StudentDB();
		Student st=s.read(regno);
		if(st.isF())
		{
		request.setAttribute("std",st);
		System.out.println(" hi");
		}
		}catch (Exception e){System.out.println(e);}
		ServletContext context= getServletContext();
		RequestDispatcher rd= context.getRequestDispatcher("/viewStudent.jsp");
		System.out.println(" hi");
		rd.forward(request, response);
		
	}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				

		doGet(request, response);
	}

}
