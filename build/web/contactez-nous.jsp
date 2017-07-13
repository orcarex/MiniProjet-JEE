<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.Calendar"%>
<!--henry 引入商品類-->
<%@page import="entities.Msg"%>
<%@page import="java.util.Vector"%>
<!--henry 引入商品控制類-->
<%@page import="dao.MsgDao"%>
<%@include file="header.jsp" %>
<!--henry 本頁面功能尚未程式化 僅有靜態呈現-->
<div class="RightSide">
    <jsp:include page="bredCrum.jsp" flush="true">
        <jsp:param name="select" value="聯絡我們"/>
    </jsp:include>
   
    
 <%
    //henry 新增產品成功則顯示下方區塊代碼 會以橫幅 綠色 Bar形式顯示
    if(request.getParameter("MsgAddStatus") != null && request.getParameter("MsgAddStatus").equals("success"))
    {
%>
<p class="success_msg">新增留言成功</p>
<%}%>
        
    <form style=" padding: 180px; padding-top:50px;" id="contact_form" action="./AddMsgServlet" method="get">
	<div class="row">
		<label for="name">姓名 :</label><br />
		<input id="name" class="input" name="msgGuestName" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
		<label for="email">電子信箱 : </label><br />
		<input id="email" class="input" name="guestGuestEmail" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
		<label for="message">留言內容 : </label><br />
		<textarea id="message" class="input" name="guestGuestMsgContent" rows="7" cols="30"></textarea><br />
	</div>
	<input id="submit_button" type="submit" value="發送" />
</form>				
        
        
    
    
    
</div>
<!--henry 引入footer頁面-->
<%@include file="footer.jsp" %>