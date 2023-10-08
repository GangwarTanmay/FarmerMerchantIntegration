<%-- 
    Document   : login
    Created on : Sep 14, 2023, 10:24:44 AM
    Author     : Tanmay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="js/bootstrap.bundle.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Login</title>
    </head>
    <body>
        <div class="row">
            <jsp:include page="header.jsp" />
            <div class="shadow p-3 mb-5 bg-body-tertiary rounded">
                <div class="row">
                    <div class="col-sm-6" style="min-height: 600px;">
                        <img src="images/login.gif" width="100%" height="100%" alt="alt"/>
                    </div>
                    <div class="col-sm-6" style="min-height: 600px;background-color: white;" align="center"> 
                        <img src="images/man.webp" alt="alt" height="150vw;" width="150vw"/>
                        <h2 style="color:blue;text-align: center;margin-top: 10px;">Admin Login</h2>
                        <form action="controller.jsp" method="post">
                            <input type="hidden" name="page" value="login"/>
                            <table class="table" style="width: 80%;margin: auto;">
                                <tr>
                                    <td>
                                        Enter User ID : 
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="userid"/> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Enter Password : 
                                    </td>
                                    <td>
                                        <input type="password" class="form-control" name="password"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <button type="submit" class="btn btn-success">Login</button>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>

            <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>