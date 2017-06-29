<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.Calendar"%>
<!--henry 引入商品類-->
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<!--henry 引入商品控制類-->
<%@page import="dao.ArticleDao"%>
<%@include file="header.jsp" %>

<!--henry 本頁面功能尚未程式化 僅有靜態呈現-->
<div class="RightSide">
    <div class="bredCrum">-
        <h4><a href="index.html"> 首頁</a>   >>   <a href="#" class="select">聯繫我們 </a> </h4>
      </div>
   
    
    
        
    <form style=" padding: 180px; padding-top:50px;" id="contact_form" action="#" method="POST" enctype="multipart/form-data">
	<div class="row">
		<label for="name">姓名 :</label><br />
		<input id="name" class="input" name="name" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
		<label for="email">電子信箱 : </label><br />
		<input id="email" class="input" name="email" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
		<label for="message">留言內容 : </label><br />
		<textarea id="message" class="input" name="message" rows="7" cols="30"></textarea><br />
	</div>
	<input id="submit_button" type="submit" value="發送" />
</form>				
        
        
    
    
    
</div>
<!--henry 引入footer頁面-->
<%@include file="footer.jsp" %>