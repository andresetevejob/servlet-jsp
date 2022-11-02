package com.nextu.app.servlets;

import java.io.IOException;

import com.nextu.app.beans.Personne;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PersonneServlet
 */
public class PersonneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public PersonneServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Personne personne = new Personne();
		personne.setNom("Kouame");
		personne.setPrenoms("Andre");
		request.setAttribute("personne", personne);
		//response.sendRedirect("person.jsp");
		this.getServletContext().getRequestDispatcher("/person.jsp").forward(request, response);
		//response.sendRedirect(request.getContextPath() + "/person.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
