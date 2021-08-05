/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Korisnik
 */
public class Projekcija extends HttpServlet {

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
            String id = request.getParameter("id"), bioskop = request.getParameter("bio"), film = request.getParameter("film");
            String sala = request.getParameter("sala");
            String naziv = request.getParameter("naziv");
            String url = "jdbc:mysql://localhost:3306/bioskop";
            String user = "root";
            String pass = "";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, user, pass);
                Statement st = con.createStatement();
                ResultSet rs = null;
                String upit = "Select projekcijaID from projekcija";
                rs = st.executeQuery(upit);
                while (rs.next()) {
                    if (id.equals(rs.getString("projekcijaID"))) {
                        request.setAttribute("msg", "Projekcija  vec postoji");
                        request.getRequestDispatcher("unosProjekcije.jsp").forward(request, response);
                    }
                }
                st.close();
                con.close();

            } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
                request.setAttribute("poruka", e.getMessage());
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            if (id != null && id.length() > 0 && film != null && film.length() > 0 && bioskop != null && bioskop.length() > 0 && sala != null && sala.length() > 0) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, user, pass);
                    Statement st = con.createStatement();
                    ResultSet rs = null;
                    //korisnickoID je originalno bio postavljen u upitu, i serovan je na 4
                    String upit = "INSERT into projekcija(projekcijaID,bioskopID,filmID,salaID,naziv)"
                            + "values('" + id + "','" + bioskop + "','" + film + "','" + sala + "','" + naziv + "')";
                    st.executeUpdate(upit);
                    st.close();
                    con.close();
                    request.setAttribute("msg", "Uspesno ste se ubacili novu projekciju");
                    request.getRequestDispatcher("unosProjekcije.jsp").forward(request, response);
                } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
                    request.setAttribute("poruka", e.getMessage());
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("msg", "Morate popuniti sva polja");
                request.getRequestDispatcher("unosProjekcije.jsp").forward(request, response);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Projekcija</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Projekcija at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
