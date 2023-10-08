<%-- 
    Document   : admincontroller
    Created on : Sep 17, 2023, 11:45:12 AM
    Author     : Tanmay
--%>

<%@page import="dbpack.dbManager"%>
<%
    if (request.getParameter("page").equals("changepassword")) {
        String userid = session.getAttribute("adminid").toString();
        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");

        dbManager dm = new dbManager();
        String query = "update login set password='" + newpassword + "' where userid='" + userid + "' and password='" + oldpassword + "'";
        if (dm.insertUpdateDelete(query)) {
            out.print("<script>alert('Password changed');window.location.href ('logout.jsp')</script>");
        } else {
            out.print("<script>alert('Old password not matched');window.location.href('changepassword.jsp')</script>");
        }
    }
    
    else if(request.getParameter("page").equals("news"))
    {
    String news = request.getParameter("newstext");
    dbManager dm = new dbManager();
    String query = "insert into news(newstext,posteddate) values ('"+news+"',curdate())";
    if(dm.insertUpdateDelete(query))
    {
    out.print("<script>alert('News saved successfully!');window.location.assign('news.jsp');</script>");
    }
    else
    {
    out.print("<script>alert('News can not be saved!');window.location.assign('news.jsp');</script>");
    }
    }
    
    else if(request.getParameter("page").equals("book"))
    {
    String regid = request.getParameter("regid");
    String name = request.getParameter("name");
    String village = request.getParameter("village");
    String post = request.getParameter("post");
    String district = request.getParameter("district");
    String state = request.getParameter("state");
    String pincode = request.getParameter("pincode");
    String contactno = request.getParameter("contactno");
    String aadharno = request.getParameter("aadharno");
    int noofpacket = Integer.parseInt(request.getParameter("noofpacket"));
    int duration = Integer.parseInt(request.getParameter("duration"));
    int rate = Integer.parseInt(request.getParameter("rate"));
    int advanceamt = Integer.parseInt(request.getParameter("advanceamt"));
    int totalamt = noofpacket*duration*rate;
    int restamt = totalamt-advanceamt;
    
    dbManager dm = new dbManager();
    String query = "insert into booking values('"+regid+"','"+name+"','"+village+"','"+post+"','"+district+"','"+state+"','"+pincode+"','"+contactno+"','"+aadharno+"','"+noofpacket+"','"+duration+"','"+rate+"','"+totalamt+"','"+advanceamt+"','"+restamt+"',curdate())";
    if(dm.insertUpdateDelete(query))
    {
    out.print("<script>alert('Booking successful!');window.location.assign('booking.jsp');</script>");
    }
    else{
    out.print("<script>alert('Booking unsuccessful!');window.location.assign('booking.jsp');</script>");
    }
    }
    else if(request.getParameter("page").equals("payement"))
    {
    String aadharno = request.getParameter("aadharno");
    int restamt = Integer.parseInt(request.getParameter("restamt"));
    int payamt = Integer.parseInt(request.getParameter("payamt"));
    restamt = restamt-payamt;
    
    dbManager dm = new dbManager();
    String query = "update booking set restamt='"+restamt+"' where aadharno='"+aadharno+"'";
    if(dm.insertUpdateDelete(query))
    {
    out.print("<script>alert('Payement Successfull');window.location.assign('closing.jsp')</script>");
    }
    else
    {
    out.print("<script>alert('Payement not Successfull');window.location.assign('closing.jsp')</script>");
    }
    }
%>
