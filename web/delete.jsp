<%@ page import="wap2.db" %>
<%
    boolean i = db.setdata("Delete from pmanager Where id ='"+request.getParameter("id") +"'");
    if (i) {
        response.sendRedirect("success.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>