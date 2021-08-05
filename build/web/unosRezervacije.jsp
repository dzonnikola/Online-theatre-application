<%-- 
    Document   : unosRezervacije
    Created on : Sep 7, 2020, 12:10:53 PM
    Author     : Korisnik
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String str = (String) session.getAttribute("username");
%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="style/style.css">
        <title>Unos rezervacije</title>
</head>
<style>
    .form-group{
       background-color: #ffeaa7;
       opacity: 0.9;
       font-family: 'Montserrat', sans-serif;
    }

    .form-control{
        margin: 5px 15px;
    }
    
    h2{
        color: black;
    }

    .btn{
        width: 110px;
        text-align: center;
        padding: 10px;
        margin: 5px;
    }

    .btn:hover{
        color: black;
    }

</style>
<body>

    <div style="margin-top:120px;" class="form-group">
        <center>
            <form action="Rezervacija" method="post">
                <h2>Online rezervacije</h2> <br>
                <table>
                    <tr>
                        <td>Broj rezervacije</td>
                        <td><input class="form-control" type="text" name="id"</td>
                    </tr>
                    <tr>
                        <td>Korisnik ID</td>
                        <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        String url = "jdbc:mysql://localhost:3306/bioskop";
                                        String user = "root";
                                        String pass = "";
                                        Connection con = DriverManager.getConnection(url, user, pass);
                                        String upit = "select * from korisnik where username = '"+ str + "'";
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery(upit);
                                        while (rs.next()) {
                        %>
                        <td><input class="form-control" type="text" name="kor" readonly value="<%=rs.getInt("korisnikid")%>"</td>
                        <%
                                        }

                                    } catch (Exception e) {
                                        out.println("Error: " + e.getMessage());
                                    }
                        %>
                    </tr>
                    <tr>
                        <td>Projekcija</td>
                        <td>
                            <select class="form-control" name="pro">
                                <option value="-1">Izaberi projekciju</option>
                                <%
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        String url = "jdbc:mysql://localhost:3306/bioskop";
                                        String user = "root";
                                        String pass = "";
                                        Connection con = DriverManager.getConnection(url, user, pass);
                                        String upit = "select * from projekcija";
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery(upit);
                                        while (rs.next()) {
                                %>
                                <option value="<%=rs.getInt("projekcijaID")%>"><%=rs.getString("projekcijaID")%></option>
                                <%
                                        }

                                    } catch (Exception e) {
                                        out.println("Error: " + e.getMessage());
                                    }
                                %>
                            </select>               
                        </td>
                    </tr>
                    <tr>
                        <td>Sediste</td>
                        <td>
                            <input type="checkbox" name="sediste" value="a1">A1
                            <input type="checkbox" name="sediste" value="a2">A2
                            <input type="checkbox" name="sediste" value="a3">A3
                            <input type="checkbox" name="sediste" value="a4">A4
                            <input type="checkbox" name="sediste" value="a5">A5
                            <input type="checkbox" name="sediste" value="a6">A6
                            <input type="checkbox" name="sediste" value="a7">A7
                            <input type="checkbox" name="sediste" value="a8">A8
                            <br>
                            <input type="checkbox" name="sediste" value="b1">B1
                            <input type="checkbox" name="sediste" value="b2">B2
                            <input type="checkbox" name="sediste" value="b3">B3
                            <input type="checkbox" name="sediste" value="b4">B4
                            <input type="checkbox" name="sediste" value="b5">B5
                            <input type="checkbox" name="sediste" value="b6">B6
                            <input type="checkbox" name="sediste" value="b7">B7
                            <input type="checkbox" name="sediste" value="b8">B8
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align='center'><br>
                            <input class="btn btn-info" type="submit" value="Rezervisi">
                            <a class="btn btn-danger" href="client.jsp">Nazad</a>
                        </td>
                    </tr>
                </table>
                <% String msg = (String) request.getAttribute("msg"); %>
                <%
                            if (msg != null) {%>
                <h5><%= msg%> </h5>    
                <%} else { %>

                <%}
                %>
            </form>
        </center>
    </div>  
</body>
</html>
