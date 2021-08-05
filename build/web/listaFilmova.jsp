<%-- 
    Document   : listaFilmova
    Created on : Sep 7, 2020, 1:42:56 PM
    Author     : Korisnik
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="bean.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String str = (String) session.getAttribute("username");
%>   
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <title>Lista filmova</title>
        <style>
            body{
                background-image: url('img/movie-list.jpg');
                height:  720px;
                width:100%;
                background-position: center;
                background-size: cover;
                position: relative;
            }
            h1{
                color:white;
            }

            table{
                margin: auto;
                background-color:white;
                font-family: 'Montserrat', sans-serif;
            }
            td, th{
                padding:20px;
                text-align: center;
                border: 1px solid black;
            }
            th{
                background-color: #ffeaa7;
                border: 1px solid black;
            }
            tr:nth-child(odd){
                background-color: #fdcb6e;
            }

            .btn{
                width: 110px;
                text-align: center;
                padding: 5px;
                margin: 10px;
            }

            .btn:hover{
                color: black;
            }
        </style>
</head>
<body>
    <%
        ArrayList<Film> la = (ArrayList<Film>) request.getAttribute("pom");
    %>
    <table style="margin-top: 120px;">
        <tr>
            <th>ID filma</th>
            <th>Godina</th>
            <th>Naziv</th>
            <th>Trajanje</th>
            <th>Opis</th>
        </tr>
        <% for (Film elem : la) {%>
        <tr>
            <td><%= elem.getFilmID()%></td>
            <td><%= elem.getGodina()%></td>
            <td><%= elem.getNaziv()%></td>
            <td><%= elem.getTrajanje()%></td>
            <td><%= elem.getOpis()%></td>
        </tr>
        <% }
        %>
    </table><br>
    <p class="text-center"><a class="btn btn-danger" href="client.jsp">Nazad</a></p>
</body>
</html>
