<%-- 
    Document   : login
    Created on : Sep 7, 2020, 2:22:28 PM
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="proba">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="style/style.css">
        <title>Log in - korisnicka prijava</title>
    </head>
    <style>
        .form-group{
                opacity: 0.91;
                box-shadow: -1px 19px 41px -1px black;
            }
        .form-group{
            padding: 40px;
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

        .btn-warning{
            width: 230px;
            padding: 10px;
            color: white;
            margin-top: -15px;

        }

        h2{
            font-weight: bold;

        }
         h5{

                color: red;
            }
    </style>

    <body>

        <div class="container">
            <center>
                <div style="margin-top: 120px;" class="form-group">
                    <form action="checkKlijent.jsp" method="POST">
                        <h2 style="color:black;">OnlineTeatar.rs<br>Prijavi se</h2>
                        <br>
                        <table>
                            <tr>
                                <td>Username: </td>
                                <td><input style="" class="form-control" type="text" name="uname"> </td>
                            </tr>
                            <tr>
                                <td>Password: </td>
                                <td><input class="form-control" type="password" name="upass"></td>
                            </tr>
                            <tr>
                                <td colspan="3" align='center'><br>
                                    <input class="btn btn-info" type="submit" value="Prijavi se">
                                    <a class="btn btn-danger" href="registracija.jsp">Registracija</a>
                                </td>
                            </tr>
                        </table>
                    </form>  
                    <br>
                    <a class="btn btn-warning" href="index.jsp">Admin / manager prijava</a><br>
                      <% String msg = (String) request.getAttribute("msg"); %>
                        <%
                    if (msg != null) {%>
                        <br><h5><%= msg%> </h5>    
                        <%} else { %>

                        <%}
                        %>
            </center>           
        </div>          
    </div>
</body>
</html>
