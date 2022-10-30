package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GaiAnimeModel;
import service.AnimeService;

/**
 * Servlet implementation class tableServlet
 */
@WebServlet("/table")
public class tableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private final service.AnimeService anime = new service.AnimeService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tableServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
List<GaiAnimeModel> gaiAnimeModels = anime.getAllData();
request.setAttribute("list", gaiAnimeModels);
request.getRequestDispatcher("/WEB-INF/view/table.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
