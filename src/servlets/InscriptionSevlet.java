package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.User;
import classes.Users;

/**
 * Servlet implementation class InscriptionSevlet
 */
@WebServlet("/InscriptionSevlet")
public class InscriptionSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();

		out.print("Served at: "+request.getContextPath());
		int index=Integer.parseInt(request.getParameter("index"));
		out.print(index);
		Users.delete(index);
		response.sendRedirect("list.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		String adresse=request.getParameter("adresse");
		String profession=request.getParameter("profession");
		String page=request.getParameter("origine");

		int age=Integer.parseInt(request.getParameter("age"));
		String email=request.getParameter("mail");
		String password=request.getParameter("pass");
		Users us=new Users();

		User u=new User(nom, prenom, adresse, profession, email, password, age);
		us.add(u);
		if(page.equals("inscrire"))
		response.sendRedirect("index.jsp");
		else
			response.sendRedirect("ajout.jsp");

	}

}
