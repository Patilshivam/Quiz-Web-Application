<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <script>
            var request;
            function get1() {
                window.location = 'get1.jsp';
            }
            function get() {
                var v = document.getElementsByName('radio').value;
                window.location = "get.jsp?ans=" + v;
            }
            function sendInfo()
            {
                var v = document.myform.subject.value;
                var url = "findname2.jsp?val=" + v;
                if (window.XMLHttpRequest) {
                    request = new XMLHttpRequest();
                }
                else if (window.ActiveXObject) {
                    request = new ActiveXObject("Microsoft.XMLHTTP");
                }
                try
                {
                    request.onreadystatechange = getInfo;
                    request.open("GET", url, true);
                    request.send();
                }
                catch (e) {
                    alert("Unable to connect to server");
                }
            }

            function getInfo() {
                if (request.readyState == 4) {
                    var val = request.responseText;
                    document.getElementById('location').innerHTML = val;
                }
            }
            function viewAll(name)
            {
                var v = name;
                var url = "findname3.jsp?val=" + v;
                if (window.XMLHttpRequest) {
                    request = new XMLHttpRequest();
                }
                else if (window.ActiveXObject) {
                    request = new ActiveXObject("Microsoft.XMLHTTP");
                }
                try
                {
                    request.onreadystatechange = viewInfo;
                    request.open("GET", url, true);
                    request.send();
                }
                catch (e) {
                    alert("Unable to connect to server");
                }
            }
            function viewInfo() {
                if (request.readyState == 4) {
                    var val = request.responseText;
                    document.getElementById('location').innerHTML = val;
                }
            }
        </script>
    </head>

    <jsp:include page="header.jsp"></jsp:include>

    <%
        String islogin = (String) session.getAttribute("islogin");
        if (islogin == null) {
            request.setAttribute("notlogin_msg", "Sorry,Please do Login first");

    %>
    <jsp:forward page="index.jsp"></jsp:forward>
    <%    }
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
        %>

        <div class="calendar_box2">

            <div class="calendar_box_content">

                <h1>Welcome to my Site</h1>
                <marquee direction="left" style="color: navy;" onmouseover="stop()" onmouseout="start()"><B>Assess Yourself by 
                        taking quiz on various subject</B></marquee>

                <form method="post" action="get1.jsp">
                    <table><tr><td>
                                <%
                                    String question = (String) session.getAttribute("question");
                                    String option1 = (String) session.getAttribute("option1");
                                    String option2 = (String) session.getAttribute("option2");
                                    String option3 = (String) session.getAttribute("option3");
                                    String option4 = (String) session.getAttribute("option4");
                                    out.print(question);
                                %>
                                <%
                                    if ((String) request.getParameter("radio") != null) {
                                        String ans = (String) request.getParameter("radio");
                                        System.out.println("ans on set" + ans);
                                        session.setAttribute("ans", ans);

                                    }%>
                            </td></tr>
                        <tr><td><input type="radio" name="radio" value="<%=option1%>" /><%=option1%></td></tr>	
                        <tr><td><input type="radio" name="radio" value="<%=option2%>"/><%=option2%></td></tr>	
                        <tr><td><input type="radio" name="radio" value="<%=option3%>"/><%=option3%></td></tr>	
                        <tr><td><input type="radio" name="radio" value="<%=option4%>"/><%=option4%></td></tr>			

                        <tr><td></td><td><input type="submit" value="Next"/></td></tr>
                    </table>
                </form>

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

    </div>
    <!--end of right content-->

    <div id="footer"></div>

</div> <!--end of center box-->
</div> <!--end of main content-->
</div> <!--end of main container-->
</body></html>

