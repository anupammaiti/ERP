<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Menu</title>

        <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
         <script  src="js/kendo.all.min.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/common_js/JQueryAjaxCall.js"></script>
        <script type="text/javascript" src="js/Guest/GuestJS.js"></script>
        <link rel="stylesheet" href="css/menu.css"/>
        <link rel="stylesheet" href="css/kendo.common.min.css" />
        <link rel="stylesheet" href="css/kendo.default.min.css" />
        <link rel="stylesheet" href="css/kendo.default.mobile.min.css" />
    </head>
    <body>
        <span id="dateandtime"></span>
        <div id="menu" align="left">
            <ul class="menu">
                <li><a href="guest_user_home.res" class="parent"><span>LayOut</span></a></li>
                <li><a href="#" class="parent"><span>Form</span></a>
                    <div>
                        <ul>
                            <li>
                                <a href="guest_user_form.res"><span>Guest Form</span></a>		
                            </li>

                        </ul>
                    </div>
                </li>
                <li>
                    <a href="rep_villadetails.res" target="_blank"><span>Villa Details</span></a>
                </li>

                <li class="last"><a href="logout.res"><span>logout</span></a></li>
            </ul>
        </div>




        <script type="text/javascript">
            $(document).ready(function () {
                $("body div:last").remove();
            });
        </script>

    </body>
</html>