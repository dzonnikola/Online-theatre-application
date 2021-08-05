<%-- 
    Document   : promenaSifre
    Created on : Sep 7, 2020, 5:47:11 PM
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String str = (String) session.getAttribute("username");
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <title>Promena sifre</title>
        <style>
            .form-group{
                opacity: 0.91;
                box-shadow: -1px 19px 41px -1px black;
            }
            body{
                background-image: url('img/image3.jpg');
                height:  720px;
                width:100%;
                background-position: center;
                background-size: cover;
                position: relative;
            }
            .form-group{
                background-color:white;
                width: 450px;
                margin: auto;
                border-radius:30px;
                padding: 20px;
            }

            .form-control{
                margin: 5px 15px;
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

            #fomra{
                padding: 30px;
               
            }
            h2{
                font-weight: bold;
                color: black;
            }
            h5{

                color: red;
            }
            
           
        </style>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a style="color:white;" class="navbar-brand" href="client.jsp">Dobrodosli - Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <span class="navbar-text" style="color: white;">
                Ulogovani korisnik : <% out.print(str);%>                 
            </span>
        </div>
    </nav>
</head>
<body>
<center>


    <div style="margin-top: 170px;" class="form-group">
        <center>
            

            <form id="fomra" action="PromenaSifre" method="post">
                <h2>Promena sifre</h2><br>
                <table>
                    <tr>
                        <td>Username</td>
                        <td><input class="form-control" type="text" name="username" value=""<br></td>
                    </tr>
                    <tr>
                        <td>Stara sifra</td>
                        <td><input class="form-control" type="text" name="stara" value=""<br></td>
                    </tr>
                    <tr>
                        <td>Nova sifra</td>
                        <td><input class="form-control" type="text" name="nova"<br></td>
                    </tr>
                    <tr>
                        <td colspan="3" align='center'><br>
                            <input class="btn btn-info" type="submit" value="Potvrdi">
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
</center>
</body>
</html>
