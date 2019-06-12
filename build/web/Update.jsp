<%@ page import="wap2.db" %>
<%
    boolean i = db.setdata("Update pmanager set name='" + request.getParameter("name") + "',contact='" + request.getParameter("contact") + "',pincode='" + request.getParameter("pincode") + "',dob='" + request.getParameter("dob") + "',cname='" + request.getParameter("cname") + "' Where id ='"+request.getParameter("id") +"'");
    if (i) {
        response.sendRedirect("success.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>