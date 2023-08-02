<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Matrimony.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {margin: 0;}

        ul.topnav {
          list-style-type: none;
          margin: 0;
          padding: 0;
          overflow: hidden;
          background-color: #8f0404;
        }

        ul.topnav li {float: left;}

        ul.topnav li a {
          display: block;
          color: white;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
        }

        ul.topnav li a:hover:not(.active) {background-color: #111;}

        ul.topnav li a.active {background-color: #de5f5f;}

        ul.topnav li.right {float: right;}

        @media screen and (max-width: 600px) {
          ul.topnav li.right, 
          ul.topnav li {float: none;}
        }
       </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCFFCC; height:1200px;">
            <br />
             <ul class="topnav">
              <li><a class="active" href="Home.aspx">Home</a></li>
              <li><a href="MyRequest.aspx">My Requests</a></li>
              <li><a href="MyRespond.aspx">My Responds</a></li>
              <li><a href="Search.aspx">Search</a></li>
              <li><a href="MyProfile.aspx">My Profile</a></li>
              <li><a href="Logout.aspx">Logout</a></li>
            </ul>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server"  ImageUrl ="./image.jpg" Width="900px" Height="300px" ImageAlign="Middle"/>
            </h1>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="false"/>
          
            <h1>Welcome...<%=Session["username"]  %></h1>
            <br /><br />

            <h4>Team Shaadi.com' is a set of hardworking people, with a mission, and a promise. 'Team Shaadi.com' is dedicated to providing you with the ultimate partner search experience and believes that no other matchmaking service can provide you with the value that Shaadi.com can. So much so, that our service is backed by an unconditional guarantee.</h4>

            <h4>Please take some time to get to know us better through the links that we have provided on this page. Perhaps the information will help you decide if we are the right solution for you or somebody you know.</h4>
            <br /><br />
              <h4>I thank you for visiting us and hope that we can help you meet the right person.</h4>


        </div>
    </form>
</body>
</html>
