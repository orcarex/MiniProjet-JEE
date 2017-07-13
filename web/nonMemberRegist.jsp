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
if (client!=null)
{
response.sendRedirect("index.jsp?con");
return ;
}
//henry 判斷是否登入 沒有登入則跳轉到前台首頁  並提示會員需登入才可以查看本頁面


%>
    <div class="RightSide" >
    
        <div class="bredCrum">
            <p><a href="index.html">首頁</a>   >>   <a href="#" class="select">加入會員 </a> </p>
        </div>
        <form action="CompteServlet" method="GET" >
            
        <center>
        <table style="padding-top: 100px;">
            <tr>
                <td>帳號 : </td>
                <td> <input  type="text" name="login" /> ></td>
            </tr>

            <tr>
                <td>姓氏 : </td>
                <td><input name="nom" /> > </td>
            </tr>
            
            <tr>
                <td>名字 : </td>
                <td><input name="prenom" ></td>
            </tr>
            
            <tr>
                <td>密碼 : </td>
                <td><input type="password" name="mdp" /></td>
            </tr>
            
            <tr>
                <td>
                    <input type="submit" value="確認">
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