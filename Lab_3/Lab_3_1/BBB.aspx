<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBB.aspx.cs" Inherits="Lab_3_1.BBB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="FIO" Text="Enter FIO: " runat="server" /><br /><br />

        <asp:TextBox ID="TextBoxFIO" runat="server"></asp:TextBox><br />

        <asp:RequiredFieldValidator id="RequiredTextBoxValidator" ValidationGroup="InputElemValid" EnableClientScript="false" 
            ControlToValidate="TextBoxFIO" Display="Static"  ErrorMessage="FIO is empty" runat="server"/><br />

        <asp:RegularExpressionValidator id="RegularExpressionFIOValidator" ControlToValidate="TextBoxFIO" 
            ValidationGroup="InputElemValid" ValidationExpression="^[а-яА-Я]+$"
            Display="Static" ErrorMessage="Invalid FIO!" EnableClientScript="False" runat="server"/><br />

        <asp:Label ID="BirthDate" Text="Enter birthday: " runat="server" /><br /><br />

        <asp:TextBox ID="TextBoxBirthDate" runat="server"></asp:TextBox><br />

        <asp:CompareValidator ID="CompareEndTodayValidator" Operator="LessThan" type="String" ControltoValidate="TextBoxBirthDate"
            ErrorMessage="The 'End Date' must be before today" EnableClientScript="false" ValidationGroup="InputElemValid" runat="server" /><br /><br />
    
        <asp:Label ID="LabelEmailValid" Text="Enter validEmail: " runat="server"/><br /><br />

        <asp:TextBox ID="TextBoxEmailValid" runat="server"></asp:TextBox><br />

        <asp:RegularExpressionValidator id="RegularExpressionValidator1" ControlToValidate="TextBoxEmailValid" 
            ValidationGroup="InputElemValid" ValidationExpression="([a-z0-9_\.-]+\@[\da-z\.-]+\.[a-z\.]{2,6})"
            Display="Static" ErrorMessage="Invalid email!" EnableClientScript="False" runat="server"/><br /><br />

        <asp:Label ID="LabelPrice" Text="Enter number from 1000 to 2000: " runat="server" /><br /><br />

        <asp:TextBox ID="TextBoxRangePriceValid" runat="server"></asp:TextBox><br />

        <asp:RangeValidator id="RangeNum" ControlToValidate="TextBoxRangePriceValid" MinimumValue="1000" MaximumValue="2000" Type="Integer"
           EnableClientScript="false" Text="The value must be from 1000 to 2000!" runat="server" ValidationGroup="InputElemValid"/><br /><br />

        <asp:Label ID="LabelPassword" Text="Enter password (shold be not less the 7 number): " runat="server" /><br /><br />

        <asp:TextBox ID="TextBoxPasswords" TextMode="Password" runat="server"></asp:TextBox><br />

        <asp:RegularExpressionValidator id="RegularExpressionValidator2" ControlToValidate="TextBoxPasswords" 
            ValidationGroup="InputElemValid" ValidationExpression="/^[a-z]{0, 7}$/"
            Display="Static" ErrorMessage="Invalid password!" EnableClientScript="False" runat="server"/><br /><br />

        <asp:Button ID="ButtonValidate" causesvalidation="true" ValidationGroup="InputElemValid" runat="server" Text="Validate"/><br /><br />

    </form>
</body>
</html>
