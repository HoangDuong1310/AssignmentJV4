package servlet.controllerAdmin;

import java.io.IOException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
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
 * Servlet implementation class updateServlet
 */
@WebServlet("/admin/update")
public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	GaiAnimeModel g = new GaiAnimeModel();

	public UpdateAdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		System.out.println("a");
		service.AnimeService ani = new AnimeService();
		ani.getAllData();
		g = ani.readByID(Integer.parseInt(id));
		request.setAttribute("ga", g);
		request.getRequestDispatcher("/WEB-INF/view/admin/FormUpdateAdmin.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String createdUser = request.getParameter("createdUser");
		String createdDate = request.getParameter("createdDate");
		String lastModifiedUser = request.getParameter("lastModifiedUser");
		String lastModifiedDate = request.getParameter("lastModifiedDate");
//		String isDeleted = request.getParameter("isDeleted");
		String custom = request.getParameter("custom");
		String power = request.getParameter("power");
		String video = request.getParameter("video");
		String status = request.getParameter("status");
		String amountHarem = request.getParameter("amountHarem");
		String img = request.getParameter("img");
		LocalDate localDate = LocalDate.now();
		if (name == null || description == null || price == null || quantity == null || createdUser == null
				|| lastModifiedUser == null || custom == null || power == null || amountHarem == null || video == null
				|| img == null) {
			request.setAttribute("massage", "Kh??ng ???????c ????? Tr???ng Th??ng Tin");
			request.getRequestDispatcher("/WEB-INF/view/admin/FormInsertAdmin.jsp").forward(request, response);
			return;
		}

		if (name.trim().isEmpty() || description.trim().isEmpty() || price.trim().isEmpty() || quantity.trim().isEmpty()
				|| createdUser.trim().isEmpty() || lastModifiedUser.trim().isEmpty() || custom.trim().isEmpty()
				|| power.trim().isEmpty() || amountHarem.trim().isEmpty() || video.trim().isEmpty()
				|| img.trim().isEmpty()) {
			request.setAttribute("massage", "Kh??ng ???????c ????? Tr???ng Th??ng Tin");
			request.getRequestDispatcher("/WEB-INF/view/admin/FormInsertAdmin.jsp").forward(request, response);
			return;
		}
		try {
			Double.parseDouble(price);
			Integer.parseInt(quantity);
			Integer.parseInt(amountHarem);

		} catch (Exception e) {
			request.setAttribute("erorr", "Sai ?????nh D???ng");
			request.getRequestDispatcher("/WEB-INF/view/admin/FormInsertAdmin.jsp").forward(request, response);
			return;
		}
		GaiAnimeModel gai = new GaiAnimeModel();
		gai.setId(Integer.parseInt(id));
		gai.setImg(img);
		gai.setName(name);
		gai.setDescription(description);
		gai.setVideo(video);
		gai.setPrice(BigDecimal.valueOf(Double.parseDouble(price)));
		gai.setQuantity(Integer.parseInt(quantity));
		gai.setCreatedUser(createdUser);
		gai.setCreatedDate(localDate);
		gai.setLastModifiedUser(lastModifiedUser);
		gai.setLastModifiedDate(localDate);
//		if (isDeleted.equals("chua")) {
//			gai.setIsDeleted(false);
//		} else {
//			gai.setIsDeleted(true);
//		}
		gai.setCustom(custom);
		gai.setPower(power);
		gai.setStatus(false);
		gai.setAmountHarem(Integer.parseInt(amountHarem));
		GaiAnimeRepository abc = new GaiAnimeRepository();
		abc.update(gai);
		response.sendRedirect("http://localhost:8080/Assignment/admin/list");

	}

}
