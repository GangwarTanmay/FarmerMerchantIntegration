<%@page import="dbpack.dbManager"%>
<%@page import="java.sql.ResultSet"%>
<div class="row text-light" style="background-color: #73bf44;width:100%;">
    <div class="col-sm-4">Helpline no : +91-7307770481</div>
    <div class="col-sm-4">Mail us : tanmaygangwar7@gmail.com</div>
    <div class="col-sm-4">Follow us  : 
        <ul style="list-style-type: none; display:inline;">
            <li style="display:inline; margin:0px 4px 0px 4px;"><a href="https://www.facebook.com/tanmay.gangwar.716" style="text-decoration: none;"><i class="fa-brands fa-facebook-f fa-xs" style="color: white;"></i></li>
            <li style="display:inline; margin:0px 4px 0px 4px;"><a href="https://www.instagram.com/gangwar__tanmay/?fbclid=IwAR2keuRqo8g71hXYJA5tgm24YS-8Fx4hwBnIhy-GMKhvJmFpd-549OyD2tM" style="text-decoration: none;"><i class="fa-brands fa-instagram fa-xs" style="color: white;"></i></li>
            <li style="display:inline; margin:0px 4px 0px 4px;"><a href="https://www.linkedin.com/in/tanmay-gangwar-27a123245?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Bzs7Bq39mSnCZCjYh0wm%2FIA%3D%3D" style="text-decoration: none;"><i class="fa-brands fa-linkedin-in fa-xs" style="color: white;"></i></li>
        </ul>
    </div>
</div>

    <nav class="navbar navbar-expand-lg navbar-light" style="width:100%;background-color: black;">
        <div class="container-fluid" style="width:100%;">
            <a class="navbar-brand" href="index.jsp"><h2 style="color:#39a2db;font-family: 'Russo One'; margin-left:5px;">Farmer Merchant Integration</h2></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="index.jsp" style="color:white;">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp" style="color:white;">Register</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"  style="color:white;">
                            More
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="contactus.jsp">Contact us</a></li>
                            <li><a class="dropdown-item" href="login.jsp">Admin login</a></li>
                            <li><a class="dropdown-item" href="index.jsp#about">About us</a></li>
                        </ul>
                    </li>
                                          
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-light" type="submit" style="margin-right: 10px;">Search</button>
                </form>
            </div>
        </div>
    </nav>

<div style="background-color: #73bf44; height: 2px;width:100%;"></div>
<div class="row" style="color:#73bf44;background-color: black;">
    <marquee onmouseover="stop()" onmouseout="start()">
    <ul style="list-style-type: none;">
        <%
            dbManager dm = new dbManager();
            ResultSet rs = dm.select("select * from news");
            while(rs.next())
            {
            %>
            <li style="display:inline;padding:20px;font-size:25px;font-style: bold;">
            News : <%=rs.getString("newstext")%>
            </li>
            <%
            }
            %>
    </ul>
    </marquee>
</div>
