<%-- 
    Document   : contact
    Created on : Sep 12, 2023, 10:00:04 AM
    Author     : Tanmay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact us</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="row">
            <jsp:include page="header.jsp"/>
            <div class="shadow p-3 mb-5 bg-body-tertiary rounded">
            <div class="row">
                <div class="col-sm-6" style="height: 600px;" >
                   <img src="images/contact.gif" style="width:100%;height:100%;" />
                </div>
                <div class="col-sm-6" style="min-height: 600px;background-color: aliceblue;" align="center">
                    <img src="images/contact-us.png" alt="alt" height="100vw;"/>
                    <h2 style="text-align: center; color:blue; margin-top: 10px;">Enquiry Form</h2>
                    <form class="form-group" method="post" action="controller.jsp">
                        <input type="hidden" name="page" value="contactus" />
                        <table class="table" style="width:80%;margin:auto;">
                            <tr>
                                <td>
                                    Enter name : 
                                </td>
                                <td>
                                    <input type="text" name="name" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Select gender : 
                                </td>
                                <td>
                                    <input type="radio" name="gender" value="male" class="form-check-input"/>Male
                                    <input type="radio" name="gender" value="female" class="form-check-input"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Enter address : 
                                </td>
                                <td>
                                    <textarea name="address" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Enter Contact no : 
                                </td>
                                <td>
                                    <input type="number" name="contactno" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Enter e-mail :
                                </td>
                                <td>
                                    <input type="text" name="email" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <td>Enquiry Text : </td>
                                <td>
                                    <textarea name="enquirytext" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            </div>
            <div>
                <jsp:include page="footer.jsp" />
            </div>
        </div>
    </body>
</html>
