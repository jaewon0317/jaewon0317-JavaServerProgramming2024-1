package producteg;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductController
 */

@WebServlet("/pcontroller")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	ProductService service;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
    	super();
        service = new ProductService();
        
    }
    
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String action = request.getParameter("action");
		String view = "";
	
		if(request.getParameter("action")==null) {
		getServletContext().getRequestDispatcher("/pcontroller?action=list").forward(request, response);
		}else {
			switch(action){
			case "list":view = list(request,response);break;
			case "info":view = info(request,response);break;
			}
			getServletContext().getRequestDispatcher(view).forward(request, response);
		}
	}

	
	private String info(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("p",service.find(request.getParameter("id")));
		return "/productinfo.jsp";
	}

	private String list(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("products",service.findAll());
		return "/productlist.jsp";
	}


}