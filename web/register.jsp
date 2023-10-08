<%-- 
    Document   : register
    Created on : Sep 13, 2023, 10:57:17 AM
    Author     : Tanmay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="js/bootstrap.bundle.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <div class="row">
            <jsp:include page="header.jsp"/>
            <div class="shadow p-3 mb-5 bg-body-tertiary rounded">
                <div class="row">
                    <div class="col-sm-6" style="min-height: 400px;">
                        <img src="images/register1.gif" height="100%" width="100%" />
                    </div>
                    <div class="col-sm-6" style="min-height: 400px;background-color: white;">
                        <h2 style="text-align: center; color:blue;margin-top: 10px;">Farmer Registration</h2>
                        <form class="form-group" method="post" action="controller.jsp">
                            <input type="hidden" name="page" value="registration"/>
                            <table class="table" style="width:80%;margin:auto;">
                                <tr>
                                    <td>
                                        Enter Name : 
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="name" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Enter Father's Name : 
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="fname" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Enter Mother's Name : 
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="mname" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Gender : 
                                    </td>
                                    <td>
                                        <input type="radio" class="form-check-control" name="gender" value="male" />Male
                                        <input type="radio" class="form-check-control" name="gender" value="female" />Female
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Address :
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="village" placeholder="Village" style="margin-bottom: 5px;"/>
                                        <input type="text" class="form-control" name="post" placeholder="Post" style="margin-bottom: 5px;"/>
                                        <input type="text" class="form-control" name="district" placeholder="District" style="margin-bottom: 5px;"/>
                                        <input type="text" class="form-control" name="state" placeholder="State" style="margin-bottom: 5px;"/>
                                        <input type="number" class="form-control" name="pin" placeholder="PIN code" style="margin-bottom: 5px;"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter mobile no : </td>
                                    <td>
                                        <input type="number" class="form-control" name="contactno"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter aadhar no : </td>
                                    <td>
                                        <input type="number" class="form-control" name="aadharno"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter PAN no : </td>
                                    <td>
                                        <input type="text" class="form-control" name="panno"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <button type="submit" class="btn btn-success">Submit</button>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
