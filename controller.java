package handler;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lenovo
 */
public class controller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          HttpSession session = request.getSession();
            if(session.getAttribute("cartInitialized")!= "true")
            {
           List<item> cart = new ArrayList<>();
           cart.add(new item(1));
           cart.add(new item(2));
           cart.add(new item(3));
           cart.add(new item(4));
          // HttpSession session = request.getSession();
           session.setAttribute("cart", cart);
           session.setAttribute("cartInitialized", "true");
        }
            
                if(request.getParameter("action").equals("viewCart")){
                
                 RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
                      rd.forward(request, response);
                }    
                    
                    
            if(request.getParameter("action").equals("add"))
            {
                 System.out.println(request.getParameter("id"));
                if(Integer.parseInt(request.getParameter("id")) == 1 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(0).AddItemCount();
                    session.setAttribute("cart", _cart);
                   
                    
                }
                  if(Integer.parseInt(request.getParameter("id")) == 2 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(1).AddItemCount();
                    session.setAttribute("cart", _cart);
                    
                }
                    if(Integer.parseInt(request.getParameter("id")) == 3 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(2).AddItemCount();
                    session.setAttribute("cart", _cart);
                    
                }
                      if(Integer.parseInt(request.getParameter("id")) == 4 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(3).AddItemCount();
                    session.setAttribute("cart", _cart);
                    
                }
                     
                      if(request.getParameter("origin").equals("index"))
                      {
                       RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                      rd.forward(request, response);
                      
                      }
                      
                       if(request.getParameter("origin").equals("cart"))
                      {
                       RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
                      rd.forward(request, response);
                      
                      }
                      //response.sendRedirect("");
            }
              if(request.getParameter("action").equals("decrease"))
            {
                 System.out.println(request.getParameter("id"));
                if(Integer.parseInt(request.getParameter("id")) == 1 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(0).DecreaseItemCount();
                    session.setAttribute("cart", _cart);
                   
                    
                }
                  if(Integer.parseInt(request.getParameter("id")) == 2 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(1).DecreaseItemCount();
                    session.setAttribute("cart", _cart);
                    
                }
                    if(Integer.parseInt(request.getParameter("id")) == 3 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(2).DecreaseItemCount();
                    session.setAttribute("cart", _cart);
                    
                }
                      if(Integer.parseInt(request.getParameter("id")) == 4 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(3).DecreaseItemCount();
                    session.setAttribute("cart", _cart);
                    
                }
                      RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
                      rd.forward(request, response);
                      //response.sendRedirect("");
            }
            
              
              
               if(request.getParameter("action").equals("delete"))
            {
                 System.out.println(request.getParameter("id"));
                if(Integer.parseInt(request.getParameter("id")) == 1 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(0).removeItemCount();
                    session.setAttribute("cart", _cart);
                   
                    
                }
                  if(Integer.parseInt(request.getParameter("id")) == 2 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(1).removeItemCount();
                    session.setAttribute("cart", _cart);
                    
                }
                    if(Integer.parseInt(request.getParameter("id")) == 3 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(2).removeItemCount();
                    session.setAttribute("cart", _cart);
                    
                }
                      if(Integer.parseInt(request.getParameter("id")) == 4 )
                {
                    List<item> _cart = new ArrayList<>();
                    _cart = (List<item>) session.getAttribute("cart");
                    _cart.get(3).removeItemCount();
                    session.setAttribute("cart", _cart);
                    
                }
                      RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
                      rd.forward(request, response);
                      //response.sendRedirect("");
            }
        }
    }
}
