<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab_3_3.aspx.cs" Inherits="Lab_3_3.Lab_3_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        //function pageLoad() {
        //    var pm = Sys.WebForms.PageRequestManager.getInstance();
        //    pm.add_endRequest(endRequest);
        //}
        //function endRequest(sender, args) {
        //    alert(args.get_error().message);
        //}

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" OnAsyncPostBackError="ScriptManager1_AsyncPostBackError" runat="server" ></asp:ScriptManager>
     <script type="text/javascript">
         var prm = Sys.WebForms.PageRequestManager.getInstance();
            prm.add_initializeRequest(InitializeRequest);
        var pm = Sys.WebForms.PageRequestManager.getInstance();
        pm.add_initializeRequest(InitializeRequest);
        function InitializeRequest(sender, args) {
            if (pm.get_isInAsyncPostBack()) {
                args.set_cancel(true);
            }
        }
        function InitializeRequest(sender, args) {
           if (prm.get_isInAsyncPostBack()) {
            args.set_cancel(true);
           }
         }

        function AbortPostBack() {
            alert("AbortPostBack");
           
            if (prm.get_isInAsyncPostBack()) {
                prm.abortPostBack();
            }
         }
       </script>
        <asp:UpdatePanel ID="UpdatePanel"  runat="server">
            <ContentTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="+" OnClick="Button1_Click"/>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel1"  runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="*" OnClick="Button2_Click" />
                <asp:Timer ID="Timer1" runat="server" Interval="5000" ontick="Timer1_Tick"/>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                Servers Call ...
                <input type="button" id="Button4" onclick="AbortPostBack()" value="Cancel" /> 
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:RadioButton ID="RadioButton1" runat="server" />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button1_Click"/>
    </form>
</body>
</html>
