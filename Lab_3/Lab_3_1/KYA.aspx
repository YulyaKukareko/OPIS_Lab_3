<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KYA.aspx.cs" Inherits="Lab_3_1.KYA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script runat="server">
        void ServerValidation(object source, ServerValidateEventArgs args)
        {
            try
            {
                int n = int.Parse(args.Value);
                for(int i = 2; i <= Math.Sqrt(n); i++)
                {
                    if(n % i == 0)
                    {
                        args.IsValid = false;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                args.IsValid = false;
            }
        }
    </script> 
</head>
<body>
    <form id="form1" runat="server">
        Task_1, 2:<br /><br />
        <asp:Label ID="TextBoxError" Text="Enter text: " runat="server" /><br /><br />

        <asp:TextBox ID="TextBoxValid" runat="server"></asp:TextBox><br /><br />

        <asp:RequiredFieldValidator id="RequiredTextBoxValidator" ValidationGroup="InputElemValid" EnableClientScript="false" 
            ControlToValidate="TextBoxValid" Display="Static"  ErrorMessage="TextBox is empty" runat="server"/><br /><br />

        <asp:Label ID="DropDownListError" Text="Chose item" runat="server"/><br /><br />

        <asp:DropDownList ID="DropDownListValid" runat="server"></asp:DropDownList><br /><br />

        <asp:RequiredFieldValidator id="RequiredListValidaror"  ValidationGroup="InputElemValid" EnableClientScript="false"
            ControlToValidate="DropDownListValid" Display="Static"  ErrorMessage="DropDownList is empty" runat="server"/><br /><br />

        Task_2:<br />
        <asp:Label ID="LabelNumValid" Text="Enter number from 100 to 200: " runat="server" /><br /><br />

        <asp:TextBox ID="TextBoxRangeNumValid" runat="server"></asp:TextBox><br /><br />

        <asp:RangeValidator id="RangeNum" ControlToValidate="TextBoxRangeNumValid" MinimumValue="100" MaximumValue="200" Type="Integer"
           EnableClientScript="false" Text="The value must be from 100 to 200!" runat="server" ValidationGroup="InputElemValid"/>

        <asp:Label ID="LabelDateValid" Text="Enter date from 01.01.2011 to 31.12.2011 " runat="server"/><br /><br />

        <asp:TextBox ID="TextBoxRabgeDateValid" runat="server"></asp:TextBox><br /><br />

        <asp:RangeValidator id="DateRangeValid" ControlToValidate="TextBoxRabgeDateValid" MinimumValue="2011/01/01"
            MaximumValue="2011/12/31" Type="Date" EnableClientScript="false" Text="The value must be from 01.01.2011 to 31.12.2011!" 
            runat="server" ValidationGroup="InputElemValid"/><br />

        Task_3:<br /><br />

        <asp:Label ID="LabelCompareValid" Text="Enter date less then date 2" runat="server"/><br /><br />

        <asp:TextBox ID="TextBoxCompare" runat="server"></asp:TextBox><br /><br />

        <asp:TextBox ID="TextBoxCompare_2" runat="server"></asp:TextBox><br /><br />

        <asp:CompareValidator runat="server" id="CmpDate" controltovalidate="TextBoxCompare" controltocompare="TextBoxCompare_2"
            operator="LessThan" type="Date" errormessage="The first date should be smaller than the second date!"
            ValidationGroup="InputElemValid" EnableClientScript="false" /><br />

        Task_4:<br /><br />

        <asp:Label ID="LabelEmailValid" Text="Enter validEmail: " runat="server"/><br /><br />

        <asp:TextBox ID="TextBoxEmailValid" runat="server"></asp:TextBox><br /><br />

        <asp:RegularExpressionValidator id="RegularExpressionValidator1" ControlToValidate="TextBoxEmailValid" 
            ValidationGroup="InputElemValid" ValidationExpression="([a-z0-9_\.-]+\@[\da-z\.-]+\.[a-z\.]{2,6})"
            Display="Static" ErrorMessage="Invalid email!" EnableClientScript="False" runat="server"/><br />

        Task_5:<br /><br />

        <asp:Label ID="CustomValidator" Text="Enter simple number: " runat="server" /><br /><br />

        <asp:TextBox ID="TextBoxSimpeNumValidator" runat="server"></asp:TextBox><br /><br />

        <asp:CustomValidator id="CustomValidator1" ControlToValidate="TextBoxSimpeNumValidator" Display="Static" ErrorMessage="Not a simple number!"
           ForeColor="green" Font-Names="verdana" Font-Size="10pt" OnServerValidate="ServerValidation" ValidationGroup="InputElemValid"
           ClientValidationFunction="ClientValidate" EnableClientScript="False" runat="server"/><br />

        <asp:Button ID="ButtonValidate" causesvalidation="true" ValidationGroup="InputElemValid" runat="server" Text="Validate"/><br /><br />

    </form>
</body>
</html>
<script language="javascript"> 
   function ClientValidate(source, arguments)
   {
       for (var i = 0; i <= Math.sqrt(arguments.Value); i++) {
           if (arguments.Value % i == 0) {
               arguments.IsValid = false;
               break;
           }
       }
   }
</script>