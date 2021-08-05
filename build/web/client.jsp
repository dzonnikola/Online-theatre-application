<%-- 
    Document   : client
    Created on : Sep 6, 2020, 9:21:07 PM
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
        <title>Korisnicki nalog</title>
</head>
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
</style>
<body>
    <br>
    <center>
        <div class="row">
            <div class="col-md-6">
                <h3>Dobrodosli <% out.println(str); %> ! </h3> 
                <h4><b>Opcije korisnika:</b></h4><br>

                <a href="unosRezervacije.jsp" class="myButton" style="text-decoration: none">Onlajn rezervacija</a><br>

                <a href="ServletLista?ispis=listaa" class="myButton" style="text-decoration: none">Filmovi</a><br>

                <a href="ServletP?ispis=sale" class="myButton" style="text-decoration: none">Sale</a><br>

                <a href="login.jsp" id="beli" class="myButton1"  style="text-decoration: none">Odjava</a><br>
            </div>
            <div class="col-md-6">

            </div>
        </div>
    </center>
</body>   
</html>
