<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserManage.aspx.cs" Inherits="Blog.UserManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table width="100%" style="height: 200px">
<tr>
<td colspan="5" style="height:30px">
    <asp:Button ID="btnAdd" runat="server" Text="新增" onclick="btnAdd_Click" />
</td>
</tr>
<tr >
<th>
        账号</th>
            <th >
                姓名</th>
            <th >
                密码</th>
            <th >
                备注</th>
            <th >
                操作</th>
</tr>
    <asp:Repeater ID="rptUsers" runat="server" onitemcommand="rptUsers_ItemCommand">
    <ItemTemplate>
    <tr>
    <td>
                <%#Eval("Account") %></td>
            <td>
                <%#Eval("Name") %></td>
            <td>
                <%#Eval("Password") %></td>
            <td>
                <%#Eval("Remark") %></td>
                <td>
                    <asp:Button  CommandName="edit" CommandArgument='<%#Eval("UserId") %>' ID="Button1" runat="server" Text="编辑" />
                    <asp:Button CommandName="del" CommandArgument='<%#Eval("UserId") %>'  ID="Button2" runat="server" Text="删除" />
                </td>
    </tr>
    </ItemTemplate>
    </asp:Repeater>
</table>
</asp:Content>
