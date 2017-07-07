<%@page language="Java" pageEncoding="utf-8" %>
<%@page contentType="text/html;charset=utf-8" %>
<!--henry 引入商品類-->
<%@page import="entities.Article"%>
<!--henry 引入商品控制類-->
<%@page import="dao.ArticleDao"%>
<%@page import="panier.LignePanier"%>
<%@page import="panier.Panier"%>
<%@page import="entities.Client"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>各種品牌手機全新上架 </title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/slideshow.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="js/jquery.cycle.js"></script>
<script type="text/javascript" src="js/jquery.functions.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/Comfortaa_400.font.js" type="text/javascript"></script>
<script type="text/javascript">
			Cufon.replace('h1', { fontFamily: 'Comfortaa' });
			Cufon.replace('h2', { fontFamily: 'Comfortaa' });
			Cufon.replace('h3', { fontFamily: 'Comfortaa' });
			Cufon.replace('h4', { fontFamily: 'Comfortaa' });
		</script>
<script type="text/javascript" src="assets/js/font-delicious.js"></script>

</head>
<body>
<div id="Layout">
  <!-- BEGIN HEADER -->
  <div id="Top">
    <div id="Logo">
      <h1><a href="index.jsp">
              <!--henry 網站LOGO圖片引入-->
              <img height="79" src="images/logo-big-shopping.png" alt="OXO" /></a>
      </h1>
    </div>
    <!-- end div #Logo -->
    <div id="TopContent">
      <ul>
<% 
    //henry 判斷是否已存在 購物車的session 沒有就建立購物車session
if(session.getAttribute("panier") == null )
{
    session.setAttribute("panier", new Panier());
}
 //henry 取得購物車session中的資料
Panier panier = (Panier)session.getAttribute("panier");
//henry 宣告 總價變數 prixT
double prixT = 0 ;
//henry 宣告一變數 lp 並將 panier.getLignesPanier() 回傳的購物車資料賦予給lp
for(LignePanier lp : panier.getLignesPanier())
    //henry 計算總價 pritX 購物車產品數量乘上產品單價
    prixT += lp.getQuantite()*lp.getArticle().getPrix();


%>

        <li class="cart"><a href="panier.jsp">購物車</a></li>
        <li class="cart-value">
            <span class="blue"><a href="panier.jsp">
                    <!--henry 取得並顯示購物車產品數量 panier.getNumberArticle() -->
                    <%= panier.getNumberArticle() %> 項產品</a></span> | <span>$<%= prixT %> </span></li>
      </ul>
    </div>
    <!-- end div #TopContent -->
    <div id="Nav">
      <div class="NavBody">
        <ul>
            <li> <a href="index.jsp">首頁</a></li>
            <li> <a href="produits.jsp">我們的產品</a></li>
            <li> <a href="mon_compte.jsp">會員專區</a></li>
          <li> <a href="contactez-nous.jsp">聯繫我們</a></li>
          <li class="search">
              <form action="produits.jsp" method="GET">
                <input type="image" class="action" src="images/search-action.jpg" />
                <input name="keyword" type="text" class="searchfeild" />
            </form>
          </li>
        </ul>
      </div>
    </div>
    <!-- end div #Nav -->
  </div>
  <!-- end div #Top -->
  <!-- END HEADER -->
  <!-- BEGIN CONTENT -->
  <div id="Content">
    <div class="LeftSide">
        
        <!-- Connexion DIV -->
        <!-- henry 判斷是否已登入帳號(會員)如果未登入就顯示下方區塊 -->
        <% if(session.getAttribute("client") == null){ %>
            <div class="leftBox">
              <h3>Connexion</h3>
              <div class="leftBoxBody">
              <form method="GET" action="ConnexionServlet">
              <ul class="cat-link" style="margin-top:-20px">
                  <li>
                      帳號 : <input type="text" name="login" style=" width:100%" />
                  </li>
                  <li>
                      密碼 : 	<input type="password" name="mdp" style="width:100%" />
                  </li>
                  </ul>
                  <a href="#" style="margin:5px"> 忘記密碼...</a>
                 <input style="margin-left:20px;margin-right:-20px;" type="submit" value="登入" />
                      </form>

              </div>
            </div>
        <% }else{ %>
        <!-- henry 如果已登入就顯示下方區塊 -->
            <div class="leftBox">
                <h3>哩厚~</h3>
              <div class="leftBoxBody">
                  <!-- henry 顯示登入帳號的名字 ((Client)session.getAttribute("client")).getNom()  -->
                  <p style="margin-top: -15px; margin-left: -10px ">哩厚~ <b> <%= ((Client)session.getAttribute("client")).getNom()  %></b></p>
              <ul class="cat-link" >
                  <li>
                      <a href="mon_compte.jsp"> 我的帳戶 </a>
                  </li>
                  <li>
                      <a href="panier.jsp"> 購物車 </a>
                  </li>
                  <li>
                      <a href="mescommandes.jsp"> 我的訂單 </a>
                  </li>
                  <li>
                      <a href="DeconnexionServlet"> 註銷會員.. </a>
                  </li>
                  </ul>

              </div>
            </div>
        <% } %>
      
      
      
      
      <div class="leftBox">
        <p>隨機產品</p>
        <div class="leftBoxBody">
          <ul class="sellerlist">
            <%
                //henry 隨機產生並顯示四個產品
                ArticleDao daoo = new ArticleDao();
                int ii = 0;
                for(Article a : daoo.findRandom(4))
                {
                    ii++;
            %>
                <li><span><%= ii %>.</span>
                    <!-- henry 取得產品資料各欄位值並插入html -->
                    <p><a href="article.jsp?id=<%= a.getIdArticle() %>"><%= a.getLibelle() + " <br> <b>" + a.getPrix() + "$</b>" %></a></p>
                    <div class="clr"></div>
                </li>
            <% 
                } 
            %>
          </ul>
          <div class="clr"></div>
        </div>
      </div>
      
      
      <div class="cards">
        <ul>
          <li><a href="#"><img src="images/paypal.gif" alt="" /></a></li>
          <li><a href="#"><img src="images/card-visia.gif" alt="" /></a></li>
          <li><a href="#"><img src="images/card-master.gif" alt="" /></a></li>
        </ul>
      </div>
    </div>
    <!-- end div #LeftSide -->
    
