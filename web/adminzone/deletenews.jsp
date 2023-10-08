<%@page import="dbpack.dbManager"%>
<%
    String id = request.getParameter("id");
    dbManager dm = new dbManager();
    String query = "delete from news where id='"+id+"'";
    if(dm.insertUpdateDelete(query))
    {
    out.println("<script>alert('News deleted successfully');window.location.assign('news.jsp');</script>");
    }
    else
    {
    out.println("<script>alert('News deletion unsuccessfully');window.location.assign('news.jsp');</script>");
    }
    %>