<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 78%;
            height: 106px;
        }
        .auto-style2 {
            width: 335px;
        }
        .auto-style3 {
            width: 296px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <table class="auto-style1" border="2">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Upload Image ( Only JPEG and Max-Size 50kb)"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="265px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Upload" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" Height="214px" ImageUrl="~/blank-profile.png" Width="230px" />
            <br />
           
        </div>
    </form>
</body>
</html>