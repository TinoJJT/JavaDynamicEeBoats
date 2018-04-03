package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import model.Vene;

@WebServlet("/EtsiPoistaVene")
public class EtsiPoistaVene extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EtsiPoistaVene() {
        super();
        System.out.println("EtsiPoistaVene.EtsiPoistaVene()");
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Same kuin EtsiMuutaVene, mutta t‰m‰ heitt‰‰ poistavene.jsp sivulle
		System.out.println("EtsiPoistaVene.doGet()");
		int vene_id = Integer.parseInt(request.getParameter("vene_id"));
		Dao dao = new Dao();
		Vene vene = dao.loytyykoVene(vene_id);
		request.setAttribute("vene", vene);		
		String jsp = "/poistavene.jsp"; 
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(jsp);
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
