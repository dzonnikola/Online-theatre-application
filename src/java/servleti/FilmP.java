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
public class FilmP extends HttpServlet {

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
                        String id = request.getParameter("id"), godina = request.getParameter("godina"), naziv = request.getParameter("naziv");
            String trajanje = request.getParameter("trajanje"), opis = request.getParameter("opis");
            String url = "jdbc:mysql://localhost:3306/bioskop";
            String user = "root";
            String pass = "";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, user, pass);
                Statement st = con.createStatement();
                ResultSet rs = null;
                String upit = "Select naziv from film";
                rs = st.executeQuery(upit);
                while (rs.next()) {
                    if (naziv.equals(rs.getString("naziv"))) {
                        request.setAttribute("msg", "Film vec postoji");
                        request.getRequestDispatcher("unosFilmaP.jsp").forward(request, response);
                    }
                }
                st.close();
                con.close();
            } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
                request.setAttribute("poruka", e.getMessage());
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            if (id != null && id.length() > 0 && naziv != null && naziv.length() > 0 && godina != null && godina.length() > 0 && opis != null && opis.length() > 0) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, user, pass);
                    Statement st = con.createStatement();
                    ResultSet rs = null;
                    //korisnickoID je originalno bio postavljen u upitu, i serovan je na 4
                    String upit = "INSERT into film(filmID,godina,naziv,trajanje,opis)"
                            + "values('" + id + "','" + godina + "','" + naziv + "','" + trajanje + "' , '" + opis + "')";
                    st.executeUpdate(upit);
                    st.close();
                    con.close();
                    request.setAttribute("msg", "Uspesno ste se ubacili novi film");
                    request.getRequestDispatcher("unosFilmaP.jsp").forward(request, response);
                } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
                    request.setAttribute("poruka", e.getMessage());
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("msg", "Morate popuniti sva polja");
                request.getRequestDispatcher("unosFilmaP.jsp").forward(request, response);
            }
           
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
