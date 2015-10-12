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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Membership.Provider.ValidateUser(txtUserName.Text.Trim(), txtPassword.Text.Trim()))
            {
                Session["Username"] = User.Identity.Name;
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text.Trim(), true);
            }
            else
            {
                MessageAlert.show(MessageAlert.alertType.danger, "El usuario y contraseña proporcionados no son validos, por favor verifique sus datos e intentelo mas tarde.");
            }
        }
    }
}