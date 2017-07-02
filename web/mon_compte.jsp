<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.Calendar"%>
<!--henry 引入產品類-->
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<!--henry 引入產品控制類-->
<%@page import="dao.ArticleDao"%>
<!--henry 引入header.jsp-->
<%@include file="header.jsp" %>

<%
Client client = (Client)request.getSession().getAttribute("client");
//henry 判斷是否登入 沒有登入則跳轉到前台首頁  並提示會員需登入才可以查看本頁面
if(client == null)
{
    response.sendRedirect("index.jsp?con");
    return ;
}

%>
    <div class="RightSide" >
    
        <div class="bredCrum">
            <h4><a href="index.html">123首頁123456</a>   >>   <a href="#" class="select">我的帳戶 </a> </h4>
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
                    <input type="submit" value="變更">
                </td>
                <td>
                    <input type="reset" value="取消">
                </td>
            </tr>
            
    </table>
    </center>
    </form>
    
</div>
<!--henry 引入 footer.jsp-->
<%@include file="footer.jsp" %>