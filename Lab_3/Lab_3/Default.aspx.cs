using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Lab_3
{
    public partial class Default : System.Web.UI.Page
    {
        HtmlTable t = new HtmlTable();
        HtmlTableRow r;
        HtmlTableCell c;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Select.Items.Add("1111111");
                Select.Items.Add("2222222");
                Select.Items.Add("3333333");
            }

            t.Border = 1;
            t.CellPadding = 3;
            t.CellSpacing = 3;
            t.Align = "center";
            t.BorderColor = "red";
            r = new HtmlTableRow();
            c = new HtmlTableCell();
            c.InnerHtml = "Html Control";
            r.Cells.Add(c);
            c = new HtmlTableCell();
            c.InnerHtml = "onserverclic";
            r.Cells.Add(c);
            c = new HtmlTableCell();
            c.InnerHtml = "onserverchange";
            r.Cells.Add(c);
            t.Rows.Add(r);
            r = new HtmlTableRow();
            c = new HtmlTableCell();
            c.InnerHtml = "HtmlInputReset";
            r.Cells.Add(c);
            c = new HtmlTableCell();
            c.InnerHtml = "NO";
            r.Cells.Add(c);
            c = new HtmlTableCell();
            c.InnerHtml = "NO";
            r.Cells.Add(c);
            t.Rows.Add(r);
            this.Controls.Add(t);
        }

        protected void Button_OnServerClick(object sender, EventArgs e)
        {
            AddRow("HtmlButton", "YES", "NO");
        }

        protected void Reset_OnServerClick(object sender, EventArgs e)
        {
            AddRow("HtmlTReset", "YES", "NO");
        }

        protected void Submit_OnServerClick(object sender, EventArgs e)
        {
            AddRow("HtmlSubmit", "YES", "NO");
        }

        protected void InputText_OnServerChangeText(object sender, EventArgs e)
        {
            AddRow("HtmlInputText", "NO", "YES");
        }

        protected void InputText_OnServerClick(object sender, EventArgs e)
        {
            AddRow("HtmlInputText", "YES", "NO");
        }

        protected void InputPassword_OnServerChange(object sender, EventArgs e)
        {
            AddRow("HtmlInputPassword", "NO", "YES");
        }

        protected void CheckBox_OnServerChange(object sender, EventArgs e)
        {
            AddRow("CheckBox", "NO", "YES");
        }

        protected void RadioButton_OnServerChange(object sender, EventArgs e)
        {
            AddRow("HtmlRadioButton", "NO", "YES");
        }

        protected void InputTextArea_OnServerChange(object sender, EventArgs e)
        {
            AddRow("HtmlTextarea", "NO", "YES");
        }

        protected void Select_OnServerChange(object sender, EventArgs e)
        {
            AddRow("HtmlSelect", "NO", "YES");
        }

        private void AddRow(string htmlElem, string cellOnClick, string cellOnChange)
        {
            c = new HtmlTableCell();
            r = new HtmlTableRow();
            c.InnerHtml = htmlElem;
            r.Cells.Add(c);
            c = new HtmlTableCell();
            c.InnerHtml = cellOnClick;
            r.Cells.Add(c);
            c = new HtmlTableCell();
            c.InnerHtml = cellOnChange;
            r.Cells.Add(c);
            t.Rows.Add(r);
        }
    }
}