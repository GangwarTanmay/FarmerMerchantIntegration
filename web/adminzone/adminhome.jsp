<%-- 
    Document   : adminhome
    Created on : Sep 17, 2023, 10:58:29 PM
    Author     : Tanmay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbpack.dbManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin home
        </title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../js/bootstrap.bundle.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid">
            <!-- header -->
            <jsp:include page="header.jsp"/>
            <div align="center">
                <img src="../images/admin.gif" style="width:12vw; height:12vw;" alt="alt"/>
            </div>
            <div style="height:40vw; margin:3vw auto auto auto;width:80%;">
                <div class="row" style="height:150px;">
                    <div class="col-lg-8 mb-4 order-0">
                        <div class="card">
                            <div class="d-flex align-items-end row">
                                <div class="col-sm-7">
                                    <div class="card-body">
                                        <h5 class="card-title text-primary">Welcome Back Tanmay Gangwar 🎉</h5>
                                        <p class="mb-4">You have got more enquires.Check new enquires in your profile.</p>

                                        <a href="enquiry.jsp" class="btn btn-sm btn-outline-primary">View enquires</a>
                                    </div>
                                </div>
                                <div class="col-sm-5 text-center text-sm-left">
                                    <div class="card-body pb-0 px-0 px-md-4">
                                        <img src="../images/admin.png" height="140" alt="" >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 order-1">
                        <div class="row">
                            <div class="col-lg-6 col-md-12 col-6 mb-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card-title d-flex align-items-start justify-content-between">
                                            <div class="avatar flex-shrink-0">
                                                <img src="../images/files.png" height="50" width="50" alt="chart success" class="rounded">
                                            </div>
                                        </div>
                                        <span class="fw-medium d-block mb-1">Total enquires</span>
                                        <%
                                            dbManager dm = new dbManager();
                                            String query = "select * from enquiry";
                                            int i = 0;
                                            ResultSet rs = dm.select(query);
                                            while (rs.next()) {
                                                i++;
                                            }%>
                                        <h3 class="card-title mb-2"><%=i%></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12 col-6 mb-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card-title d-flex align-items-start justify-content-between">
                                            <div class="avatar flex-shrink-0">
                                                <img src="../images/ru.png" height="40" width="40"  alt="Credit Card" class="rounded">
                                            </div>
                                        </div>
                                        <span class="fw-medium d-block mb-1">Total Registered user</span>
                                        <%
                                            dbManager db = new dbManager();
                                            String query2 = "select * from farmerinfo";
                                            int count = 0;
                                            ResultSet rst = db.select(query2);
                                            while (rst.next()) {
                                                count++;
                                            }%>
                                        <h3 class="card-title text-nowrap mb-1"><%=count %></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->

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
