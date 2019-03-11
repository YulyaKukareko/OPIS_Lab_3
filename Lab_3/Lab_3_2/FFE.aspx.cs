using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_3_2
{
    public partial class FFE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ChangeView();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ChangeView();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ChangeView();
        }

        public void ChangeView()
        {
            this.MultiView1.ActiveViewIndex = (this.MultiView1.ActiveViewIndex + 1) % 3;
        }

        protected void ButtonChangeRotator_Click(object sender, EventArgs e)
        {
            var arr = new List<string> { "b1", "b2", "b3" };
            var el = arr.IndexOf(this.AdRotator.KeywordFilter);
            this.AdRotator.KeywordFilter = "b3";
            this.Response.Write(this.AdRotator.KeywordFilter);
        }

        private void refreshdata()
        {
            Label1.Text = TextBox4.Text;
            Label2.Text = Calendar.SelectedDate.ToString();
            Label3.Text = lsLanguages.SelectedValue;
            Label4.Text = CheckBoxList1.SelectedValue;
            Label5.Text = ListBox1.SelectedValue;
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == 4)
            {
                refreshdata();
            }

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            TreeNode tn = this.TreeView1.SelectedNode;

            String txt = tn.Value;
            if (tn.ShowCheckBox != null && (bool)tn.ShowCheckBox) txt += (tn.Checked ? " установлен " : " сброшен ");
            this.Response.Write(txt);
        }

        protected void TreeView1_TreeNodeCheckChanged(object sender, TreeNodeEventArgs e)
        {
            TreeNode tn = this.TreeView1.SelectedNode;
            this.Response.Write(tn.Checked ? " установлен " : " сброшен ");
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            Menu mnu = (Menu)sender;
            Response.Write(mnu.SelectedItem.Value);
        }
    }
}