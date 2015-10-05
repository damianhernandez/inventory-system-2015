﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

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
                Server.Transfer("~/Default.aspx");
            }
            else
            {
                Response.Write("<div class=\"alert alert-danger\"><b>Error:&nbsp;&nbsp;&nbsp;</b>El usuario y contraseña proporcionados no son validos, por favor verifique sus datos e intentelo mas tarde.</div>");
            }
        }
    }
}