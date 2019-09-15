<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>Free Snow Bootstrap Website Template | Shop :: w3layouts</title>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <script type="application/x-javascript">
      addEventListener("load", function() {
        setTimeout(hideURLbar, 0);
      }, false);

      function hideURLbar() {
        window.scrollTo(0, 1);
      }
    </script>
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        $(".dropdown img.flag").addClass("flagvisibility");

        $(".dropdown dt a").click(function() {
          $(".dropdown dd ul").toggle();
        });

        $(".dropdown dd ul li a").click(function() {
          var text = $(this).html();
          $(".dropdown dt a span").html(text);
          $(".dropdown dd ul").hide();
          $("#result").html("Selected value is: " + getSelectedValue("sample"));
        });

        function getSelectedValue(id) {
          return $("#" + id).find("dt a span.value").html();
        }

        $(document).bind('click', function(e) {
          var $clicked = $(e.target);
          if (!$clicked.parents().hasClass("dropdown"))
            $(".dropdown dd ul").hide();
        });


        $("#flagSwitcher").click(function() {
          $(".dropdown img.flag").toggleClass("flagvisibility");
        });
      });
    </script>
  </head>

  <body>
    <div class="header">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="header-left">
              <div class="logo">
                <a href="index1.jsp"><img src="images/logo.png" alt="" /></a>
              </div>
              <div class="menu">
                <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
                <ul class="nav" id="nav">
                  <li><a href="index1.jsp" , id="Home-link">Home</a></li>
                  <li><a href="shop1.jsp" , id="Products-link">Products</a></li>
                  
                  <li><a href="team.html" , id="Team-link">Team</a></li>
                  <li><a href="contact.html" , id="Contact-link">Contact</a></li>
                  <div class="clear"></div>
                </ul>
                <script type="text/javascript" src="js/responsive-nav.js"></script>
              </div>
              <div class="clear"></div>
            </div>
            <div class="header_right">
              <!-- start search-->
              <div class="search-box">
                <div id="sb-search" class="sb-search">
                  <form action="./search" method = "post">
                    <input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
                    <input class="sb-search-submit" type="submit" value="">
                    <span class="sb-icon-search"> </span>
                  </form>
                </div>
              </div>
              <!----search-scripts---->
              <script src="js/classie.js"></script>
              <script src="js/uisearch.js"></script>
              <script>
                new UISearch(document.getElementById('sb-search'));
            </script>
              <!----//search-scripts---->
              <ul class="icon1 sub-icon1 profile_img">
                <li><a class="active-icon c1" href="#"> </a>
                  <ul class="sub-icon1 list">
                    <div class="product_control_buttons">
                      <a href="#"><img src="images/edit.png" alt="" /></a>
                      <a href="#"><img src="images/close_edit.png" alt="" /></a>
                    </div>
                    <div class="clear"></div>
                    <li class="list_img"><img src="images/1.jpg" alt="" style="width:50px"/></li>
                    <li class="list_desc">
                      <h4><a href="#">velit esse molestie</a></h4><span class="actual">1 x
                        $12.00</span>
                    </li>
                    <div class="login_buttons">
                      <div class="check_button"><a href="checkout.html">Check out</a></div>
                      <div class="login_button"><a href="login.jsp">
                      <%String str =(String) session.getAttribute("firstname"); String str1 =(String) session.getAttribute("lastname");
							 if(str==null&&str1 ==null){
							 	str = "Login";
							 	str1="";
							 }
						%>
                     		 <%=  str+""+str1%></a></div>
                      <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                  </ul>
                </li>
              </ul>
              <div class="clear"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="main">
      <div class="shop_top">
        <div class="container">
          <div class="row shop_box-top">
            <div class="col-md-3 shop_box"><a href="single1.jsp">
                <img src=<%String strdog1i = (String)session.getAttribute("pro_image0") ;%>
                  <%= strdog1i %> class="img-responsive" alt="" style="height:140px"/>
                <span class="new-box">
                  <span class="new-label">New</span>
                </span>
                <span class="sale-box">
                  <span class="sale-label">Sale!</span>
                </span>
                <div class="shop_desc">
                  <h3><a href="single1.jsp"><%String strdog1 = (String)session.getAttribute("pro_name0") ;%>
                  <%= strdog1 %></a></h3>
                 
                  <span class="reducedfrom">$306.00</span>
                  <span class="actual">$<%String strdog1p = (String)session.getAttribute("pro_price0") ;%>
                  <%= strdog1p %></span><br>
                  <ul class="buttons">
                    <li class="cart"><a href="single1.jsp">Add To Cart</a></li>
                    <li class="shop_btn"><a href="foo.html">Read More</a></li>
                    <div class="clear"> </div>
                  </ul>
                </div>
              </a></div>
            <div class="col-md-3 shop_box"><a href="single2.jsp">
                <img src=<%String strdog2i = (String)session.getAttribute("pro_image1") ;%>
                  <%= strdog2i %> class="img-responsive" alt="" style="height:140px"/>
                <span class="new-box">
                  <span class="new-label">New</span>
                </span>
                <div class="shop_desc">
                  <h3><a href="single2.jsp"><%String strdog2n = (String)session.getAttribute("pro_name1") ;%>
                  <%= strdog2n %></a></h3>
                  
                  <span class="actual">$<%String strdog2p = (String)session.getAttribute("pro_price1") ;%>
                  <%= strdog2p %></span><br>
                  <ul class="buttons">
                    <li class="cart"><a href="single2.jsp">Add To Cart</a></li>
                    <li class="shop_btn"><a href="foo.html">Read More</a></li>
                    <div class="clear"> </div>
                  </ul>
                </div>
              </a></div>
            <div class="col-md-3 shop_box"><a href="single3.html">
                <img src=<%String strdog3i = (String)session.getAttribute("pro_image2") ;%>
                  <%= strdog3i %> class="img-responsive" alt="" style="height:140px"/>
                <span class="new-box">
                  <span class="new-label">New</span>
                </span>
                <span class="sale-box">
                  <span class="sale-label">Sale!</span>
                </span>
                <div class="shop_desc">
                  <h3><a href="#"><%String strdog3n = (String)session.getAttribute("pro_name2") ;%>
                  <%= strdog3n %> </a></h3>
                  
                  <span class="reducedfrom">$266.00</span>
                  <span class="actual">$<%String strdog3p = (String)session.getAttribute("pro_price2") ;%>
                  <%= strdog3p %> </span><br>
                  <ul class="buttons">
                    <li class="cart"><a href="#">Add To Cart</a></li>
                    <li class="shop_btn"><a href="foo.html">Read More</a></li>
                    <div class="clear"> </div>
                  </ul>
                </div>
              </a></div>
            <div class="col-md-3 shop_box"><a href="single4.html">
                <img src=<%String strdog4i = (String)session.getAttribute("pro_image3") ;%>
                  <%= strdog4i %> class="img-responsive" alt="" style="height:140px"/>
                <span class="new-box">
                  <span class="new-label">New</span>
                </span>
                <span class="sale-box">
                  <span class="sale-label">Sale!</span>
				</span>
				<div class="shop_desc">
                  <h3><a href="#"><%String strdog4n = (String)session.getAttribute("pro_name3") ;%>
                  <%= strdog4n %></a></h3>
                 
                  <span class="reducedfrom">$316.00</span>
                  <span class="actual">$<%String strdog4p = (String)session.getAttribute("pro_price3") ;%>
                  <%= strdog4p %></span><br>
                  <ul class="buttons">
                    <li class="cart"><a href="#">Add To Cart</a></li>
                    <li class="shop_btn"><a href="foo.html">Read More</a></li>
                    <div class="clear"> </div>
                  </ul>
                </div>
              </a></div>
          </div>
          <div class="row">
            <div class="col-md-3 shop_box"><a href="single5.html">
                <img src=<%String strdog5i = (String)session.getAttribute("pro_image4") ;%>
                  <%= strdog5i %> class="img-responsive" alt="" style="height:140px"/>
                <span class="new-box">
                  <span class="new-label">New</span>
                </span>
                <div class="shop_desc">
                  <h3><a href="#"><%String strdog5n = (String)session.getAttribute("pro_name4") ;%>
                  <%= strdog5n %></a></h3>
                  
                  <span class="actual">$<%String strdog5p = (String)session.getAttribute("pro_price4") ;%>
                  <%= strdog5p %></span><br>
                  <ul class="buttons">
                    <li class="cart"><a href="#">Add To Cart</a></li>
                    <li class="shop_btn"><a href="foo.html">Read More</a></li>
                    <div class="clear"> </div>
                  </ul>
                </div>
              </a></div>
            <div class="col-md-3 shop_box"><a href="single6.html">
                <img src=<%String strdog6i = (String)session.getAttribute("pro_image5") ;%>
                  <%= strdog6i %> class="img-responsive" alt="" style="height:140px"/>
                <span class="new-box">
                  <span class="new-label">New</span>
                </span>
                
                <div class="shop_desc">
                  <h3><a href="#"><%String strdog6n = (String)session.getAttribute("pro_name5") ;%>
                  <%= strdog6n %></a></h3>
                 
                  <span class="actual">$<%String strdog6p = (String)session.getAttribute("pro_price5") ;%>
                  <%= strdog6p %></span><br>
                  <ul class="buttons">
                    <li class="cart"><a href="#">Add To Cart</a></li>
                    <li class="shop_btn"><a href="foo.html">Read More</a></li>
                    <div class="clear"> </div>
                  </ul>
                </div>
              </a></div>
            <div class="col-md-3 shop_box"><a href="single7.html">
                <img src=<%String strdog7i = (String)session.getAttribute("pro_image6") ;%>
                  <%= strdog7i %> class="img-responsive" alt="" style="height:140px"/>
                <span class="new-box">
                  <span class="new-label">New</span>
                </span>
                <span class="sale-box">
                  <span class="sale-label">Sale!</span>
                </span>
				<div class="shop_desc">
                  <h3><a href="#"><%String strdog7n = (String)session.getAttribute("pro_name6") ;%>
                  <%= strdog7n %></a></h3>
                  
                  <span class="reducedfrom">$226.00</span>
                  <span class="actual">$<%String strdog7p = (String)session.getAttribute("pro_price6") ;%>
                  <%= strdog7p %></span><br>
                  <ul class="buttons">
                    <li class="cart"><a href="#">Add To Cart</a></li>
                    <li class="shop_btn"><a href="foo.html">Read More</a></li>
                    <div class="clear"> </div>
                  </ul>
                </div>
              </a></div>
            <div class="col-md-3 shop_box"><a href="single8.html">
                <img src=<%String strdog8i = (String)session.getAttribute("pro_image7") ;%>
                  <%= strdog8i %> class="img-responsive" alt="" style="height:140px"/>
                <span class="new-box">
                  <span class="new-label">New</span>
                </span>
                <span class="sale-box">
                  <span class="sale-label">Sale!</span>
                </span>
                <div class="shop_desc">
                  <h3><a href="#"><%String strdog8n = (String)session.getAttribute("pro_name7") ;%>
                  <%= strdog8n %></a></h3>
                  
                  <span class="reducedfrom">$311.00</span>
                  <span class="actual">$<%String strdog8p = (String)session.getAttribute("pro_price7") ;%>
                  <%= strdog8p %></span><br>
                  <ul class="buttons">
                    <li class="cart"><a href="#">Add To Cart</a></li>
                    <li class="shop_btn"><a href="foo.html">Read More</a></li>
                    <div class="clear"> </div>
                  </ul>
                </div>
              </a></div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <ul class="footer_box">
              <h4>Products</h4>
              <li><a href="#">Mens</a></li>
              <li><a href="#">Womens</a></li>
              <li><a href="#">Youth</a></li>
            </ul>
          </div>
          <div class="col-md-3">
            <ul class="footer_box">
              <h4>About</h4>
              <li><a href="#">Careers and internships</a></li>
              <li><a href="#">Sponserships</a></li>
              <li><a href="#">team</a></li>
              <li><a href="#">Catalog Request/Download</a></li>
            </ul>
          </div>
          <div class="col-md-3">
            <ul class="footer_box">
              <h4>Customer Support</h4>
              <li><a href="#">Contact Us</a></li>
              <li><a href="#">Shipping and Order Tracking</a></li>
              <li><a href="#">Easy Returns</a></li>
              <li><a href="#">Warranty</a></li>
              <li><a href="#">Replacement Binding Parts</a></li>
            </ul>
          </div>
          <div class="col-md-3">
            <ul class="footer_box">
              <h4>Newsletter</h4>
              <div class="footer_search">
                <form>
                  <input type="text" value="Enter your email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email';}">
                  <input type="submit" value="Go">
                </form>
              </div>
              <ul class="social">
                <li class="facebook"><a href="#"><span> </span></a></li>
                <li class="twitter"><a href="#"><span> </span></a></li>
                <li class="instagram"><a href="#"><span> </span></a></li>
                <li class="pinterest"><a href="#"><span> </span></a></li>
                <li class="youtube"><a href="#"><span> </span></a></li>
              </ul>

            </ul>
          </div>
        </div>
        <div class="row footer_bottom">
          <dl id="sample" class="dropdown">
            <dt><a href="#"><span>Change Region</span></a></dt>
            <dd>
              <ul>
                <li><a href="#">Australia<img class="flag" src="images/as.png" alt="" /><span class="value">AS</span></a></li>
                <li><a href="#">Sri Lanka<img class="flag" src="images/srl.png" alt="" /><span class="value">SL</span></a></li>
                <li><a href="#">Newziland<img class="flag" src="images/nz.png" alt="" /><span class="value">NZ</span></a></li>
                <li><a href="#">Pakistan<img class="flag" src="images/pk.png" alt="" /><span class="value">Pk</span></a></li>
                <li><a href="#">United Kingdom<img class="flag" src="images/uk.png" alt="" /><span class="value">UK</span></a></li>
                <li><a href="#">United States<img class="flag" src="images/us.png" alt="" /><span class="value">US</span></a></li>
              </ul>
            </dd>
          </dl>
        </div>
      </div>
    </div>
  </body>

</html>