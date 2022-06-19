/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Order;
import Entity.Product;
import dao.OrderDao;
import dao.OrderDetailsDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Window 10
 */
@WebServlet(name = "checkout1", urlPatterns = {"/checkout1"})
public class checkout1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            OrderDao daoOrder = new OrderDao();
            OrderDetailsDao daoOrderDetails = new OrderDetailsDao();
            String accountID = request.getParameter("accountID");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String temp = request.getParameter("temp");
            //out.print(temp);        
            List<Product> listProductCarts = new ArrayList<Product>();
            HttpSession session = request.getSession();
            Enumeration em = session.getAttributeNames();
            while (em.hasMoreElements()) {
                String key = em.nextElement().toString();
                if (!key.equals("urlHistory") && !key.equals("backToUrl") && !key.equals("order") && !key.equals("listCategory") && !key.equals("Account") && !key.equals("size")) {
                    Product pro = (Product) session.getAttribute(key);
                    if (pro == null) {
                        listProductCarts = new ArrayList<>();
                    }
                    listProductCarts.add(pro);
                    session.setAttribute(key, pro);
                }
            }
            double totalMoney = 0;
            for (Product list : listProductCarts) {
                totalMoney += list.getUnitPrice() * list.getQuantity();
                totalMoney *= 100;
                double total = Math.ceil(totalMoney);
                total = (double) total / 100;
                totalMoney = total;
            }

            Order order = Order.builder()
                    .accountID(Integer.parseInt(accountID))
                    .shipperID(1)
                    .address(address.trim())
                    .email(email)
                    .status(1)
                    .phone(phone.trim())
                    .build();
            int orderID = new OrderDao().insertOrderID(order);
            new OrderDetailsDao().saveCart(orderID, listProductCarts);

            while (em.hasMoreElements()) {
                String key = em.nextElement().toString();
                if (!key.equals("urlHistory") && !key.equals("backToUrl") && !key.equals("order") && !key.equals("listCategory") && !key.equals("Account") && !key.equals("size")) {
                    session.removeAttribute(key);
                }
            }
            if (Integer.parseInt(temp) == 1) {
                request.getRequestDispatcher("menu").forward(request, response);
            }
            request.getRequestDispatcher("login?do=logout").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
