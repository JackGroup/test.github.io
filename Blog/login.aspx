<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Blog.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3school.com.cn">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 180px;
        }
    </style>
</head>
<body style ="background: url('image/background4.jpg')">
    <form id="form1" runat="server">
    <table style="width: 25%; margin-top: 200px; color: white; background: url('image/彩色花朵.gif');"
        border="1" align="center">
        <tr>
            <td colspan="2" align="center" style="font-size: x-large; font-family: 微软雅黑; color: #FF0000;">
                账户登录
            </td>
        </tr>
        <tr>
            <td align="center" width="80">
                账户
            </td>
            <td class="style1">
                <asp:TextBox ID="txtAccount" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" width="80">
                密码
            </td>
            <td class="style1">
                <asp:TextBox ID="txtPassword" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnLogin" runat="server" Text="登录" BorderColor="#CCFFFF" BorderStyle="Dashed"
                    Font-Size="Medium" Width="60px" OnClick="btnLogin_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="取消" BorderColor="#CCFFFF" BorderStyle="Dashed"
                    Font-Size="Medium" Width="60px" onclick="btnCancel_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
