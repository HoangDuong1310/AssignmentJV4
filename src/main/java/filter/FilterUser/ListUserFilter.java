package filter.FilterUser;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.role;


@WebFilter("/user/list")
public class ListUserFilter implements Filter {

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
HttpServletRequest req = (HttpServletRequest) request;
HttpServletResponse res = (HttpServletResponse) response;

//lấy role của người dùng đăng nhập
HttpSession session = req.getSession();

//kiểm tra có phải role Admin
if (session.getAttribute("role") == role.USER) {
	chain.doFilter(request, response);//đi tiếp
}else {//không đúng cho về
	res.sendRedirect("http://localhost:8080/Assignment/admin/list");
}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
