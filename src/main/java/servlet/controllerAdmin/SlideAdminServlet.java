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
 * Servlet implementation class SlideAdminServlet
 */
@WebServlet("/SlideAdminServlet")
public class SlideAdminServlet extends HttpServlet {
	private final service.AnimeService anime = new service.AnimeService();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SlideAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<GaiAnimeModel> gaiAnimeModels = anime.getStatusNonDelete();
		request.setAttribute("list", gaiAnimeModels);
		request.getRequestDispatcher("/WEB-INF/view/admin/IndexAdmin.jsp").forward(request, response);
	}

}
