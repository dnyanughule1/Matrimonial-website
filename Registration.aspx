<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Matrimony.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {margin: 0;}
    </style>
     <script type="text/javascript">
    function validate(msg) {
        alert(msg);
    }
     </script>
</head>
<body>
     
        <div style="background-color: #CCFFCC; height:1200px; text-align:center;">
             <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" Height="80px">
                <br />
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Register New User" ForeColor="Blue"></asp:Label>
            </asp:Panel>
           <form id="form1" runat="server">
                 <div style="box-shadow: 5px 10px; border: 1px solid #ff0000; width:704px; text-align:center; display:inline-block;">
                

                     <br />

                     <asp:Label ID="Label8" runat="server" Text="Name" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_name" runat="server" Font-Bold="True" Font-Size="Large"></asp:TextBox>

                <br /><br />

                      <asp:Label ID="Label14" runat="server" Text="Gender" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:DropDownList ID="DropDownList_gender" runat="server" Font-Bold="True" Font-Size="Large" Width="261px">
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                     </asp:DropDownList>
                     <br /><br />

                <asp:Label ID="Label7" runat="server" Text="Age" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_age" runat="server" Font-Bold="True" Font-Size="Large" type="number"></asp:TextBox>

                <br /><br />
                
                <asp:Label ID="Label4" runat="server" Text="Mobile Number" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_mobile" runat="server" Font-Bold="True" Font-Size="Large" type="number"></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label1" runat="server" Text="Address" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_address" runat="server" Font-Bold="True" Font-Size="Large" ></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label2" runat="server" Text="City" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_city" runat="server" Font-Bold="True" Font-Size="Large" ></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label3" runat="server" Text="Caste" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_caste" runat="server" Font-Bold="True" Font-Size="Large"></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label5" runat="server" Text="Religion" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox_religion" runat="server" Font-Bold="True" Font-Size="Large" ></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label6" runat="server" Text="Ocuupation" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_occupation" runat="server" Font-Bold="True" Font-Size="Large" ></asp:TextBox>

                

                <br /><br />
                <asp:Label ID="Label10" runat="server" Text="Monthly Salary" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_salary" runat="server" Font-Bold="True" Font-Size="Large" ></asp:TextBox>

                
                <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Text="Profile Picture" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
                
                      <br /><br />
                <asp:Label ID="Label9" runat="server" Text="Username" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_username" runat="server" Font-Bold="True" Font-Size="Large" ></asp:TextBox>

                      <br /><br />
                <asp:Label ID="Label12" runat="server" Text="Password" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_password" runat="server" Font-Bold="True" Font-Size="Large" TextMode="Password" ></asp:TextBox>

                 
                 <br /><br />
                    <asp:Button ID="Button_register" runat="server" Text="Register" BackColor="#FF3300" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="5px" Height="54px" Width="109px" OnClick="Button_register_Click"   />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_clear" runat="server" Text="Clear" BackColor="#FF3300" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="5px" Height="54px" style="margin-right: 0px" Width="109px"/>
                <br /><br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginForm.aspx"  ForeColor="#FF6600">Login (Existing User)</asp:HyperLink> <br /><br />
                
                 
                </div>
             </form>
         </div>
          
</body>
</html>

