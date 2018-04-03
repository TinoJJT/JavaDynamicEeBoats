package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;


@WebServlet("/PoistaVene")
public class PoistaVene extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PoistaVene() {
        super();
        System.out.println("PoistaVene.PoistaVene()");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("PoistaVene.doGet()");
		int id = Integer.parseInt(request.getParameter("poista_id"));
		Dao dao = new Dao();
		if(dao.poistaVene(id)){
			response.sendRedirect("ListaaVeneet");
		}
		response.sendRedirect("ListaaVeneet");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("PoistaVene.doPost()");
	}

}
