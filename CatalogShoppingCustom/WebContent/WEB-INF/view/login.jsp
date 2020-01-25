<%@page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<logic:present name="login">
    <bean:write name="login" property="name" />さん、ようこそ。買い物を楽しんでください
</logic:present>

<logic:notPresent name="login">
    ゲストさん、ようこそ。<html:link action="/members/Login" >ここから</html:link>ログインしてください。
</logic:notPresent>