package servlet.NonLogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GaiAnimeModel;
import repository.GaiAnimeRepository;
import service.AnimeService;

/**
 * Servlet implementation class CardDetailServlet
 */
@WebServlet("/card-detail")
public class ShowDetailUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	GaiAnimeModel g = new GaiAnimeModel();
	public ShowDetailUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		service.AnimeService ani = new AnimeService();
		ani.getAllData();
		g = ani.readByID(Integer.parseInt(id));
		request.setAttribute("list", g);
		request.getRequestDispatcher("/WEB-INF/view/nonLogin/CardDetailNonLogin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
