<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.Calendar"%>
<!--henry 引入產品類-->
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<!--henry 引入產品控制類-->
<%@page import="dao.ArticleDao"%>
<!--henry 引入header.jsp-->
<%@include file="headerTop.jsp" %>
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
  
        
<script>
$(document).ready(function(){
    $("#form1").submit(function(){ 
    	var result = true;
        var N = $("input.chk2").length ; 
        $("#form1").children().find("b").remove();
        for(var i =0;i<N;i++){
           if($("input.chk2").eq(i).val().trim() == "")
           {
            $("input.chk2").eq(i).after("<b style='color:red'>X</b>");
            result = false;
           }
         }
       return result;
    })
 })
</script>
       <!--orcarex 改寫table成ul li-->
<!--       <form action="CompteServlet" method="GET" id="form" onsubmit="return chkform();">-->
<form action="CompteServlet" method="GET" id="form1" >
        <!--vince 假如密碼確認部分有誤會從CompteServlet丟回update=mdpfail-->
        <%if(request.getParameter("update")!=null&&request.getParameter("update").equals("mdpfail"))
        {%>
        <p>密碼或密碼確認輸入錯誤!!!</p>
        <%}%>
        <center>
            
        <div >
            
            <div class="rightDiv"style="width: 200px">
                <ul  class="ul">
                    <li><input  class="form-control chk2" name="nom" id="nom" placeholder="姓氏"  autofocus /></</li>
                    <li><input  class="form-control chk2" name="prenom" id="prenom" placeholder="名字" /> </li>
                    <li><input  class="form-control chk2" type="text" name="phone_number" placeholder="電話" /></li>
                    <li><input  class="form-control chk2" type="text" name="address" placeholder="地址" /></li>
                    <li><input  class="form-control chk2" type="text" name="login" placeholder="帳號" /></li>
                    <li><input  class="form-control chk2" type="password" name="mdp"placeholder="密碼"  /></li>
                    <li><input class="form-control chk2" type="password" name="checkmdp" placeholder="密碼確認" /></li>
                </ul>
                <button class="btn btn-lg btn-info btn-block" id="send" type="submit" >確認</button>
                <button class="btn btn-lg btn-warning btn-block" type="reset" >取消</button>
            </div>            
        </div>
    </center>
    </form>
    
</div>
</body>

<!--henry 引入 footer.jsp-->
<%@include file="footer.jsp" %>
<%@include file="FooterBottom.jsp" %>
