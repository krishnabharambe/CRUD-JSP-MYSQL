<%@ page import="wap2.db" %>
<%
    boolean i = db.setdata("insert into pmanager(name,contact,pincode,dob,cname)"
            + "values('" + request.getParameter("name") + "','" + request.getParameter("contact") + "','" + request.getParameter("pincode") + "','" + request.getParameter("dob") + "','" + request.getParameter("cname") + "')");
    if (i) {
        response.sendRedirect("success.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>