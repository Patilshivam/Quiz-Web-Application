<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
    <jsp:include page="header.jsp"></jsp:include>
    <%
        String islogin = (String) session.getAttribute("islogin");
        if (islogin == null) {
            request.setAttribute("notlogin_msg", "Sorry,Please do Login first");
    %>
    <jsp:forward page="index.jsp"></jsp:forward>
    <%
        }
    %>
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
                out.print("<font size='2' color='red' >");
                out.print(request.getAttribute("Error"));
                out.print("</font>");
            }
        %>
        <%
            if (request.getAttribute("finished") != null) {
                out.print("<font size='2' color='navy'>");
                out.print("<B>");
                out.print(request.getAttribute("finished"));
                out.print("<B>");
                out.print("</font>");
            }
            if (request.getAttribute("category") != null) {
                out.print("<font size='2' color='red' m>");
                out.print(request.getAttribute("category"));
                out.print("</font>");
            }
        %>
        <div class="calendar_box">

            <div class="calendar_box_content">

                <h1>Welcome to Quiz Application</h1>
                <marquee direction="left" style="color: navy;" onmouseover="stop()" onmouseout="start()"><B>Assess Yourself 
                        by taking quiz on various subjects</B></marquee>
                <p>
                    <font style="color: navy;">Now Teacher and Student can work together<br> 
                    online.Tutors are most welcomed to my site <br> they can create Quiz simply 
                    by clicking Make-Quiz<br> Quiz link, And Students can appear in quiz based on selected subject. 
                    </font>
                </p>

            </div>
        </div>

        <div class="news_left">
            <h1>Latest News</h1>
            <div class="news_box">
                <div class="calendar">1</div>
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

