<%-- 
    Document   : checklogin
    Created on : Sep 6, 2020, 6:19:03 PM
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%

        String name = request.getParameter("uname");

        String pass = request.getParameter("upass");
        String type = request.getParameter("type");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop", "root", "");

            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from regi");

            int x = 0;

            while (rs.next()) {

                if ((rs.getString("username").equals(name)) && rs.getString("password").equals(pass) && rs.getString("utype").equals(type)) {

                    String stp = rs.getString("utype");

                    if (stp.equals("admin")) {

                        x = 1;

                        break;

                    } else if (stp.equals("menager")) {

                        x = 2;

                        break;

                    } else {
                        x = 3;
                        break;
                    }

                }

            }

            if (x == 2) {

                response.sendRedirect("menager.jsp");

            } else if (x == 1) {

                response.sendRedirect("admin.jsp");

            } else if (x == 3) {

                response.sendRedirect("index.jsp");

            } else {

                request.setAttribute("msg", "Netacan username ili password!!");
                        request.getRequestDispatcher("index.jsp").forward(request, response);

    %>

    <jsp:include page="index.html" />

    <%}

        } catch (Exception e) {

            out.println(e);

        }

        session.setAttribute("username", name);

    %>
</html>
