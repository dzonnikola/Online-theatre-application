<%-- 
    Document   : checkKlijent
    Created on : Sep 7, 2020, 8:06:49 AM
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Korisnicki nalog</title>
    </head>
    <%

        String mail = request.getParameter("mail");

        String pass = request.getParameter("upass");

        
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop", "root", "");

                Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("select * from korisnik");

                while (rs.next()) {

                    if ((rs.getString("username").equals(name)) && rs.getString("password").equals(pass)) {

                        request.getRequestDispatcher("client.jsp").forward(request, response);
                        break;

                    } else {

                        request.setAttribute("msg", "Netacan username ili password!!");

                    }
                }

    %>

    <jsp:include page="login.jsp" />

    <%} catch (Exception e) {
                out.println(e);
            }
            session.setAttribute("username", name);
        
    %>
</html>
