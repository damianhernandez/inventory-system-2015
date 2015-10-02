<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Inventarios2015.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title></title>
     <!-- Bootstrap core CSS -->

    <link href="../css/bootstrap.min.css" rel="stylesheet"/>

    <link href="../fonts/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="../css/animate.min.css" rel="stylesheet"/>

    <!-- Custom styling plus plugins -->
    <link href="../css/custom.css" rel="stylesheet"/>
    <link href="../css/icheck/flat/green.css" rel="stylesheet"/>


    <script src="../js/jquery.min.js"></script>
</head>
<body style="background:#F7F7F7;">
    
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>

        <div id="wrapper"> 
            <div id="login" class="animate form">
                <section class="login_content">
                    <form id="form1" runat="server" defaultbutton="btnLogin">
                        <h1>Inicio de Sesi&oacute;n</h1>
                        <div>
                            <asp:TextBox runat ="server" ID="txtUserName" MaxLength="80" placeholder="Email" CssClass="form-control" ValidationGroup="vgLogin" ></asp:TextBox>
                            <asp:RegularExpressionValidator runat="server" ID="revtxtUserName" ControlToValidate="txtUserName" ErrorMessage="<b>Correo invalido</b><br/>El correo electrónico no tiene el formato correcto" ValidationGroup="vgLogin" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" >*</asp:RegularExpressionValidator>
                            <ajaxToolkit:ValidatorCalloutExtender runat="server" ID="revtxtUserNameExt" TargetControlID="revtxtUserName" WarningIconImageUrl="~/images/warning32.png" Width="350px"></ajaxToolkit:ValidatorCalloutExtender>
                        </div>
                        <div>
                            <asp:TextBox runat ="server" ID="txtPassword" MaxLength="20" TextMode="Password" placeholder="Password" CssClass="form-control" ValidationGroup="vgLogin"></asp:TextBox>
                        </div>
                        <div>
                            <asp:LinkButton runat="server" ID="btnLogin" CssClass="btn btn-default submit" OnClick="btnLogin_Click" ValidationGroup="vgLogin">Entrar</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="btnResetPassword" CssClass="reset_pass" href="#">¿Perdiste tu contraseña?</asp:LinkButton>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">

                            <br />
                            <div>
                                <h1><i class="fa fa-paw" style="font-size: 26px;"></i> Educaci&oacute;n a Distancia</h1>

                                <p>©2015 Todos los derechos reservados.</p>
                            </div>
                        </div>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
        </div>
    </div>
</body>
</html>
