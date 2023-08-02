<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyRequest.aspx.cs" Inherits="Matrimony.MyRequest" %>

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
              <li><a class="active" href="MyRequest.aspx">My Requests</a></li>
             <li><a href="MyRespond.aspx">My Responds</a></li>
              <li><a  href="Search.aspx">Search</a></li>
              <li><a  href="MyProfile.aspx">My Profile</a></li>
              <li><a href="Logout.aspx">Logout</a></li>
            </ul>
             <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" Height="80px">
                <br />
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" Text="My Requests" ForeColor="Blue"></asp:Label>
            </asp:Panel>
           <form id="form1" runat="server">
                 <div style="box-shadow: 5px 10px; border: 1px solid #ff0000; width:704px; text-align:center; display:inline-block;">
                

                      <br /><br />
                <asp:GridView ID="Grid" runat="server"
                AutoGenerateColumns = "false" Font-Names = "Arial"
                Font-Size = "11pt" AlternatingRowStyle-BackColor = "#C2D69B" 
                HeaderStyle-BackColor = "green" AllowPaging ="true"  
                PageSize = "10">
               <Columns>
                <asp:BoundField ItemStyle-Width = "40px"
                 DataField = "SrNo" HeaderText = "SrNo" />
                
               
                   <asp:TemplateField HeaderText="Photo" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                      <ItemTemplate >
                        <asp:Image ID="Image1" runat="server" ImageUrl ='<%# "Upload\\"+Eval("FileName") %>' height="120px" Width="150px" ImageAlign="Middle" />
                      </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField ItemStyle-Width = "120px"
                 DataField = "Name" HeaderText = "Name" />
                <asp:BoundField ItemStyle-Width = "170px"
                 DataField = "Details" HeaderText = "Details" />
                <asp:BoundField ItemStyle-Width = "80px"
                 DataField = "Caste" HeaderText = "Caste" />

                  
               </Columns>
               </asp:GridView>

               
                 
                </div>
             </form>
         </div>
          
</body>
</html>
