
<%-- 
    Document   : index
    Created on : Sep 6, 2020, 11:39:34 PM
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="p">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="style/style.css">
        <title>Log in - zaposleni korisnik</title>
    </head>
    <style>
        .form-group{
                opacity: 0.91;
                box-shadow: -1px 19px 41px -1px black;
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

        #info{
            margin-top: 10px;
        }

        .btn-warning{            
            color: white;          
        }

        .btn:hover{
            color: black;
        }

        #btn{
            margin-top: 10px;
        }
        h2{
            font-weight: bold;
            color: black;
        }

        #forma{
            padding: 30px;
        }
        h5{
            color:red;
        }
        
    </style>
    <body>
        <div class="container">
            <div style="margin-top: 120px;" class="form-group">
                <center>
                    <form id="forma" action="checklogin.jsp" method="post" >
                        <h2>Prijava zaposleni</h2> <br>

                        <table>
                            <tr>
                                <td>Username:</td>
                                <td><input type="text" class="form-control" name="uname"></td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td><input type="password" class="form-control" name="upass"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align='center'>
                                    <input type="radio" name="type" value="admin" checked>Admin &nbsp;                       
                                    <input type="radio" name="type" value="menager">Menager &nbsp;
                                    
                                    
                                </td>
                            </tr>
                            <tr>
                                <td  colspan="3" align='center'>
                                    <input id="btn" class="btn btn-info" type="submit" value="Prijavi se">
                                    <input id="btn" class="btn btn-warning" type="reset" value="Reset">
                                    
                                    
                                </td>
                            </tr>
                        </table>  
                        <p><a href="login.jsp" class="btn btn-info" id="info">Nazad</a></p>

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
        </div> 
    </body>
</html>
