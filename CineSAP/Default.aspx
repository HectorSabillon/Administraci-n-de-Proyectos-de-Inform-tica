<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="Facebook.Web" Namespace="Facebook.Web.FbmlControls" TagPrefix="cc1" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <style type="text/css">
        .accordion
        {
            width: 800px;
            margin-left: 53px;
        }
        
        .accordionHeader
        {
            border: 1px solid #F0F0F0;
            color: white;
            background-color: White;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }
        
        .accordionHeaderSelected
        {
            border: 1px solid #F0F0F0;o
            color: white;
            background-color: #AEBDD2;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }
        
        .accordionContent
        {
            background-color: #F0F0F0;
            border: 1px dashed White;
            border-top: none;
            padding: 5px;
            padding-top: 10px;
        }
    </style>
    <style type="text/css">
        .postBox
        {
            width: 600px;
            padding: 10px;
            padding-left: 100px;
        }
        .postButton
        {
            margin-left: 366px;
        }
        .showMoreButton
        {
            margin-left: 350px;
        }
    </style>
    <h2>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        BIENVENIDO A MovieSAP!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label
            ID="lbl_currentStatus" runat="server" Font-Italic="True" Font-Names="Arial Black"
            Font-Size="X-Small" ForeColor="Silver">No estas conectado</asp:Label>
        &nbsp;
        <asp:TextBox ID="tbx_user" runat="server" Style="margin-left: 0px" Width="106px"></asp:TextBox>
        <fb:login-button>
        </fb:login-button>
        <asp:Button ID="btn_Go" runat="server" BackColor="#496183" Font-Bold="True" ForeColor="White"
            Height="23px" Text="f | Session Check" Width="125px" OnClick="btn_Go_Click" />
        <asp:Button ID="btn_logout" runat="server" BackColor="#496183" Font-Bold="True" ForeColor="White"
            Height="23px" Text="Logout" Width="76px" OnClick="btn_logout_Click" Visible="False" />
    </h2>
    <p>
        Bienvenido!
        <asp:Label ID="lbl_user" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black"
            Font-Size="Medium" ForeColor="#999999"></asp:Label>
    </p>
    <p>
        Administración de Proyectos de Infromática, <a href="http://unitec.edu" title="Unitec">
            UNITEC campus San Pedro Sula</a>.
    </p>
    <p>
        <asp:Label ID="lbl_mensaje" runat="server" Font-Italic="True" Font-Names="Arial"
            Font-Size="Smaller" ForeColor="#333333" Text="Recuerda que tu publicacion debe ir de esta forma:  Pelicula, Hora, Lugar y Sala: &quot;The Inception, 6:30 p.m., City Mall Sala 4&quot;"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="tbx_pub" runat="server" Height="45px" Width="443px" Enabled="False"></asp:TextBox>
        <asp:Button ID="btn_Publicar" runat="server" BackColor="#496183" Font-Bold="True"
            Font-Italic="True" Font-Names="Arial Black" ForeColor="White" Text="Publicar"
            OnClick="btn_Publicar_Click" Enabled="False" />
    </p>
    <p>
    </p>
    
    &nbsp;
    <asp:Accordion ID="Accordion1" CssClass="accordion" HeaderCssClass="accordionHeader"
        HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent"
        runat="server">
        <Panes>

        </Panes>
    </asp:Accordion>
    <p>
        &nbsp;
        <asp:Button ID="btn_cargarMas" runat="server" BackColor="White" BorderStyle="None"
            Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Small" ForeColor="#6699FF"
            Height="18px" Text="Mostrar mas publicaciones" Width="167px" OnClick="btn_comment_Click"
            CssClass="showMoreButton" />
        &nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_userComment" runat="server" Font-Bold="True" Font-Italic="True"
            Font-Names="Arial Black" ForeColor="#32435A" Visible="False"></asp:Label>
        <asp:Label ID="lbl_comentario" runat="server" Font-Italic="True" Font-Names="Arial Black"
            Font-Size="Small" ForeColor="#666666" Visible="False"></asp:Label>
        <asp:Label ID="lbl_statusComment" runat="server" Font-Italic="True" Font-Names="Arial Black"
            Font-Size="Small" ForeColor="#496183" Visible="False"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
