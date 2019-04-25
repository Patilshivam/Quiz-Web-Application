<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
        <title>Login Form</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    
    <body>

        <div id="main_container">
            <div class="main_content">
                <div id="header"></div>
                <div class="top_center_box"></div>
                <div class="center_box">
                    <div id="menu_tab">                                     
                        <ul class="menu">                                                                               
                            <li><a href="home.jsp" class="nav">Home</a></li>
                            <li class="divider"></li>
                                    
                            <li><a href="takequiz.jsp" class="nav">Take Quiz</a></li>
                            <li class="divider"></li>
                                    
                            <li><a href="ask.jsp" class="nav">Ask Question</a></li>
                            <li class="divider"></li>
                                    
                            <li><a href="contact.html" class="nav">Contact</a></li>
                            <li class="divider"></li>
                                    
                            <li><a href="makequiz.jsp" class="nav">Make quiz</a></li>
                            <li class="divider"></li>
                                      
                            <li><a href="register.jsp" class="nav">Register</a></li> 	
                        </ul>
                    </div> 

                    <div class="middle_box">
                        <div class="middle_box_text_content">
                            <div class="middle_box_title"></div>
                                <p class="middle_text"></p>
                        </div>
                    </div>

                    <div class="left_content">
                        <%
                            if (request.getAttribute("notlogin_msg") != null) {
                                out.print("<font size='2' color='red' m>");
                                out.print(request.getAttribute("notlogin_msg"));
                                out.print("</font>");
                            }
                        %>
                        <%
                            if (request.getAttribute("Error") != null) {
                                out.print("<font size='2' color='red' m>");
                                out.print(request.getAttribute("Error"));
                                out.print("</font>");
                            }
                        %>
                                
                        <div class="calendar_box">

                            <div class="calendar_box_content">
                                <h1>Welcome to Quiz Application</h1>
                                    <form method="post" action="loginprocess.jsp" >
                                        <table>
                                            <tr><td style="color:navy;"><B> Login Form</B></td></tr>
                                            <tr><td>Category:</td><td>
                                                <select name="category">
                                                    <option>Select a Category</option>
                                                    <option>Teacher</option>
                                                    <option>Student</option>
                                                </select>
                                            </td></tr>
                                                
                                            <tr><td>User Name:</td><td>
                                                <input type="text" name="username"/>
                                            </td></tr>

                                            <tr><td>Password:</td><td>
                                                <input type="password" name="userpass"/>
                                            </td></tr>	

                                            <tr><td></td><td>
                                                <input type="submit" value="Sign in"/> 
                                                <a href="register.jsp">Register</a>
                                            </td></tr>
                                        </table>
                                    </form>
                            </div>                                    
                        </div>

                        <div class="news_left">
                            <h1>Latest News</h1>
                            <div class="news_box">
                                <div class="calendar">23</div>
                                <div class="news_content">
                                    <p><span></span>
                                        Now learn Data-structure free of cost
                                    </p><br>
                                    <a href="https://www.javatpoint.com/data-structure-tutorial" class="read_more">read more...</a>                        
                                </div>
                            </div>
                            <br>
                            <div class="news_box">
                                <div class="calendar">2</div>
                                <div class="news_content">
                                    <p><span></span>
                                        Now learn Algorithm free of cost
                                    </p>
                                    <a href="https://www.tutorialspoint.com/design_and_analysis_of_algorithms/" class="read_more">read more...</a>                        
                                </div>
                            </div>                 
                        </div>
                    </div>
                    <!--end of left content-->

                        <div class="right_content">
                            <h1>Latest Technology</h1>
                            <div class="project_box">
                                <a href="https://www.udemy.com/artificial-intelligence-az/"><img src="images/AI.jpg" alt="" title="" class="left_img" border="0"></a>
                                <p>
                                    <span> Description:</span><br>
                                    AI is future of tomorrow<br> We have to make hand dirty with AI
                                </p>
                            </div>

                            <div class="project_box">
                                <a href="https://www.udemy.com/topic/internet-of-things/"><img src="images/IOT.jpg" alt="" title="" class="left_img" border="0"></a>
                                <p>
                                    <span> Description:</span><br> IOT is a future of tomorrow<br> We have to make hand dirty with IOT
                                </p>
                            </div>
                            <br>    
                                  
                            <div>
                                <h1><br>Our main Services</h1>          
                            </div>                   
                            <div class="services">
                                <ul>                                        
                                    <li><a href="https://www.geeksforgeeks.org/java/">Java tutorial</a></li>
                                    <li><a href="https://www.geeksforgeeks.org/introduction-java-servlets/">Java-Enterprise Edition tutorial</a></li>
                                </ul>
                            </div>

                            <div class="services">
                                <ul>                                        
                                    <li><a href="https://www.w3schools.com/html/">HTML-5 tutorial</a></li>
                                    <li><a href="https://www.w3schools.com/css/">CSS tutorial</a></li>
                                    <li><a href="https://www.w3schools.com/js/">Java-Script tutorial</a></li>
                                </ul>
                            </div>                                
                        </div><!--end of right content-->
                    <div id="footer"></div>
                </div> <!--end of center box-->
            </div> <!--end of main content-->
        </div> <!--end of main container-->
    </body>
</html>
