<%-- 
    Document   : validate
    Created on : Sep 20, 2023, 11:09:29 AM
    Author     : Tanmay
    Purpose    : Checking whether farmer is already made booking or not
--%>

<%@page import="dbpack.dbManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    String ano = request.getParameter("ano");
    dbManager db = new dbManager();
    String query = "select * from booking where aadharno='"+ano+"'"; //checking is the given aadhar no is already present in booking table
    ResultSet rs = db.select(query);
    if(rs.next())
    {
    out.print("<script>alert('Booking is already done.');window.location.assign('booking.jsp')</script>");  //if farmer has already made booking then redirect him on previous page
    }
    else{
    session.setAttribute("ano",ano);  //if farmer has not made booking then redirect him on booking form with aadhar no
    response.sendRedirect("book.jsp");
}
%>
