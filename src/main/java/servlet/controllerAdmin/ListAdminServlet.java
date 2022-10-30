package servlet.controllerAdmin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GaiAnimeModel;

/**
 * Servlet implementation class listServlet
 */
@WebServlet("/admin/list")
public class ListAdminServlet extends HttpServlet {
	 private final service.AnimeService anime = new service.AnimeService();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<GaiAnimeModel> gaiAnimeModels = anime.getStatusNonDelete();
		request.setAttribute("list", gaiAnimeModels);
		request.getRequestDispatcher("/WEB-INF/view/admin/ListAdmin.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
