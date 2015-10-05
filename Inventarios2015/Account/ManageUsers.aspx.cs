using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Inventarios2015.Account
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            MembershipCreateStatus newStatus = new MembershipCreateStatus();
            Membership.CreateUser("damian", "Passw0rd", "damian.hernandez@epuebla.edu.mx", "Password Question", "Passw0rd Answuer", true,out newStatus);
        }
    }
}