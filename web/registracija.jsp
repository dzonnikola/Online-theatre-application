<%-- 
    Document   : registracija
    Created on : Sep 6, 2020, 10:49:07 PM
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="proba">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <title>Registracija korisnika</title>
        <style>
             .form-group{
                opacity: 0.91;
                box-shadow: -1px 19px 41px -1px black;
            }
            body{
                background-image: url('img/image3.jpg');
                margin-top: 170px;
                height:  100%;
                width:100%;
                background-position: center;
                background-size: cover;
                position: relative;
            }
            .form-group{
                background-color:white;
                width: 500px;
                margin: auto;
                border-radius:30px;
                padding: 20px;
            }
            .form-control{
                margin: 5px 10px;
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
        </style>
    </head>
    <body>


        <div class="form-group">
            <center>
                <form id="forma" action="Registracija" method="post">
                    <h2>Registracija</h2><br>
                    <table>
                        <tr>
                            <td>Ime</td>
                            <td><input class="form-control" type="text" name="ime" size="30"</td>
                        </tr>
                        <tr>
                            <td>Prezime</td>
                            <td><input class="form-control" type="text" name="prezime" size="30"</td>
                        </tr>
                        <tr>
                            <td>Username </td>
                            <td><input class="form-control" type="text" name="korisnicko" size="30"</td>
                        </tr>
                        <tr>
                            <td>Sifra</td>
                            <td><input class="form-control" type="password" name="sifra" size="30"</td>
                        </tr>
                        <tr>
                            <td>Potvrda</td>
                            <td><input class="form-control" type="password" name="potvrda" size="30"</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input class="form-control" type="text" name="email" size="30"</td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center"><br>
                                <input class="btn btn-info" type="submit" value="Unesi"</td>
                        <a class="btn btn-danger" href="login.jsp">Nazad</a>
                        </tr>
                    </table>
                    <% String msg = (String) request.getAttribute("msg");
                        if (msg != null) {%>
                    <h5><%= msg%> </h5>    
                    <%}
                    %>
                </form>
            </center>
        </div>        
    </body>
</html>
