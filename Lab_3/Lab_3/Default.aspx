<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab_3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Submit1 {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Элемент HtmlInputButton
        <input id="Button" type="button" value="button" runat="server" onserverclick="Button_OnServerClick" /><br />
        Элемент HtmlInputSubmit
        <input id="Submit" type="submit" value="submit" runat="server" onserverclick="Submit_OnServerClick" /><br />
        Элемент HtmlInputFile
        <input id="InputFile" type="file" value="Обзор..."/><br />
        Элемент HtmlInputText
        <input id="InputText" type="text" runat="server" onserverchange="InputText_OnServerChangeText" onclick="InputText_OnServerClick" /><br />
        Элемент HtmlInputPassword
        <input id="InputPassword" type="password" runat="server" value="InputPassword" onserverchange="InputPassword_OnServerChange"  /><br />
        Элемент HtmlCheckBox
        <input id="CheckBox" name="CheckBox" title="CheckBox" type="checkbox" runat="server" value="CheckBox" onserverchange="CheckBox_OnServerChange"  /><br />
        Элемент HtmlRadioButton
        <input id="CheckBox1" name="RadioButton" title="RadioButton" type="radio" runat="server" value="RadioButton" onserverchange="RadioButton_OnServerChange"  /><br />
        Элемент HtmlTextarea
        <textarea runat="server" onserverchange="InputTextArea_OnServerChange"></textarea>
        Элемент HtmlSelect
        <select id="Select" runat="server" onserverchange="Select_OnServerChange"></select>
        Элемент HtmlInputReset
        <input id="Reset" type="reset" value="reset" runat="server" /><br />
    </form>
</body>
</html>
