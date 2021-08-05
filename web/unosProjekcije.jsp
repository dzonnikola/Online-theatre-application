<%-- 
    Document   : unosProjekcije
    Created on : Sep 7, 2020, 11:39:25 AM
    Author     : Korisnik
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
        <title>Unos nove projekcije - Manager Dashboard</title>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <a style="color:white;" class="navbar-brand" href="admin.jsp">Dobrodosli - Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <span class="navbar-text" style="color: white;">
                  Ulogovani menadzer : <% out.print(str);%>                 
              </span>
            </div>
        </nav>
    
    <style>
        .form-group{
                opacity: 0.91;
                box-shadow: -1px 19px 41px -1px black;
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

        h5{

            color: red;
        }
        #forma{
            padding: 30px;
            
        }
        h2{
            font-weight: bold;
            color: black;
        }
        #forma{
            padding: 30px;
        }
        .btn-warning{
            color: white;
        }

        .form-control{
            margin: 5px 10px;
        }
    </style>
    </head>
    <body>
           
            <div style="margin-top:120px;" class="form-group">
                <center>
                    <form id="forma" action="Projekcija" method="post">
                        <h2 style="color:black;" >Unos nove projekcije</h2><br>
                        <table>
                            <tr>
                                <td>Broj projekcije</td>
                                <td><input class="form-control" type="text" name="id"></td>
                            </tr>
                            <tr>
                                <td>Naziv</td>
                                <td><input class="form-control" type="text" name="naziv"></td>
                            </tr>
                            <tr>
                                <td>Bioskop</td>
                                <td>
                                    <select class="form-control" name="bio">
                                        <option value="-1">Izaberi bioskop</option>
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                String url = "jdbc:mysql://localhost:3306/bioskop";
                                                String user = "root";
                                                String pass = "";
                                                Connection con = DriverManager.getConnection(url, user, pass);
                                                String upit = "select * from bioskop";
                                                Statement st = con.createStatement();
                                                ResultSet rs = st.executeQuery(upit);
                                                while (rs.next()) {
                                        %>
                                        <option value="<%=rs.getInt("bioskopID")%>"><%=rs.getString("naziv")%></option>
                                        <%
                                                }

                                            } catch (Exception e) {
                                                out.println("Error: " + e.getMessage());
                                            }
                                        %>
                                    </select>               
                            </tr>
                            <tr>
                                <td>Film</td>
                                <td>
                                    <select class="form-control" name="film">
                                        <option value="-1">Izaberi film</option>
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                String url = "jdbc:mysql://localhost:3306/bioskop";
                                                String user = "root";
                                                String pass = "";
                                                Connection con = DriverManager.getConnection(url, user, pass);
                                                String upit = "select * from film";
                                                Statement st = con.createStatement();
                                                ResultSet rs = st.executeQuery(upit);
                                                while (rs.next()) {
                                        %>
                                        <option value="<%=rs.getInt("filmID")%>"><%=rs.getString("naziv")%></option>
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
                                <td>Sala</td>
                                <td>
                                    <select class="form-control" name="sala">
                                        <option value="-1">Izaberi salu</option>
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                String url = "jdbc:mysql://localhost:3306/bioskop";
                                                String user = "root";
                                                String pass = "";
                                                Connection con = DriverManager.getConnection(url, user, pass);
                                                String upit = "select * from sala";
                                                Statement st = con.createStatement();
                                                ResultSet rs = st.executeQuery(upit);
                                                while (rs.next()) {
                                        %>
                                        <option value="<%=rs.getInt("salaID")%>"><%=rs.getString("naziv")%></option>
                                        <%
                                                }

                                            } catch (Exception e) {
                                                out.println("Error: " + e.getMessage());
                                            }
                                        %>
                                    </select>     
                                    </td>
                            </tr>
                            <td colspan="2" align="center"><br>
                        <input class="btn btn-info" type="submit" value="Unesi"</td>
                    <a class="btn btn-warning" href="menager.jsp">Nazad</a>
                    </tr>
                </table>

                <% String msg = (String) request.getAttribute("msg"); %>
                <%
                    if (msg != null) {%>
                <br><h5><%= msg%></h5>
                <%} else { %>

                <%}
                %>
                    </form>
                </center>
            </div>  
    </body>
</html>
