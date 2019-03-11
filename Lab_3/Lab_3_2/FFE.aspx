<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FFE.aspx.cs" Inherits="Lab_3_2.FFE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:Wizard ID="Wizard1" runat="server" OnNextButtonClick="Wizard1_NextButtonClick"  Width="448px" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana"
                          CellPadding="5" ActiveStepIndex="0" Font-Size="Small" >
                    <WizardSteps>
                         <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1" >
                             <table style="width: 100%;">
                                 <tr>
                                     <td><strong>Персональная информация</strong></td>
                                 </tr>
                                 <tr>
                                     <td>Ввведите ФИО:</td>
                                     <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                 </tr>
                                 <tr>
                                     <td>Дата рождения:</td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <asp:Calendar ID="Calendar" runat="server"></asp:Calendar>
                                     </td>
                                 </tr>
                             </table>
                          </asp:WizardStep>
                          <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                              <table style="width: 100%;">
                                  <tr>
                                      <td><strong>Сфера профессиональных интересов</strong></td>
                                  </tr>
                                  <tr>
                                      <td>Выберите любимый язык программирования:</td>
                                  </tr>
                                  <tr>
                                      <td><asp:RadioButtonList id="lsLanguages" runat="server">
                                         <asp:ListItem>PHP</asp:ListItem>
                                         <asp:ListItem>Ruby</asp:ListItem>
                                         <asp:ListItem>C#</asp:ListItem>
                                         <asp:ListItem>JS</asp:ListItem>
                                         <asp:ListItem>Java</asp:ListItem>
                                         <asp:ListItem>GoLang</asp:ListItem>
                                         <asp:ListItem>Pascal</asp:ListItem>
                                         <asp:ListItem>С++</asp:ListItem>
                                         <asp:ListItem>YoptaScript</asp:ListItem>
                                      </asp:RadioButtonList></td>
                                  </tr>
                              </table>
                          </asp:WizardStep>
                          <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
                             <table style="width: 100%">
                                  <tr>
                                      <td><strong>Сфера профессиональных интересов</strong></td>
                                  </tr>
                                  <tr>
                                      <td>Выберите желаемый вид активности:</td>
                                  </tr>
                                 <tr>
                                      <td><asp:CheckBoxList id="CheckBoxList1" runat="server">
                                          <asp:ListItem>Разработка</asp:ListItem>
                                          <asp:ListItem>Поддержка</asp:ListItem>
                                          <asp:ListItem>Тестирвание</asp:ListItem>
                                          <asp:ListItem>Безопасность</asp:ListItem>
                                          <asp:ListItem>Системное администрирование</asp:ListItem>
                                      </asp:CheckBoxList>
                                      </td>
                                 </tr>
                              </table>
                          </asp:WizardStep>
                          <asp:WizardStep ID="WizardStep4" runat="server" Title="Step 4">
                              <table style="width: 100%">
                                  <tr>
                                      <td><strong>Сфера профессиональных интересов</strong></td>
                                  </tr>
                                  <tr>
                                      <td>Вас мотивирует:</td>
                                  </tr>
                                  <tr>
                                      <td>
                                      <asp:ListBox id="ListBox1" runat="server">
                                          <asp:ListItem>Деньги</asp:ListItem>
                                          <asp:ListItem>Слава</asp:ListItem>
                                          <asp:ListItem>Успех</asp:ListItem>
                                          <asp:ListItem>Возможность есть нахаляву</asp:ListItem>
                                          <asp:ListItem>Развитие</asp:ListItem>
                                      </asp:ListBox>
                                      </td>
                                  </tr>
                              </table>
                          </asp:WizardStep>
                          <asp:WizardStep ID="WizardStep5" runat="server" Title="Step 5">
                              <table style="width:100%">
                                  <tr>
                                      <td><strong>Итог</strong></td>
                                  </tr>
                                  <tr>
                                      <td>ФИО: </td>
                                      <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td>День рождения: </td>
                                      <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td>Предпочитаемый ЯП: </td>
                                      <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td>Сфера профессионалных интересов: </td>
                                      <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td>Мотивациооная сфера: </td>
                                      <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                                  </tr>
                              </table>
                          </asp:WizardStep>
                    </WizardSteps>
                </asp:Wizard>
                <br /><br />
                <asp:TextBox ID="TextBox1" Text="View1" style="margin-left: 26px" Width="222px" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Change view" style="margin-left: 50px" OnClick="Button1_Click" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:TreeView ID="TreeView1" runat="server" NodeWrap="true" OnTreeNodeCheckChanged="TreeView1_TreeNodeCheckChanged" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                    <Nodes>
                        <asp:TreeNode Text="1" Value="1" Expanded="False" Checked="true">
                            <asp:TreeNode Text="1.1" Value="1.1" ShowCheckBox="true"></asp:TreeNode>
                            <asp:TreeNode Text="1.2" Value="1.2" ShowCheckBox="true"></asp:TreeNode>
                            <asp:TreeNode Text="1.3" Value="1.3" ShowCheckBox="true"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="2" Value="2" Expanded="False">
                            <asp:TreeNode ToolTip="ToolTip 2.1" Text="2.1" Value="2.1"></asp:TreeNode>
                            <asp:TreeNode ToolTip="ToolTip 2.2" Text="2.2" Value="2.2"></asp:TreeNode>
                            <asp:TreeNode ToolTip="ToolTip 2.3" Text="2.3" Value="2.3"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode ImageUrl="~/Resources/icon.jpg" Text="3" Value="3" Expanded="False">
                            <asp:TreeNode ImageUrl="~/Resources/icon.jpg" ToolTip="ToolTip 3.1" Text="3.1" Value="3.1"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Resources/icon.jpg" ToolTip="ToolTip 3.2" Text="3.2" Value="3.2"></asp:TreeNode>
                            <asp:TreeNode ImageUrl="~/Resources/icon.jpg" ToolTip="ToolTip 3.3" Text="3.3" Value="3.3"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
                <asp:TextBox ID="TextBox2" Text="View2" style="margin-left: 26px" Width="222px" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Change View" style="margin-left: 50px" OnClick="Button2_Click" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Menu OnMenuItemClick="Menu1_MenuItemClick" ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px" >
                    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#FFFBD6" />
                    <DynamicSelectedStyle BackColor="#FFCC66" />
                    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#FFCC66" />
                   <Items>
                       <asp:MenuItem text="1" tooltip="1">
                           <asp:MenuItem Text="1.1" ToolTip="1.1" >
                               <asp:MenuItem Text="1.2" ToolTip="1.2" />
                           </asp:MenuItem>
                       </asp:MenuItem>
                   </Items>
                </asp:Menu>
                <asp:TextBox ID="TextBox3" Text="View3" style="margin-left: 26px" Width="222px" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="Change View" style="margin-left: 50px" OnClick="Button3_Click" />
            </asp:View>
        </asp:MultiView>
        </div>
        <div>
            <asp:AdRotator ID="AdRotator" runat="server"  AdvertisementFile="~/App_Data/AdRotator.xml"/><br /><br />
            <asp:Button ID="ButtonChangeRotator" runat="server" Text="Next banner" OnClick="ButtonChangeRotator_Click" />
        </div> 
    </form>
</body>
</html>
