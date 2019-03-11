<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab_3_4.aspx.cs" Inherits="Lab_3_4.Lab_3_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <strong>Персональная информация</strong>
                </td>
            </tr>
            <tr>
                <td>Введите имя: </td>
                <td><asp:TextBox ID="FirstName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Введите фамилию: </td>
                <td><asp:TextBox ID="LastName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Введите отчество: </td>
                <td><asp:TextBox ID="Patronymic" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Дата рождения: </td>
                <td><asp:TextBox ID="Birthday" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Пол: </td>
                <td><asp:RadioButtonList ID="Gender" runat="server">
                    <asp:ListItem Value="M"></asp:ListItem>
                    <asp:ListItem Value="Ж"></asp:ListItem>
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>Факультет: </td>
                <td><asp:DropDownList ID="Faculty" runat="server">
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Группа: </td>
                <td><asp:TextBox ID="Group" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Год поступления: </td>
                <td><asp:TextBox ID="admissionYear" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Год поступления: </td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Button ID="input" UseSubmitBehavior="false" ValidationGroup="v1" runat="server" Text="" />
        <input id="Reset" type="reset" value="reset" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSName" runat="server" EnableClientScript="false"
                            ErrorMessage="Введите фамилию"
                            ControlToValidate="LastName"  
                            ValidationGroup="v1"
                            Display="None">
    
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidatorGroup" runat="server"  EnableClientScript="false"
                            ErrorMessage="Номер группы 1-100"
                            ControlToValidate="Group" 
                            MaximumValue="100" 
                            MinimumValue="1" 
                            ValidationGroup="v1" 
                            Type="Integer" 
                            Display="None">
        </asp:RangeValidator>
        <asp:ValidationSummary ValidationGroup="v1"
                       DisplayMode="BulletList"
                       EnableClientScript="false"
                       HeaderText="Обнаружены ошибки в следующих полях:"
                       runat="server" />
    </form>
</body>
</html>
