<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Matrimony.MyProfile" %>

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
     <script type="text/javascript">
    function validate(msg) {
        alert(msg);
    }
     </script>
</head>
<body>
     
        <div style="background-color: #CCFFCC; height:1200px; text-align:center;">
             <br />
             <ul class="topnav">
              <li><a  href="Home.aspx">Home</a></li>
              <li><a href="MyRequest.aspx">My Requests</a></li>
              <li><a href="MyRespond.aspx">My Responds</a></li>
              <li><a href="Search.aspx">Search</a></li>
              <li><a class="active" href="MyProfile.aspx">My Profile</a></li>
              <li><a href="Logout.aspx">Logout</a></li>
            </ul>
             <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" Height="80px">
                <br />
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" Text="My Profile" ForeColor="Blue"></asp:Label>
            </asp:Panel>
           <form id="form1" runat="server">
                 <div style="box-shadow: 5px 10px; border: 1px solid #ff0000; width:704px; text-align:center; display:inline-block;">
                

                     <br />
                     <asp:Image ID="Image1" runat="server"  height="120px" Width="150px" ImageAlign="Middle" />
                        <br /><br />

                     <asp:Label ID="Label8" runat="server" Text="Name" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_name" runat="server" Font-Bold="True" Font-Size="Large" Enabled="False"></asp:TextBox>

                <br /><br />

                     <asp:Label ID="Label12" runat="server" Text="Gender" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_gender" runat="server" Font-Bold="True" Font-Size="Large" Enabled="False"></asp:TextBox>

                <br /><br />

                <asp:Label ID="Label7" runat="server" Text="Age" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_age" runat="server" Font-Bold="True" Font-Size="Large" type="number" Enabled="False"></asp:TextBox>

                <br /><br />
                
                <asp:Label ID="Label4" runat="server" Text="Mobile Number" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_mobile" runat="server" Font-Bold="True" Font-Size="Large" type="number" Enabled="False"></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label1" runat="server" Text="Address" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_address" runat="server" Font-Bold="True" Font-Size="Large"  Enabled="False"></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label2" runat="server" Text="City" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_city" runat="server" Font-Bold="True" Font-Size="Large"  Enabled="False"></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label3" runat="server" Text="Caste" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_caste" runat="server" Font-Bold="True" Font-Size="Large" Enabled="False"></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label5" runat="server" Text="Religion" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox_religion" runat="server" Font-Bold="True" Font-Size="Large"  Enabled="False"></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label6" runat="server" Text="Ocuupation" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_occupation" runat="server" Font-Bold="True" Font-Size="Large"  Enabled="False"></asp:TextBox>

                

                <br /><br />
                <asp:Label ID="Label10" runat="server" Text="Monthly Salary" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_salary" runat="server" Font-Bold="True" Font-Size="Large"  Enabled="False"></asp:TextBox>

                
                      <br /><br />
                <asp:Label ID="Label9" runat="server" Text="Username" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_username" runat="server" Font-Bold="True" Font-Size="Large"  Enabled="False"></asp:TextBox>

              <br /><br />
                <asp:Label ID="Label13" runat="server" Text="Password" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_password" runat="server" Font-Bold="True" Font-Size="Large"  Enabled="False"></asp:TextBox>

                 <br /><br />
                 
                </div>
             </form>
         </div>
          
</body>
</html>


