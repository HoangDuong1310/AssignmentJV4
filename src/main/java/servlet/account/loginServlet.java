package servlet.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.authenticator.SpnegoAuthenticator.AuthenticateAction;
import org.hibernate.Session;

import model.AccountModel;
import model.role;
import repository.AccountRepository;
import service.AuthenticationService;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final service.AuthenticationService authenService = new AuthenticationService();
	private final AccountRepository acc = new AccountRepository();

	public loginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		// Gọi Service để xác thực thông tin
		AccountModel account = authenService.authenticate(username, password);

//		if (username == null && password == null) {
//			if (username.trim().isEmpty()) {
//				session.setAttribute("ip1", "UsernameKhông Được Để Trống");
//			}
//			if (password.trim().isEmpty()) {
//				session.setAttribute("ip2", "password Không Được Để Trống");
//			}
////			session.setAttribute("error", "Không Được Để Trống");
////			System.out.println("abcd");
//			response.sendRedirect("http://localhost:8080/Assignment/login");
//		} else {
//
//		}
		


		if (username == null || password == null) {
			System.out.println("abc");
			request.setAttribute("massage", "Không Được Để Trống Thông Tin");
			request.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(request, response);
			return;
		}
		if (username.trim().isEmpty() || password.trim().isEmpty()) {
			request.setAttribute("massage", "Không Được Để Trống Thông Tin");
			request.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(request, response);
			return;
		}
		if (account == null) {

			request.setAttribute("NotCorret", "Tài Khoản Mật Khẩu Không Chính Xác");
			request.getRequestDispatcher("/WEB-INF/view/account/login.jsp").forward(request, response);
			return;
		}
		


		session.setAttribute("username", account.getUsername());
		session.setAttribute("password", account.getPassword());
		session.setAttribute("role", account.getRole());
		session.setAttribute("firstName", account.getFirstname());
		session.setAttribute("lastName", account.getLastname());
		if (session.getAttribute("role") == role.ADMIN) {
			response.sendRedirect("http://localhost:8080/Assignment/admin/index");
		} else {
			response.sendRedirect("http://localhost:8080/Assignment/user/index");

		}
	}
}
