package servlet.account;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AccountModel;
import model.role;
import repository.GaiAnimeRepository;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("WEB-INF/view/account/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String email = request.getParameter("email");
		String vaitro = request.getParameter("vaitro");
//		String number = request.getParameter("phone");

		// validate

		if (firstname.trim().equals("") || lastname.trim().equals("") || username.trim().equals("")
				|| password.trim().equals("") || repassword.trim().equals("") || email.trim().equals("") ) {
			request.setAttribute("massage", "Không được để trống thông tin");
			request.getRequestDispatcher("WEB-INF/view/account/register.jsp").forward(request, response);

		} else {

			if (password.equals(repassword)) {
				if (password.length() > 8 && password.length() < 16) {
					String regex2 = ".*[!@#$%&*()_+=|<>?{}\\\\[\\\\]~-].*";
					String regex3 = ".*\\d.*";
					if (!password.matches(regex2)) {
						if (!password.matches(regex3)) {
							
						}else {
							request.setAttribute("errorPass", "Mật Khẩu Không Được Chứ Kí Tự Số");
							request.getRequestDispatcher("WEB-INF/view/account/register.jsp").forward(request, response);
						}

					} else {
						request.setAttribute("errorPass", "Mật Khẩu Không Được Chứ Kí Tự Đặc Biệt");
						request.getRequestDispatcher("WEB-INF/view/account/register.jsp").forward(request, response);
					}

				} else {
					request.setAttribute("errorPass", "Mật Khẩu Phải Từ 8-16 Kí Tự");
					request.getRequestDispatcher("WEB-INF/view/account/register.jsp").forward(request, response);
				}
			} else {
				request.setAttribute("massage", "Mật Khẩu Không Khớp");
				request.getRequestDispatcher("WEB-INF/view/account/register.jsp").forward(request, response);
			}

			AccountModel acc = new AccountModel();
			acc.setFirstname(firstname);
			acc.setLastname(lastname);
			acc.setUsername(username);
			acc.setPassword(password);
			acc.setRepassword(repassword);
			acc.setEmail(email);
			acc.setRole(role.USER);
//			if (vaitro.equals("user")) {
//				acc.setRole(role.USER);
//			} else {
//				acc.setRole(role.ADMIN);
//			}
			GaiAnimeRepository gai = new GaiAnimeRepository();
			gai.insertAcc(acc);
//			response.sendRedirect("http://localhost:8080/Assignment/index");
			request.getRequestDispatcher("WEB-INF/view/account/login.jsp").forward(request, response);

		}

	}

//		
//		if (firstname.trim().isEmpty()  || lastname.trim().isEmpty()  || username.trim().isEmpty()  || password.trim().isEmpty()  || repassword.trim().isEmpty()  || email.trim().isEmpty()  || vaitro.trim().isEmpty() ) {
//			request.setAttribute("massage" , "Không được để trống thông tin");
//			request.getRequestDispatcher("WEB-INF/view/account/register.jsp").forward(request, response);
//			return;
//		}

}
