<%-- 
    Document   : admin
    Created on : Sep 6, 2020, 6:22:50 PM
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String str = (String) session.getAttribute("username");
%> 

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="style/style.css">
        <title>Admin Page</title>

        <style>
    .myButton {
        width: 350px;  
        text-align: center;
        box-shadow: -1px 19px 41px -1px #000000;
        background-color: #fdcb6e;
        display:inline-block;
        cursor:pointer;
        color:black;
        font-family:'Montserrat', sans-serif;
        font-size:20px;
        font-weight:bold;
        padding:15px 70px;
        text-decoration:none;
        margin: 10px;
        opacity: 0.94;
    }
    .myButton:hover {
        background-color:#ffeaa7;
        color: black;
        font-weight: bold;
    }
    .myButton:active {
        position:relative;
        top:1px;
    }
    .myButton1 {
        width: 350px;
        box-shadow: -1px 19px 41px -1px #000000;
        background-color: #ff7675;
        display:inline-block;
        cursor:pointer;
        color:black;
        font-family:'Montserrat', sans-serif;
        font-size:20px;
        font-weight:bold;
        padding:15px 70px;
        text-decoration:none;
        opacity: 0.95;
        margin: 10px;
    }
    .myButton1:hover {
        background-color:#ff7675;
        color: black;
        font-weight: bold;
    }
    .myButton1:active {
        position:relative;
        top:1px;
    }
            h2{
                font-size:40px;
                text-shadow:-4px 4px 3px #000000;
            }
        </style>
    </head>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a style="color:white;" class="navbar-brand" href="#">Dobrodosli - Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <span class="navbar-text" style="color: white;">
                Ulogovani admin : <% out.print(str);%>                 
            </span>
        </div>
    </nav>
    <center>
        <body>
            <br>
            <div class="containter">
                <h2><b>Opcije:</b></h2><br>

                <a class="myButton" href="unosFilmaP.jsp" style="text-decoration: none">Unos novog filma</a><br>

                <a class="myButton" href="unosBioskopa.jsp" style="text-decoration: none">Unos novog bioskopa</a><br>


                <a class="myButton1" href="index.jsp" style="text-decoration: none">Odjava</a><br>

            </div>
        </body>      
    </center>


</html>
