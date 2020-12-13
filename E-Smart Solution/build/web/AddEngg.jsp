<%-- 
    Document   : AddEngg
    Created on : Mar 11, 2016, 1:19:27 AM
    Author     : dell-lap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="org.timtroy.bean.*" %>  
<%@page import="java.sql.*,mysqlC.conn" %>  
    <jsp:useBean id="form" class="org.timtroy.bean.MyForm3" scope="request">  
        <jsp:setProperty name="form" property="errorMessages" value='<%= errorMap %>'/>  
    </jsp:useBean>  
      
    <%  
        // If process is true, attempt to validate and process the form  
        if ("true".equals(request.getParameter("process"))) {  
    %>  
            <jsp:setProperty name="form" property="*" />  
    <%  
            // Attempt to process the form  
            if (form.process()) {  
                // Go to success page  
               
                try
                {
                    HttpSession hs=request.getSession();
                String n=request.getParameter("name");
                String a=request.getParameter("add");
                String c=request.getParameter("contact");
                String e=request.getParameter("email");
                String u=request.getParameter("user");
                String p=request.getParameter("pass1");
                String ar=request.getParameter("area");
                String sal=request.getParameter("salary");
                int id=1001;
                int code=(int)(Math.random()*10000);
                conn obj=new conn();
                Connection con=obj.c();
                Statement stm=con.createStatement();
                ResultSet rst=stm.executeQuery("select * from engineer");
                while(rst.next())
                {
                id=rst.getInt(1);
                }
                id++;
               stm.executeUpdate("insert into engineer values('"+id+"','"+p+"','"+n+"','"+a+"','"+c+"','"+sal+"','"+e+"','"+u+"','"+ar+"')");
                
                response.sendRedirect("EngineerInfo.jsp");
                
                }
                catch(Exception ek)
                {
                out.println(ek);
                }
                
                
                return;  
            }  
        }  
    %>  
      


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
        <h2><u>Engineer Registration</u></h2>
                <br>
                <form action='<%= request.getRequestURI() %>' method="POST">
                
                <table border="0">
                <tbody>
                    <tr>
                        <td><b>NAME</b></td>
                        <td><input type="text" name="name" value='<%= form.getName() %>' /></td>
                        <td><font color=red><%= form.getErrorMessage("name") %></font></td>
                    </tr>
                    <tr>
                        <td><b>ADDRESS</b></td>
                        <td><input type="text" name="add" value='<%= form.getAdd() %>' /></td>
                        <td><font color=red><%= form.getErrorMessage("add") %></font></td>
                    </tr>
                    <tr>
                        <td><b>CONTACT</b></td>
                        <td><input type="text" name="contact" value='<%= form.getContact() %>' /></td>
                        <td><font color=red><%= form.getErrorMessage("contact") %></font></td>
                    </tr>
                    <tr>
                        <td><b>EMAIL ID</b></td>
                        <td><input type="text" name="email" value='<%= form.getEmail() %>' /></td>
                        <td><font color=red><%= form.getErrorMessage("email") %></font></td>
                    </tr>
                    <tr>
                        <td><b>AREA</b></td>
                        <td><select name="area">
                                <option>Lucknow</option>
                                <option>Allahabad</option>
                                <option>Kanpur</option>
                                <option>Varanasi</option>
                                <option>Gorakhpur</option>
                                <option>Agra</option>
                                <option>Mathura</option>
                                <option>Aligarh</option>
                                <option>Noida</option>
                                <option>Ghaziabad</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><b>Salary</b></td>
                        <td><input type="text" name="salary" value='<%=form.getSalary()%>' /></td>
                        <td><font color=red><%=form.getErrorMessage("salary") %></font></td>
                    </tr>
                    <tr>
                        <td><b>USERNAME</b></td>
                        <td><input type="text" name="user" value='<%= form.getUser() %>' /></td>
                        <td><font color=red><%= form.getErrorMessage("user") %></font></td>
                    </tr>
                    <tr>
                        <td><b>PASSWORD</b></td>
                        <td><input type="password" name="pass1" value='<%= form.getPass1() %>' /></td>
                        <td><font color=red><%= form.getErrorMessage("pass1") %></font></td>
                    </tr>
                    <tr>
                        <td><b>CONFIRM PASSWORD</b></td>
                        <td><input type="password" name="pass2" value='<%= form.getPass2() %>' /></td>
                        <td><font color=red><%= form.getErrorMessage("pass2") %></font></td>
                    </tr>
                </tbody>
            </table>
                    <br><br>
                <input type="submit" value="Register" /><input type="reset" value="Reset" />
            <input type="HIDDEN" name="process" value="true"> 
                
            </form>
          
                
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
<%!  
        // Define error messages  
        java.util.Map errorMap = new java.util.HashMap();  
        public void jspInit() {  
            errorMap.put(MyForm3.ERR_NAME_BLANK, "Please enter name");  
            errorMap.put(MyForm3.ERR_ADD_BLANK, "Please enter address");  
            errorMap.put(MyForm3.ERR_CONTACT_BLANK, "Please enter mobile no.");  
            errorMap.put(MyForm3.ERR_CONTACT_LENGTH, "Contact should be 10 digit");  
            errorMap.put(MyForm3.ERR_CONTACT_INVALID, "Invalid contact no.");
            errorMap.put(MyForm3.ERR_EMAIL_BLANK, "Please enter email id");  
            errorMap.put(MyForm3.ERR_EMAIL_INVALID, "Please enter valid email id");  
            errorMap.put(MyForm3.ERR_USER_BLANK, "Please enter username");  
            errorMap.put(MyForm3.ERR_USER_EXISTS, "Username already exists");  
            errorMap.put(MyForm3.ERR_PASS_BLANK, "Please enter password"); 
            errorMap.put(MyForm3.ERR_PASS_LENGTH, "Length should be 5 or more");  
            errorMap.put(MyForm3.ERR_PASS_MATCH, "Password does not match");  
            errorMap.put(MyForm3.ERR_SALARY_BLANK, "Please enter the salary");  
            errorMap.put(MyForm3.ERR_SALARY_INVALID, "Invalid salary");  
                                             
        }  
    %>  