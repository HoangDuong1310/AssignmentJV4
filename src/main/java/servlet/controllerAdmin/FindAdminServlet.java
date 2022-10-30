package servlet.controllerAdmin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GaiAnimeModel;
import service.AnimeService;

/**
 * Servlet implementation class findAdminServlet
 */
@WebServlet("/admin/find")
public class FindAdminServlet extends HttpServlet {
	private final AnimeService service = new AnimeService();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FindAdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		
//		List<GaiAnimeModel> list = service.getAllData();
//		
//		response.getWriter().println("<a> abc</a> ");
//		for (GaiAnimeModel lists : list) {
//			
//		}
//		
//		request.setAttribute("list", list);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String status = request.getParameter("status");
		if (status == null) {
			status = "false";
		}
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		List<GaiAnimeModel> list = service.find(status, name, price);
		request.setAttribute("list", list);

//		<c:forEach items="${list}" var="x">
//		<div class="card">
//			<a href="/Assignment/admin/card-detail?id=${x.id }">
//				<div class="card__top">
//					<img src="${pageContext.request.contextPath}/img/${x.img}" />
//				</div>
//				<div class="card__main">
//					<div id="js-title" class="card__main-title">${x.name }</div>
//					<div id="description" class="card__main-description">${x.description}</div>
//					<div class="card__main-like">
//						<i class="fa-solid fa-heart"></i>
//					</div>
//				</div>
//			</a>
//		</div>
//	</c:forEach>

		request.getRequestDispatcher("/WEB-INF/view/admin/ListAdmin.jsp").forward(request, response);
//		response.sendRedirect("http://localhost:8080/Assignment/admin/list");
	}

}
