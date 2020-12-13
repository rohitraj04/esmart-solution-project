<%-- 
    Document   : index
    Created on : Mar 10, 2016, 1:35:24 PM
    Author     : dell-lap
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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



    <script src="js/jquery-ui.js"></script>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/slider.js"></script>
    <script src="js/plugin.js"></script>
     <style type="text/css">
div#map_container{
	width:100%;
	height:350px;
}
</style>
<script type="text/javascript" 
   src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

<script type="text/javascript">
  function loadMap() {
    var latlng = new google.maps.LatLng(26.8000, 80.9000);
    var myOptions = {
      zoom: 4,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_container"),myOptions);
	
    var marker = new google.maps.Marker({
      position: latlng, 
      map: map, 
      title:" Lucknow, India!"
    }); 
  
  }
</script>
    
    
</head>
<body>
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

   
    <section class="choose-theme section-padding color-white"  id="about">
        <div class="container">
            <div class="main-title font-color-m-light">About Us.</div>
            <p class="main-content">E-Smart Solution is a complete IT Technical Solution company. we always lay a unique accentuation on communication and connectivity issues of our clients. Apart from standalone PCs,  we provide complete range of products and services both in the area of  Software & Technical Querys 
            <div class="col-8 about-image"><img src="image/22.png" style="" /></div>
            <div class="col-4 padding-lr" style="box-sizing:border-box;" >
                <div class="sub-title font-color-s-light">
                    Everything  you need
                </div>

                <div class="content-box" style="">                    Whether you need simple pages, striking galleries, a professional help, it's all included with your Squarespace website. Best of all, everything is mobile-ready right from the start.
                </div>
                <a href="#services"><div class="view-template" >View More</div></a>
            </div>
       
            </div>

    </section>
    <section class="multiple-template section-padding color-light-white" id="portfolio">
                <div class="container">
                    <div class="main-title font-color-s-light">Our Example</div>
                    <p class="main-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae nibh nisl. Cras et mauris eget lorem ultricies ferme ntum a in diam. </p>

                   
                    
                    <div class="col-4" style="padding:5px;">
                   <div style="height:235px;border:1px solid #f5f5f5;border-radius:3px;box-sizing:border-box">
                    <div class="template-header" style="padding: 10px 0px;background-color: rgb(255, 255, 255);border-bottom: 1px solid rgb(222, 222, 222)">
                        <span style="height: 5px;width: 5px;background-color: #929292;display: block;border-radius: 15px;float:left;margin-left:10px;"></span>
                         <span style="height: 5px;width: 5px;background-color: #929292;display: block;border-radius: 15px;float:left;margin-left:3px;"></span>
                         <span style="height: 5px;width: 5px;background-color: #929292;display: block;border-radius: 15px;float:left;margin-left:3px;"></span>
                        <div style="clear:both"></div>
                    </div>

                        <div class="temp-data-box" style="height:210px;background-color:#fff;position:relative;overflow:hidden; background-image:url(image/temp1.png);background-position:center 0px;background-size:cover;">

                            <!--<img src="image/temp1.jpg" style="width:100%;" />-->
                            <div class="temp-data-box-overlay" style="position:absolute;top:0px;left:0px;background-color:rgba(0, 0, 0, 0.5);width:100%;height:100%;text-align:center;">
                                <span style="width:1px;height:100%;display:inline-block;vertical-align:middle;"></span>
                                <a href="#"><span class="button-2   ">
                                    View Template
                                </span></a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-4" style="padding:5px;">
                   <div style="height:235px;border:1px solid #f5f5f5;border-radius:3px;box-sizing:border-box">
                    <div class="template-header" style="padding: 10px 0px;background-color: rgb(255, 255, 255);border-bottom: 1px solid rgb(222, 222, 222)">
                        <span style="height: 5px;width: 5px;background-color: #929292;display: block;border-radius: 15px;float:left;margin-left:10px;"></span>
                         <span style="height: 5px;width: 5px;background-color: #929292;display: block;border-radius: 15px;float:left;margin-left:3px;"></span>
                         <span style="height: 5px;width: 5px;background-color: #929292;display: block;border-radius: 15px;float:left;margin-left:3px;"></span>
                        <div style="clear:both"></div>
                    </div>

                        <div class="temp-data-box" style="height:210px;background-color:#fff;position:relative;overflow:hidden; background-image:url(image/temp1.png);background-position:center 0px;background-size:cover;">

                        <!--    <img src="image/temp1.jpg" style="width:100%;" />-->
                            <div class="temp-data-box-overlay" style="position:absolute;top:0px;left:0px;background-color:rgba(0, 0, 0, 0.5);width:100%;height:100%;text-align:center;">
                                <span style="width:1px;height:100%;display:inline-block;vertical-align:middle;"></span>
                                <a href="#"><span class="button-2   ">
                                    View Template
                                </span></a>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-4" style="padding:5px;">
                   <div style="height:235px;border:1px solid #f5f5f5;border-radius:3px;box-sizing:border-box">
                    <div class="template-header" style="padding: 10px 0px;background-color: rgb(255, 255, 255);border-bottom: 1px solid rgb(222, 222, 222)">
                        <span style="height: 5px;width: 5px;background-color: #929292;display: block;border-radius: 15px;float:left;margin-left:10px;"></span>
                         <span style="height: 5px;width: 5px;background-color: #929292;display: block;border-radius: 15px;float:left;margin-left:3px;"></span>
                         <span style="height: 5px;width: 5px;background-color: #929292;display: block;border-radius: 15px;float:left;margin-left:3px;"></span>
                        <div style="clear:both"></div>
                    </div>

                        <div class="temp-data-box" style="height:210px;background-color:#fff;position:relative;overflow:hidden; background-image:url(image/temp1.png);background-position:center 0px;background-size:cover;">

                            <!--<img src="image/temp1.jpg" style="width:100%;" />-->
                            <div class="temp-data-box-overlay" style="position:absolute;top:0px;left:0px;background-color:rgba(0, 0, 0, 0.5);width:100%;height:100%;text-align:center;">
                                <span style="width:1px;height:100%;display:inline-block;vertical-align:middle;"></span>
                                <a href="#"><span class="button-2   ">
                                    View Template
                                </span></a>
                            </div>
                        </div>
                    </div>
                    </div>
                  

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


    <section class="service section-padding color-white" id="services">
        <div class="container">
                    <div class="main-title font-color-m-light">Servcies.</div>
            <p class="main-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae nibh nisl. Cras et mauris eget lorem ultricies ferme ntum a in diam. </p>
            <div class="service-box">
            <div class="col-4 mb-12 padding-tblr margin-bottom-30">
                    <div class="col-3 mb-2 service-icon">
                        <i class="quickweb-icon-mail-alt"></i>
                    </div>
                    <div class="col-9 mb-10">
                        <div class="feature-name">Domain + Email</div>
                        <div class="feature-content">Lorem Ipsum is simply dummy text of the printing and type setting industry.</div>
                    </div>
                    
                
            </div>
            <div class="col-4 mb-12 padding-tblr margin-bottom-30">
                    <div class="col-3 mb-2 service-icon">
                        <i class="quickweb-icon-cloudapp"></i>
                    </div>
                    <div class="col-9 mb-10">
                        <div class="feature-name">Web Hosting</div>
                        <div class="feature-content">Lorem Ipsum is simply dummy text of the printing and type setting industry.</div>
                    </div>
                    
                
            </div>
           <div class="col-4 mb-12 padding-tblr margin-bottom-30">
                    <div class="col-3 mb-2 service-icon">
                        <i class="quickweb-icon-code"></i>
                    </div>
                    <div class="col-9 mb-10">
                        <div class="feature-name">Website Customization</div>
                        <div class="feature-content">Lorem Ipsum is simply dummy text of the printing and type setting industry.</div>
                    </div>
                    
                
            </div>
                 <div class="col-4 mb-12 padding-tblr margin-bottom-30">
                    <div class="col-3 mb-2 service-icon">
                        <i class="quickweb-icon-chart-bar"></i>
                    </div>
                    <div class="col-9 mb-10">
                        <div class="feature-name">Search Engine Optimization</div>
                        <div class="feature-content">Lorem Ipsum is simply dummy text of the printing and type setting industry.</div>
                    </div>
                    
                
            </div>
            <div class="col-4 mb-12 padding-tblr margin-bottom-30">
                    <div class="col-3 mb-2 service-icon">
                        <i class="quickweb-icon-monitor"></i>
                    </div>
                    <div class="col-9 mb-10">
                        <div class="feature-name">Resposive Design</div>
                        <div class="feature-content">Lorem Ipsum is simply dummy text of the printing and type setting industry.</div>
                    </div>
                    
                
            </div>
           <div class="col-4 mb-12 padding-tblr margin-bottom-30">
                    <div class="col-3 mb-2 service-icon">
                        <i class="quickweb-icon-lock"></i>
                    </div>
                    <div class="col-9 mb-10">
                        <div class="feature-name">Secure and Reliable</div>
                        <div class="feature-content">Lorem Ipsum is simply dummy text of the printing and type setting industry.</div>
                    </div>
                    
                
            </div>
                </div>
        </div>
    </section>

    <section class="team section-padding color-light-white" id="team">
        <div class="container">
           <div class="main-title font-color-m-light">Our Creative Mind</div>
            <p class="main-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae nibh nisl. Cras et mauris eget lorem ultricies ferme ntum a in diam. </p>
      
            
            </div>
            <div class="col-4 padding-lr team-member" >
                 <div class="team-image" style="position:relative;overflow:hidden;text-align:center;background-image:url(image/raj.jpg);"><!--<img src="image/team2.jpg" />-->
                <div class="team-overlay">

                          <span style="width:1px;height:100%;display:inline-block;vertical-align:middle;"></span>
                          <div class="social-link"  style="vertical-align: middle;display: inline-block;">
                             <a href="https://www.facebook.com/rohitraj04"> <i class="quickweb-icon-facebook"></i></a><a href="https://twitter.com/thinking_virus"> <i class="quickweb-icon-twitter"></i></a><a href="https://plus.google.com/u/0/+RohitRaj04"> <i class="quickweb-icon-gplus-1"></i></a>
                          </div>
                      </div>
                 </div>
              <div class="team-name" style="">Rohit Raj</div>
                <div class="team-position">CEO - founder</div>
            </div>
           
         
          
              </div>
    </section>


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

    <section class="map color-light-white" id="contact">
       <body onload="loadMap()">
    <div id="map_container"></div>
    </section>
    
    <section class="contact-address section-padding color-light-white">
        <div class="container">
        <div class="col-12">
            <div class="contact-box col-4">
                <div class="col-12 contact-icon"><i class="quickweb-icon-direction"></i></div> 
                          <div class="col-12 contact-title">Lucknow, U.P<br /> India</div>

                      </div>
                   <div class="contact-box col-4">
                       <div class="col-12 contact-icon"><i class="quickweb-icon-phone"></i></div>
                       <div class="col-12 contact-title">+91-7275037718</div>

                   </div> 
                <div class="contact-box col-4">
                     <div class="col-12 contact-icon"><i class="quickweb-icon-mail-alt"></i></div>
                      <div class="col-12 contact-title">service.esmart@gmail.com</div>
                </div>

            
    </div></div>
            </section>
     
    <section class="contact section-padding color-white">
        <div class="container">
            <div class="main-title font-color-m-light">Contact Us</div>
            <p class="main-content">E-sart is, consectetur adipiscing elit. Cras vitae nibh nisl. Cras et mauris eget lorem ultricies ferme ntum a in diam. </p>
                  <center>
              <form action="Login" method="POST">
              
              <table border="0">
                  <tbody>
                      <tr>
                          <td><b>USER TYPE</b></td>
                          <td><select name="user_type">
                                  <option>ADMIN</option>
                                  <option>ENGINEER</option>
                                  <option>SUPERVISOR</option>
                                  <option>USER</option>
                              </select></td>
                      </tr>
                      <tr>
                          <td><b>USERNAME</b></td>
                          <td><input type="text" name="user" value="" /></td>
                      </tr>
                      <tr>
                          <td><b>PASSWORD</b></td>
                          <td><input type="password" name="pass" value="" /></td>
                      </tr>
                      
                          
                  </tbody>
              </table>

           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                        <input type="reset" value="Reset" />
                      
              
          </form>
                       <br>
                      <h1>For our services&nbsp;&nbsp;&nbsp;<a href="register.jsp">Register Here</a></h1>
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
                   <div class="col-3"> <a href="https://www.facebook.com/rohitraj04"></a><i class="quickweb-icon-twitter"></i></div><div class="col-3"><i class="quickweb-icon-youtube"></i></div><div class="col-3"><i class="quickweb-icon-gplus-1"></i></div></div>
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

