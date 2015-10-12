using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using InventariosData.Controles;

namespace Inventarios2015.Account
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                MembershipCreateStatus newStatus = new MembershipCreateStatus();
                Membership.CreateUser(txtEmail.Text, txtPassword.Text, txtEmail.Text, txtPasswordQuestion.Text, txtPasswordAnswer.Text, true, out newStatus);
                if (newStatus == MembershipCreateStatus.Success)
                {
                    MessageAlert.show(MessageAlert.alertType.success, "El usuario fue agregado correctamente");
                }
            }
            catch (Exception ex)
            {
                MessageAlert.show(MessageAlert.alertType.danger, ex.Message);
            }
        }

        public void clearObjects()
        {
            txtEmail.Text = ""; txtPassword.Text = ""; txtEmail.Text = ""; txtPasswordQuestion.Text = ""; txtPasswordAnswer.Text = "";
            txtEmail.Focus();
        }
    }
}