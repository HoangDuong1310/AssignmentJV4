package servlet.controllerUser;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GaiAnimeModel;
import service.AnimeService;

@WebServlet("/user/find")
public class FindUserServlet extends HttpServlet {
	private final AnimeService service = new AnimeService();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FindUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String status = request.getParameter("status");
		if (status==null) {
			status="false";
		}
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		List<GaiAnimeModel> list = service.find(status, name, price);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/view/user/ListUser.jsp").forward(request, response);
	}

}
