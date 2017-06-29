<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.Calendar"%>
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<%@page import="dao.ArticleDao"%>
<%@include file="header.jsp" %>

<%
Client client = (Client)request.getSession().getAttribute("client");

if(client == null)
{
    response.sendRedirect("index.jsp?con");
    return ;
}

%>
    <div class="RightSide" >
    
        <div class="bredCrum">
            <h4><a href="index.html">首頁</a>   >>   <a href="#" class="select">我的帳戶 </a> </h4>
        </div>
        <form action="CompteServlet" method="GET" >
            
        <center>
        <table style="padding-top: 100px;">
            <tr>
                <td>帳號 : </td>
                <td><input value="<%= client.getLogin()%>"  disabled="true" style="background-color: #E6E6E6" > </td>
                
                <td>
                    <input type="hidden" name="login" value="<%= client.getLogin()%>" >
                </td>
            </tr>

            <tr>
                <td>姓氏 : </td>
                <td><input name="nom" value="<%= client.getNom() %>" > </td>
            </tr>
            
            <tr>
                <td>名字 : </td>
                <td><input name="prenom" value="<%= client.getPrenom()%>"></td>
            </tr>
            
            <tr>
                <td>密碼 : </td>
                <td><input type="password" name="mdp" value="<%= client.getMdp() %>"></td>
            </tr>
            
            <tr>
                <td>
                    <input type="submit" value="Modifier">
                </td>
                <td>
                    <input type="reset" value="Annuler">
                </td>
            </tr>
            
    </table>
    </center>
    </form>
    
</div>

<%@include file="footer.jsp" %>