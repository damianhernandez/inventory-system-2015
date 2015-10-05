<%@ Page Title="" Language="C#" MasterPageFile="~/Site01.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Inventarios2015.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TituloSeccion" runat="server">
    Alumnos
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FormaTitulo" runat="server">
    Alta de Usuarios...
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoPagina" runat="server">
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userName">
            Nombre de Usuario <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <asp:TextBox runat ="server" ID="txtUserName" cssclass="form-control col-md-7 col-xs-12" placeholder="Nombre de usuario" ValidationGroup="addUsers"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="rfvtxtUserName" ControlToValidate ="txtUserName" ErrorMessage="<b>Campo obligatorio.</b><br/>Se necesita un nombre de usuario." Display="None" ValidationGroup="addUsers">*</asp:RequiredFieldValidator>
            <ajaxToolkit:ValidatorCalloutExtender runat="server" ID="rfvtxtUserNameExt" TargetControlID="rfvtxtUserName" WarningIconImageUrl="~/images/warning32.png" ></ajaxToolkit:ValidatorCalloutExtender>
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">
            Email <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">
            Confirm Email <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="email" id="email2" name="confirm_email" data-validate-linked="email" required="required" class="form-control col-md-7 col-xs-12">
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">
            Number <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="number" id="number" name="number" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12">
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="website">
            Website URL <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="url" id="website" name="website" required="required" placeholder="www.website.com" class="form-control col-md-7 col-xs-12">
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="occupation">
            Occupation <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <input id="occupation" type="text" name="occupation" data-validate-length-range="5,20" class="optional form-control col-md-7 col-xs-12">
        </div>
    </div>
    <div class="item form-group">
        <label for="password" class="control-label col-md-3">Password</label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <input id="password" type="password" name="password" data-validate-length="6,8" class="form-control col-md-7 col-xs-12" required="required">
        </div>
    </div>
    <div class="item form-group">
        <label for="password2" class="control-label col-md-3 col-sm-3 col-xs-12">Repeat Password</label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <input id="password2" type="password" name="password2" data-validate-linked="password" class="form-control col-md-7 col-xs-12" required="required">
        </div>
    </div>
    <div class="item form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">
            Textarea <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
            <textarea id="textarea" required="required" name="textarea" class="form-control col-md-7 col-xs-12"></textarea>
        </div>
    </div>
    <div class="ln_solid"></div>
    <div class="form-group">
        <div class="col-md-6 col-md-offset-3">
            <asp:LinkButton runat="server" ID="btnCancelar" CssClass="btn btn-primary" >Cancelar</asp:LinkButton>
            <asp:LinkButton runat="server" ID="btnEnviar" CssClass="btn btn-success" ValidationGroup="addUsers">Enviar</asp:LinkButton>
        </div>
    </div>
</asp:Content>
