<%-- 
    Document   : controller
    Created on : Sep 12, 2023, 10:42:10 AM
    Author     : Tanmay
--%>
<%@page import="dbpack.dbManager"
        import="java.sql.ResultSet"
        import="Connect.SmsSender"%>
<% 
if(request.getParameter("page").equals("contactus"))
{
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String address = request.getParameter("address");
String contactno = request.getParameter("contactno");
String email = request.getParameter("email");
String enquirytext = request.getParameter("enquirytext");

dbManager dm = new dbManager();
String query = "insert into enquiry(name,gender,address,contactno,email,enquirytext,enquirydate)values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+email+"','"+enquirytext+"',curdate())";
boolean res=dm.insertUpdateDelete(query);

if(res==true)
{
SmsSender ss = new SmsSender();
ss.sendSms(contactno);
out.print("<script>alert('Enquiry Submitted');window.location.assign('contactus.jsp');</script>");
}
else{
out.print("<script>alert('Enquiry not Submitted');window.location.assign('contactus.jsp');</script>");
}
}

else if(request.getParameter("page").equals("registration"))
{
String name = request.getParameter("name");
String fname = request.getParameter("fname");
String mname = request.getParameter("mname");
String gender = request.getParameter("gender");
String village = request.getParameter("village");
String post = request.getParameter("post");
String district = request.getParameter("district");
String state  = request.getParameter("state");
String pincode = request.getParameter("pin");
String contactno = request.getParameter("contactno");
String aadharno = request.getParameter("aadharno");
String panno = request.getParameter("panno");
String regid = "BCS-"+aadharno;

dbManager dm = new dbManager();
String query = "insert into farmerinfo values('"+regid+"','"+name+"','"+fname+"','"+mname+"','"+gender+"','"+village+"','"+post+"','"+district+"','"+state+"','"+pincode+"','"+contactno+"','"+aadharno+"','"+panno+"',curdate())";
boolean res = dm.insertUpdateDelete(query);

if(res==true)
{
out.print("<script>alert('Registration Successfull!!');window.location.href('register.jsp');</script>");
}
else{
out.print("<script>alert('Registration not Successfull!!');window.location.href('register.jsp');</script>");
}
}

else if(request.getParameter("page").equals("login"))
{
String userid = request.getParameter("userid");
String password = request.getParameter("password");
dbManager obj = new  dbManager();
String query = "select * from login where userid='"+userid+"'and password='"+password+"'";
ResultSet  rs = obj.select(query);
if(rs.next())
{
session.setAttribute("adminid",userid);
response.sendRedirect("adminzone/adminhome.jsp");
}
else
{
out.print("<script>alert('Invalid User');window.location.assign('login.jsp')</script>");
}
}
%>