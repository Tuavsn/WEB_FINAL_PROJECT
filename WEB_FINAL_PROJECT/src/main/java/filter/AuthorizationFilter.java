package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import constant.SystemConstant;
import model.UserModel;
import utils.SessionUtil;



public class AuthorizationFilter implements Filter //su ly phan quyen dang nhap phai khai bao trong web.xml
{
	
	private ServletContext context;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {	
		this.context = filterConfig.getServletContext();
	}
	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		String url = request.getRequestURI(); //lay duoc url dang truy cap vao
		 if(url.startsWith(request.getContextPath()+"/admin"))
		 {
			UserModel model =(UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
			if(model != null) {
				if(model.getRole().getCode().equals(SystemConstant.ADMIN))
				{
					filterChain.doFilter(servletRequest, servletResponse);//cho truy cap
				}
				else if(model.getRole().getCode().equals(SystemConstant.USER))
				{
					PrintWriter out = response.getWriter();  
					response.setContentType("text/html");  
					out.println("<script type=\"text/javascript\">");  
					out.println("alert('Bạn không có quyền truy cập vào đường dẫn này');");  
					out.print("location='"+request.getContextPath()+"/home'");
					out.println("</script>");
				}
			}
			else//su ly chua dang nhap
			{
				PrintWriter out = response.getWriter();  
				response.setContentType("text/html");  
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Bạn chưa thực hiện đăng nhập');");
				out.print("location='"+request.getContextPath()+"/home'");
				out.println("</script>");
			}
		}else {
			filterChain.doFilter(servletRequest, servletResponse);
		}
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
