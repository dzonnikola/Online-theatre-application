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
public class Registracija extends HttpServlet {

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
            String ime = request.getParameter("ime"), prezime = request.getParameter("prezime"), korisnicko = request.getParameter("korisnicko");
            String sifra = request.getParameter("sifra"), potvrda = request.getParameter("potvrda"), email = request.getParameter("email");
            String url = "jdbc:mysql://localhost:3306/bioskop";
            String user = "root";
            String pass = "";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, user, pass);
                Statement st = con.createStatement();
                ResultSet rs = null;
                String upit = "Select username from korisnik";
                rs = st.executeQuery(upit);
                while (rs.next()) {
                    if (korisnicko.equals(rs.getString("username"))) {
                        request.setAttribute("msg", "Korisnicko ime vec postoji");
                        request.getRequestDispatcher("registracija.jsp").forward(request, response);
                    }
                }
                st.close();
                con.close();
            } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
                request.setAttribute("poruka", e.getMessage());
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            if (ime != null && ime.length() > 0 && prezime != null && prezime.length() > 0 && korisnicko != null && korisnicko.length() > 0
                    && sifra != null && sifra.length() > 0 && potvrda != null && potvrda.length() > 0 && email != null && email.length() > 0) {
                if (sifra.equals(potvrda)) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection(url, user, pass);
                        Statement st = con.createStatement();
                        //korisnickoID je originalno bio postavljen u upitu, i serovan je na 4
                        String upit = "INSERT into korisnik(ime,prezime,username,password,email)"
                                + "values('" + ime + "','" + prezime + "','" + korisnicko + "','" + sifra + "','" + email + "')";
                        st.executeUpdate(upit);
                        st.close();
                        con.close();
                        request.setAttribute("msg", "Uspesno ste se registrovali. Prijavite se");
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
                        request.setAttribute("poruka", e.getMessage());
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    }
                } else {
                    request.setAttribute("msg", "Lozinke se ne poklapaju");
                    request.getRequestDispatcher("registracija.jsp").forward(request, response);
                }

            }else{
                          request.setAttribute("msg", "Morate popuniti sva polja");
                        request.getRequestDispatcher("registracija.jsp").forward(request, response);
            }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registracija</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registracija at " + request.getContextPath() + "</h1>");
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
