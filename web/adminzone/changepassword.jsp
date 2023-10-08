<%-- 
    Document   : adminhome
    Created on : Sep 16, 2023, 9:28:01 PM
    Author     : Tanmay
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password     </title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../js/bootstrap.bundle.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
        <script>
            function validate() {
                var op = document.getElementById("oldpassword");
                var np = document.getElementById("newpassword");
                var cp = document.getElementById("confirmpassword");

                if (op.value == "" || op.value = null)
                {
                alert("Please Enter old password !");
                        op.focus();
                }
                else if (np.value = "" || np.value = null)
                {
                alert("Please Enter new Password !");
                        np.focus();
                }
                else if (cp.value = "" || cp.value = null)
                {
                alert("Please Confirm Password !");
                        cp.focus();
                }
                else{
                document.getElementById("formchangepassword").submit();
                }
            }
        </script>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>

            <div class="shadow p-3 mb-5 bg-body-tertiary rounded" style="margin:2vw 2vw 2vw 2vw;">
                <div class="row">
                    <div class="col-sm-6" style="height: 400px;">
                        <img src="../images/fp.gif" style="width:100%;height:100%" alt="alt"/>
                    </div>
                    <div class="col-sm-6" style="height: 400px;background-color: aliceblue;">
                        <h2 style="text-align: center; color:blue;">Change Password</h2>
                        <form id="formchangepassword" onsubmit="validate();event.preventDefault()" class="form-group" method="post" action="admincontroller.jsp">
                            <input type="hidden" name="page" value="changepassword"/>
                            <table class="table table-bordered" style="width:60%; margin: auto;">
                                <tr>
                                    <td>Enter old password : </td>
                                    <td><input type="password" name="oldpassword" class="form-control" id="oldpassword"/></td>
                                </tr>
                                <tr>
                                    <td>Enter new password : </td>
                                    <td><input type="password" name="newpassword" class="form-control" id="newpassword"/></td>
                                </tr>
                                <tr>
                                    <td>Confirm password : </td>
                                    <td><input type="password" name="confirmpassword" class="form-control" id="confirmnewpassword"/></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><button type="submit" class="btn btn-success">Change</button></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
                <div class="row">
                    <div class="col-sm-4" style="min-height: 200px; background-color: #73bf44; color: white;">
                        <h6 style="margin: 20px auto 10px 30px;">Quick Links</h6>
                        <ul  style="margin: 10px auto 10px 0px; list-style-type: none; ">
                            <li><a style="text-decoration: none; color:white;" href="index.jsp">Home</a></li>
                            <li><a style="text-decoration: none; color:white;" href="#">About</a></li>
                            <li><a style="text-decoration: none; color:white;" href="register.jsp">Register</a></li>
                            <li><a style="text-decoration: none; color:white;" href="contactus.jsp">Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-4" style="min-height: 200px; background-color: #73bf44; color: white;">
                        <div>
                            <h6 style="margin: 20px auto 10px 10px;">Need help ?</h6>
                            <h6 style="margin: 10px auto 10px 10px;">Call us:<br/>+91 7307770481</h6>
                            <h6 style="margin: 10px auto 10px 10px;">General Enquires :<br/>tanmaygangwar7@gmail.com</h6>
                            <h6 style="margin: 40px auto 5px auto;" align="center">All rights reserved ©</h6>

                        </div>
                    </div>
                    <div class="col-sm-4" style="min-height: 200px; background-color: #73bf44; color: white">
                        <div>
                            <h6 style="margin: 20px auto 10px 10px;">Get regular updates of cold storages.</h6>
                            <form class="row g-3">
                                <div class="col" style="margin: 20px auto 10px 10px;">
                                    <input type="email" class="form-control" placeholder="xyz@gmail.com">
                                </div>
                                <div class="col" style="margin: 20px auto 10px 10px;">
                                    <button type="submit" class="btn btn-primary">Send</button>
                                </div>
                            </form>
                            <h6 style="margin: 20px auto 10px 10px;">Connect with us:</h6>
                            <ul style="list-style-type: none; display:inline;">
                                <li style="display:inline; margin:0px 4px 0px 4px;"><i class="fa-brands fa-facebook-f fa-s" style="color: white;"></i></li>
                                <li style="display:inline; margin:0px 4px 0px 4px;"><i class="fa-brands fa-instagram fa-s" style="color: white;"></i></li>
                                <li style="display:inline; margin:0px 4px 0px 4px;"><i class="fa-brands fa-linkedin-in fa-s" style="color: white;"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
<%}%>