<%@ page import="com.galphi.account.AccountService" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert</title>
</head>
<body>

<%
    request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="vo" class="com.galphi.account.AccountVO">
    <jsp:setProperty property="*" name="vo"/>
</jsp:useBean>

<%
    AccountService.getInstance().insert(vo);
    response.getWriter().println("<script>" +
            "confirm('회원 가입이 완료되었습니다'); " +
            "location.href='login.jsp'" +
            "</script>");
%>

</body>
</html>
