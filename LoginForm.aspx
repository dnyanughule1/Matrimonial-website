<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Matrimony.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script type="text/javascript">
    function validate(msg) {
        alert(msg);
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 900px; text-align: center;">
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" Height="100px">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Matrimonial Management System" ForeColor="Blue"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Height="550px" BackColor="#CCFFCC">
                <br /><br /><br />
                <div style="box-shadow: 5px 10px; border: 1px solid #ff0000; width:627px; text-align:center; display:inline-block;">
                <br /><br /><br />
                <asp:Label ID="Label3" runat="server" Text="UserName" Font-Bold="True" Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_username" runat="server" Font-Bold="True" Font-Size="Large"></asp:TextBox>

                <br /><br />
                <asp:Label ID="Label4" runat="server" Text="Password" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox_password" runat="server" TextMode="Password" Font-Bold="True" Font-Size="Large"></asp:TextBox>
                
                 <br /><br />
                    <asp:Button ID="Button_login" runat="server" Text="Login" BackColor="#FF3300" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="5px" Height="54px" Width="109px" OnClick="Button_login_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_clear" runat="server" Text="Clear" BackColor="#FF3300" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="5px" Height="54px" style="margin-right: 0px" Width="109px"/>
                <br /><br /><br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx"  ForeColor="#FF6600">SignUp (New User)</asp:HyperLink> <br /><br />
                </div>
                

               <br /><br /><br />

            </asp:Panel>
             <asp:Panel ID="Panel2" runat="server" BackColor="#FFFFCC" Height="100px">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Copyright : @2022" ForeColor="Blue"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>