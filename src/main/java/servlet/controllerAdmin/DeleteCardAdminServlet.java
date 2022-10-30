package servlet.controllerAdmin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GaiAnimeModel;
import service.AnimeService;

/**
 * Servlet implementation class DeleteCardAdminServlet
 */
@WebServlet("/admin/delete")
public class DeleteCardAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCardAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		service.AnimeService ani = new AnimeService();
		GaiAnimeModel gai = ani.readByID(Integer.parseInt(id));
		gai.setStatus(true);
		ani.update(gai);
		response.sendRedirect("http://localhost:8080/Assignment/admin/list");	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}

}
