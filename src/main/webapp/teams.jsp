<%-- 
    Document   : teams
    Created on : Jan 26, 2021, 11:17:19 AM
    Author     : Chris.Cusack
--%>

<!-- Joe Ekstrom  -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="WEB-INF/jspf/declarativemethods.jspf" %>
<%@taglib uri="WEB-INF/studentDropdown.tld" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dev Teams</title>
        <%@include file="/WEB-INF/jspf/header.jspf" %>
        <style>
            .container{
                padding:20px;
            }

            .student-select{
                width:275px;
            }

            .blue{
                color:blue;
            }
        </style>
    </head>
    <body>
        <%@include file="/WEB-INF/jspf/navigation.jspf" %>
        <h1>Dev Teams</h1>

        <div class="container">
          

          
            <form method="post">
               <br /><br />  
				<label>Student 1</label>
				<s:studentdropdown name="dd1" className="select 1"/><br>
				<label>Student 2</label>
				<s:studentdropdown name="dd2" className="select 2"/><br>
                <button class="btn btn-primary" name="btnSubmit">Create Team</button>
            </form>
           

        </div>

        <%@include file="/WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
