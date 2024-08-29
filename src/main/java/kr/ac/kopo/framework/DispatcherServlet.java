package kr.ac.kopo.framework;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {
	
	private HandlerMapping mappings;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		String propLoc = config.getInitParameter("propLoc");
		
		mappings = new HandlerMapping(propLoc);
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getMethod();
		String uri = request.getRequestURI();
		
		request.getContextPath();

		uri = uri.substring(request.getContextPath().length());
		
		// uri에 따라 요청을 처리하도록 하는 switch문
		try {
			Controller control = mappings.getController(uri);
			String callPage = control.handleRequest(request, response);
			if (callPage.startsWith("redirect:/")) {
				String url = callPage.substring(10);
				response.sendRedirect(url);
			}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(callPage);
			dispatcher.forward(request, response);
			}
			
		} catch(Exception e) {
			//e.printStackTrace();
			throw new ServletException(e);
		}
	}
}
