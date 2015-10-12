<%@ Page Title="" Language="C#" MasterPageFile="~/Site01.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Inventarios2015.Account.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TituloSeccion" runat="server">
    Usuarios del Sistema
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FormaTitulo" runat="server">
    Alta
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoPagina" runat="server">
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">
            Correo: <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control col-md-7 col-xs-12" placeholder="Email" TextMode="Email" ValidationGroup="addUsers"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvtxtEmail" ControlToValidate="txtEmail" ErrorMessage="<b>Campo obligatorio.</b><br/>Se necesita la direccion de correo electrónico." Display="None" ValidationGroup="addUsers">*</asp:RequiredFieldValidator>
            <ajaxToolkit:ValidatorCalloutExtender runat="server" ID="rfvtxtEmailExt" TargetControlID="rfvtxtEmail" WarningIconImageUrl="~/images/warning32.png"></ajaxToolkit:ValidatorCalloutExtender>
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="confirmEmail">
            Confirmación de Correo: <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <asp:TextBox runat="server" ID="txtConfirmEmail" CssClass="form-control col-md-7 col-xs-12" placeholder="Confirma Email" TextMode="Email" ValidationGroup="addUsers"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvtxtConfirmEmail" ControlToValidate="txtConfirmEmail" ErrorMessage="<b>Campo obligatorio.</b><br/>Necesita confirmar su cuenta de Correo." Display="None" ValidationGroup="addUsers">*</asp:RequiredFieldValidator>
            <ajaxToolkit:ValidatorCalloutExtender runat="server" ID="rfvtxtConfirmEmailExt" TargetControlID="rfvtxtConfirmEmail" WarningIconImageUrl="~/images/warning32.png"></ajaxToolkit:ValidatorCalloutExtender>
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Password">
            Contraseña: <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control col-md-7 col-xs-12" placeholder="Contraseña" TextMode="Password" ValidationGroup="addUsers"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvtxtPassword" ControlToValidate="txtPassword" ErrorMessage="<b>Campo obligatorio.</b><br/>Necesita confirmar su cuenta de Correo." Display="None" ValidationGroup="addUsers">*</asp:RequiredFieldValidator>
            <ajaxToolkit:ValidatorCalloutExtender runat="server" ID="rfvtxtPasswordExt" TargetControlID="rfvtxtPassword" WarningIconImageUrl="~/images/warning32.png"></ajaxToolkit:ValidatorCalloutExtender>
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtPasswordQuestion">
            Pregunta Secreta: <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <asp:TextBox runat="server" ID="txtPasswordQuestion" CssClass="form-control col-md-7 col-xs-12" placeholder="Pregunta Secreta" ValidationGroup="addUsers"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvtxtPasswordQuestion" ControlToValidate="txtPasswordQuestion" ErrorMessage="<b>Campo obligatorio.</b><br/>Necesita una pregunta secreta para continuar." Display="None" ValidationGroup="addUsers">*</asp:RequiredFieldValidator>
            <ajaxToolkit:ValidatorCalloutExtender runat="server" ID="rfvtxtPasswordQuestionExt" TargetControlID="rfvtxtPasswordQuestion" WarningIconImageUrl="~/images/warning32.png"></ajaxToolkit:ValidatorCalloutExtender>
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="txtPasswordAnswer">
            Respuesta Secreta: <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <asp:TextBox runat="server" ID="txtPasswordAnswer" CssClass="form-control col-md-7 col-xs-12" placeholder="Respuesta Secreta" ValidationGroup="addUsers"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvtxtPasswordAnswer" ControlToValidate="txtPasswordAnswer" ErrorMessage="<b>Campo obligatorio.</b><br/>Necesita confirmar su cuenta de Correo." Display="None" ValidationGroup="addUsers">*</asp:RequiredFieldValidator>
            <ajaxToolkit:ValidatorCalloutExtender runat="server" ID="txtPasswordAnswerExt" TargetControlID="rfvtxtPasswordAnswer" WarningIconImageUrl="~/images/warning32.png"></ajaxToolkit:ValidatorCalloutExtender>
        </div>
    </div>
   
    <div class="ln_solid"></div>
    <div class="form-group">
        <div class="col-md-6 col-md-offset-3">
            <asp:LinkButton runat="server" ID="btnCancelar" CssClass="btn btn-primary" >Cancelar</asp:LinkButton>
            <asp:LinkButton runat="server" ID="btnEnviar" CssClass="btn btn-success" ValidationGroup="addUsers" OnClick="btnEnviar_Click">Enviar</asp:LinkButton>
        </div>
    </div>
</asp:Content>