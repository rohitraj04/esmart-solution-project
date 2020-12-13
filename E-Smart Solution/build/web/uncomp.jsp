<%-- 
    Document   : uncomp
    Created on : Mar 11, 2016, 1:49:05 AM
    Author     : dell-lap
--%>

<%@page import="java.sql.*,mysqlC.conn" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>E-Smart Solution</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
    <meta charset="utf-8" />
     <link rel="shortcut icon" href="image/favicon.ico" type="image/favicon.ico" />
    <meta name="robots" content="index, follow" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="en" />
    <meta name="keywords" content="mz,mzcreatives,creatives,template,website,onepage,webdesign,portfolio,build website,themeforest" />
    <meta name="description" content="Now you can buy or use template from themeforest design by mzcreatives" />
    <meta property="og:title" content="One page website template for multipurpose website" />


     <!---Common css---->
        <link href="css/common.css" rel="stylesheet" type="text/css" />
        <!----Media queries css--->
         <link href="css/style.css" type="text/css" rel="stylesheet" />
         <link href="css/theme1024.css" rel="stylesheet" type="text/css" />
        <link href="css/theme990.css" rel="stylesheet" type="text/css" />
        <link href="css/theme768.css" rel="stylesheet" type="text/css" />
        <link href="css/theme480.css" rel="stylesheet" type="text/css" />
        <link href="css/theme320.css" rel="stylesheet" type="text/css" />
        <link href="css/theme319.css" rel="stylesheet" type="text/css" />
    <link href="css/quickweb.css" rel="stylesheet" type="text/css" />
     <link href="fonts/style.css" rel="stylesheet" type="text/css" />   
   <link href="css/slider_css.css" type="text/css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,700,900' rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="https://twitter.com/thinking_virus?family=quickweb-icon-twitter" >


    <script src="js/jquery-ui.js"></script>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/slider.js"></script>
    <script src="js/plugin.js"></script>
    <script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
</SCRIPT>
<% response.setHeader("Pragma","no-cache");%> 
<% response.setHeader("Cache-Control","no-store");%> 
<% response.setDateHeader("Expires",-1);%>
</head>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
    <%
HttpSession hs=request.getSession();
String u=(String)hs.getAttribute("sUser");   
if(u==null)
   {
response.sendRedirect("index.jsp");
}
%>
    <div class="main">
                    <header class="header">
                <div class="container">
                    <div class="col-12">
                    <div class="col-4 mb-11 logo-set">
                        <div class="logo"><h1>E-Smart Solution</h1></div>

                    </div>

                    <nav class="mob-menu-icon mb-1">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                   </nav>

                        
                    <nav class="col-8 menu mob-menu pull-right">
                        
                         <nav class="mob-menu-icon" style="padding: 26px 26px;width: 100%;box-sizing: border-box;border-bottom:2px solid #1565C0; ">
                        
                        <span class="icon-bar slide-icon-menu-color"></span>
                        <span class="icon-bar slide-icon-menu-color"></span>
                        <span class="icon-bar slide-icon-menu-color"></span>

                    </nav>
                       <!-- <div class="menu-item-box center "><a href="#" class="menu_link">Home</a>

                            <div class="sub_cata" style="height: 200px;position: absolute;z-index: 99999;background-color: #000;margin-top: 29px;">
                                Test sub cata
                            
                            </div>

                        </div>-->
                        <div class="menu-item-box center "><a href="home.jsp" class="menu-link">Home</a></div>
                        <div class="menu-item-box center "><a href="#about" class="menu-link">About</a></div>
                        <div class="menu-item-box center "><a href="#services" class="menu-link">Services</a></div>
                        <div class="menu-item-box center "><a href="#services" class="menu-link">Team</a></div>
                        <div class="menu-item-box center "><a href="#portfolio" class="menu-link">Portfolio</a></div>
                        <div class="menu-item-box center "><a href="#testimonial" class="menu-link">Testimonial</a></div>
                        <div class="menu-item-box center "><a href="#contact" class="menu-link">Login</a></div>
                        

                        </nav>
                        


                       

                    </div>
                        </div>
            </header>
        <section class="banner top" id="home" style="background-image:url(image/banner1.jpg);">
        <div class="texture">
        <div class="container">
           <div class="col-5 mb-12 mb-center banner-box">
               
               <div class="banner_line1">The great aim of education is not knowledge but action.</div>
               <div class="banner_brief_text">Education not only broadens the mind but adds the most important component for critical thought, depth.</div>
               <div    class="mb-center mb-12">
               <div class="button-1">
                   <a href="#">Tech Solution</a></div></div>          
           </div>
            <div class="col-7 mb-12 banner-image"  style="position:relative;"><!--<img src="image/banner2_image.png"  />--></div>
        </div>
            </div>
       <!--  <div class="col-12 banner-extra-div color-black-s-light">
 
    </div>-->
    </section>

   
   
       
            </div>

    </section>
    

    <section class="call-action section-padding color-green">
        <div class="container">
          <div class="col-8">
              <div class="call-title">Get a new way for growing your business!</div>
          </div>
          <div class="col-4 padding-tb">
              <div class="call-action-but" style="text-align:center;"><a href="#">Get a Quote</a></div>
          </div>
        </div>
    </section>

    <center>
                    
          <%
          String area="";
conn ob=new conn();          
Connection con=ob.c();
Statement stm=con.createStatement();
ResultSet rst1=stm.executeQuery("select * from supervisor where username='"+u+"'");
if(rst1.next())
       {
area=rst1.getString("area");
}
rst1.close();
ResultSet rst=stm.executeQuery("select * from complaints where status='0' and area='"+area+"'");

%>
<font style="color: black">

<table width="4" cellspacing="4">
    
    <thead style="background-color: wheat">
        <tr>
            <th>Complaint ID</th>
            <th>User</th>
            <th>Prob. Type</th>
            <th>Prob. Description</th>
            <th>Area</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Complaint Time</th>
        </tr>
    </thead>
    <tbody>
        <%
while(rst.next())
{           
%>
        <tr style="background-color: yellowgreen">
            <td><%=rst.getInt("complaint_id") %></td>
            <td><%=rst.getString("user") %></td>
            <td><%=rst.getString("prob_type") %></td>
            <td><%=rst.getString("prob_desc") %></td>
            <td><%=rst.getString("area") %></td>
            <td><%=rst.getString("contact") %></td>
            <td><%=rst.getString("address") %></td>
            <td><%=rst.getString("c_time") %></td>
            <td><a href="Assign.jsp?par=<%=rst.getInt("complaint_id")%>"><font style="color: black">Assign</font></a></td>
        </tr>
        <%
}        
%>
    </tbody>
</table>

                
        
</font>
                
            </center>
   
         

  
           


        <!--<section class="key-feature section-padding color-white">
        <div class="container">
              <div class="main-title font-color-m-light">Features for Your Online Business</div>
            <p class="main-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae nibh nisl. Cras et mauris eget lorem ultricies ferme ntum a in diam. </p>

            <div class="col-5  padding-lr" >
               <div class="col-12 feature-box" style="padding:5px 0px;">
                   <div class="col-2 feature-icon"><i class="quickweb-icon-monitor"></i></div>
                   <div class="col-10 content-box">
                       <div class="feature-name">Resposive design</div>
                        <div class="feature-content">Cras tempus orci massa, id hendrerit mi egestas vitae class aptent taciti.</div>
                       </div>
                  
               </div>

                <div class="col-12 feature-box" style="padding:5px 0px;">
                    
                   <div class="col-2 feature-icon"><i class="quickweb-icon-chart-pie-1"></i></div>
                 <div class="col-10 content-box">
                       <div class="feature-name">Easy Customization</div>
                        <div class="feature-content">Cras tempus orci massa, id hendrerit mi egestas vitae class aptent taciti.</div>
                       </div>
               </div>

                  <div class="col-12 feature-box" style="padding:5px 0px;">
                   <div class="col-2 feature-icon"><i class="quickweb-icon-sliders"></i></div>
                  <div class="col-10 content-box">
                       <div class="feature-name">Step to Step Guide</div>
                        <div class="feature-content">Cras tempus orci massa, id hendrerit mi egestas vitae class aptent taciti.</div>
                       </div>
               </div>
                <div class="col-12 feature-box" style="padding:5px 0px;">
                   <div class="col-2 feature-icon"><i class="quickweb-icon-cloud-1"></i></div>
                  <div class="col-10 content-box">
                       <div class="feature-name">Secure and Reliable</div>
                        <div class="feature-content">Cras tempus orci massa, id hendrerit mi egestas vitae class aptent taciti.</div>
                       </div>
               </div>

            </div>
            
            <div class="col-7" style="">
                <div class="col-12 feature-img center" style="">
                <img src="image/monitor.png" /></div>
            </div>
        </div>
    </section>-->
    <section class="happy-client section-padding color-white" id="testimonial">
        <div class="container">
              <div class="main-title font-color-m-light">Our  Clients<i class="quickweb-icon-smile"></i>with us</div>
            
           
            <div id="main_slider">
                 <div class="thumb_slider" style="">
            <div class="thumbs quote-box" style="padding:25px 0px;">
                <p class="quote-text center"><i class="quickweb-icon-quote-left" style="padding:0px 15px;font-size: 22px;color:#7d7d7d;"></i>Donec vehicula, ante ut tristique mollis, quam quam mollis ipsum finibus leo urna nec purus nullam non justo a enim tristique euismod id id velit ut facilisis sem est, id sollicitudin massa.
										<i class="quickweb-icon-quote-right" style="padding:0px 15px;font-size: 22px;color:#7d7d7d;"></i></p>
                <h2 class="quote-company-name center" style="margin-top:25px">- Izzy azalea , Ceo Amp Group - </h2>
                <h5 class="quote-company-position center"></h5>


            </div>
                     <div class="thumbs quote-box" style="padding:25px 0px;">
                <p class="quote-text center"><i class="quickweb-icon-quote-left" style="padding:0px 15px;font-size: 22px;color:#7d7d7d;"></i>Donec vehicula, ante ut tristique mollis, quam quam mollis ipsum finibus leo urna nec purus nullam non justo a enim tristique euismod id id velit ut facilisis sem est, id sollicitudin massa.
										<i class="quickweb-icon-quote-right" style="padding:0px 15px;font-size: 22px;color:#7d7d7d;"></i></p>
                <h2 class="quote-company-name center" style="margin-top:25px">- Izzy azalea , Ceo Amp Group - </h2>
                <h5 class="quote-company-position center"></h5>


            </div>
                     </div>
                <div class="prev" style=""><i class="quickweb-icon-left-open-1"></i></div>
                <div class="next" style=""><i class="quickweb-icon-right-open-1"></i></div>
                
                </div>
        </div>
    </section>

    
    <section class="contact-address section-padding color-light-brown">
        <div class="container">
        <div class="col-12">
            <div class="contact-box col-4">
                <div class="col-12 contact-icon"><i class="quickweb-icon-direction"></i></div> 
                          <div class="col-12 contact-title">Indira Nagar,Lucknow <br /> India</div>

                      </div>
                   <div class="contact-box col-4">
                       <div class="col-12 contact-icon"><i class="quickweb-icon-phone"></i></div>
                       <div class="col-12 contact-title">+91-7275037718</div>

                   </div> 
                <div class="contact-box col-4">
                     <div class="col-12 contact-icon"><i class="quickweb-icon-mail-alt"></i></div>
                      <div class="col-12 contact-title">service.tech@gmail.com</div>
                </div>

            
    </div></div>
            </section>
    
          </center>
            </div>
        </section>

        <section class="footer">
            
            <div class="bottom-footer">
                <div class="container">
                    <div class="col-12">
                        <div class="col-6 mb-6" style="color:#606873">
                            <div class="footer-menu" style="vertical-align:middle;">
                                <div class="col-3 footer-menu-box-link">Home</div>
                                 <div class="col-3 footer-menu-box-link">About Us </div>
                                <div class="col-3 footer-menu-box-link">Privacy policy</div>
                                <div class="col-3 footer-menu-box-link">Sitemap</div>
                               
                             </div>
                        </div>
                <div class="col-6 mb-6 social right"><div class="col-3"><i class="quickweb-icon-facebook"><a href="about.jsp"></a></i></div>
                <div class="col-3"><i class="quickweb-icon-twitter"></i></div><div class="col-3"><i class="quickweb-icon-youtube"></i></div><div class="col-3"><i class="quickweb-icon-gplus-1"></i></div></div>
                    </div>
              <div class="col-12 creator" style="padding-top:25px;">
                <div class="col-6 copyright">© 2016 Rohit Raj. </div>
                <div class="col-6 design-by">
                    <div class="col-8" style="color: #E5E5E5;font-weight: 100;font-size: 15px;">Developed  <i class="quickweb-icon-heart" style="color:rgb(216, 24, 24);font-size:20px;"></i>By</div>
                    <div class="col-4 footer-logo" >  <h6><font color="red">Rohit Raj</font></h6></div> </div>
             </div>
            </div>
            </div>
        </section>

        </div>
    <script type="text/javascript">
        thumb_slider({

            thumbs_to_show: 1,
            thumbs_to_move: 1,
            thumbs_width: 0,
            thumbs_count: 0,
            timeout: 10000,
            parent_id: "main_slider",
            container_class: "thumb_slider",
            thumb_class: "thumbs",
            spacing: 0,
            processing: false,
            hover: false,
            next_class: "next",
            prev_class: "prev",
            timer: setTimeout(function () { })

        });
    </script>
</body>
</html>
