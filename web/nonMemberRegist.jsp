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
<body>
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
        <%
        request.setCharacterEncoding("UTF-8");//orcarex BODY內設置ENCODING解決jsp:param中文亂碼問題
        %>
        <jsp:include page="bredCrum.jsp" flush="true">
            <jsp:param name="select" value="加入會員" />
        </jsp:include>
       <!--orcarex 改寫table成ul li-->
    <form action="CompteServlet" method="GET" >     
        <center>
        <div style="padding-top: 100px;">
            <div class="rightDiv">
                <ul  class="ul">
                    <li>帳號 : <input type="text" name="login" /></li>
                    <li>姓氏 : <input name="nom" /></</li>
                    <li>名字 : <input name="prenom" ></li>
                    <li>密碼 : <input type="password" name="mdp" /></li>
                </ul>
                <input type="submit" value="確認">
                <input type="reset" value="取消">
            </div>            
        </div>
    </center>
    </form>
    
</div>
</body>
<!--henry 引入 footer.jsp-->
<%@include file="footer.jsp" %>
