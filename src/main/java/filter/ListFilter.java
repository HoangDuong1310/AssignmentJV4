package filter;
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


@WebFilter("/admin/list")
public class ListFilter implements Filter {

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
if (session.getAttribute("role") == role.ADMIN) {
	chain.doFilter(request, response);//đi tiếp
}else {//không đúng cho về
	res.sendRedirect("http://localhost:8080/Assignment/user/list");
}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
