<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register assembly="Facebook.Web" namespace="Facebook.Web.FbmlControls" tagprefix="cc1" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        BIENVENIDO A MovieSAP!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lbl_currentStatus" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="X-Small" ForeColor="Silver">No estas conectado</asp:Label>
        &nbsp;
                
        <fb:login-button></fb:login-button>
            
        <asp:Button ID="btn_Go" runat="server" BackColor="#496183" Font-Bold="True" 
            ForeColor="White" Height="23px" Text="f | Acceder" Width="84px" 
            onclick="btn_Go_Click" />
        
    </h2>
    <p>
        Bienvenido!
        <asp:Label ID="lbl_user" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Medium" ForeColor="#999999"></asp:Label>
    </p>
    <p>
        Administración de Proyectos de Infromática,
        <a href="http://unitec.edu"
            title="MSDN ASP.NET Docs">UNITEC campus San Pedro Sula</a>.
    </p>
<p>
        <asp:Label ID="lbl_mensaje" runat="server" Font-Italic="True" 
            Font-Names="Arial" Font-Size="Smaller" ForeColor="#333333" 
            
            Text="Recuerda que tu publicacion debe ir de esta forma:  Pelicula, Hora, Lugar y Sala: &quot;The Inception, 6:30 p.m., City Mall Sala 4&quot;"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="tbx_pub" runat="server" Height="45px" Width="443px" 
            Visible="False"></asp:TextBox>
        &nbsp;<asp:Button ID="btn_Publicar" runat="server" BackColor="#496183" 
            Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" 
            ForeColor="White" Text="Publicar Hoy" 
            onclick="btn_Publicar_Click" Visible="False" Width="122px" />
    &nbsp;
        <asp:Button ID="btn_OtroDia" runat="server" BackColor="White" 
            Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" 
            ForeColor="#6699FF" Text="¿Otro dia?" 
            onclick="btn_OtroDia_Click" BorderStyle="None" Visible="False" 
            Width="88px" />
    </p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Calendar ID="calendarioPost" runat="server" Visible="False"></asp:Calendar>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_PublicarOtroDia" runat="server" BackColor="#496183" 
            Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" 
            ForeColor="White" Text="Publicar" 
            onclick="btn_PublicarOtroDia_Click" Visible="False" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <title>Simple Accordion</title>  
    <style type="text/css">  
        .accordion {  
            width: 600px; 
            margin-left: 40px; 
        }  
          
        .accordionHeader {  
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
          
        .accordionHeaderSelected {  
            border: 1px solid #F0F0F0;  
            color: white;  
            background-color: #AEBDD2;  
            font-family: Arial, Sans-Serif;  
            font-size: 12px;  
            font-weight: bold;  
            padding: 5px;  
            margin-top: 5px;  
            cursor: pointer;  
        }  
          
        .accordionContent {  
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
    &nbsp;
    <asp:Accordion ID="Accordion1" CssClass="accordion"  
    HeaderCssClass="accordionHeader"  
    HeaderSelectedCssClass="accordionHeaderSelected"  
    ContentCssClass="accordionContent"  runat="server">
    <Panes>
        <asp:AccordionPane ID="AccordionPane" runat="server">  
            <Header> <div>
             <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div> </Header>  
            <Content>  
            </Content>  
        </asp:AccordionPane>
        <asp:AccordionPane ID="AccordionPane1" runat="server">  
            <Header><div>
             <asp:Label ID="Label4" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div></Header>  
            <Content>  
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.  
            Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.  
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.  

            
            </Content>  
        </asp:AccordionPane>    
        <asp:AccordionPane ID="AccordionPane2" runat="server">  
            <Header><div>
             <asp:Label ID="Label7" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div></Header>  
            <Content>  
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.  
            Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.  
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.  
            </Content>  
        </asp:AccordionPane>  
        <asp:AccordionPane ID="AccordionPane3" runat="server">  
            <Header><div>
             <asp:Label ID="Label10" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label11" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label12" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div></Header>  
            <Content>  
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.  
            Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.  
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.  
            </Content>  
        </asp:AccordionPane>  
        <asp:AccordionPane ID="AccordionPane4" runat="server">  
            <Header><div>
             <asp:Label ID="Label13" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label14" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label15" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div></Header>  
            <Content>  
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.  
            Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.  
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.  
            </Content>  
        </asp:AccordionPane>  
        <asp:AccordionPane ID="AccordionPane5" runat="server">  
            <Header><div>
             <asp:Label ID="Label16" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label17" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label18" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div></Header>  
            <Content>  
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.  
            Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.  
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.  
            </Content>  
        </asp:AccordionPane>  
        <asp:AccordionPane ID="AccordionPane6" runat="server">  
            <Header><div>
             <asp:Label ID="Label19" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label20" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label21" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div></Header>  
            <Content>  
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.  
            Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.  
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.  
            </Content>  
        </asp:AccordionPane>  
        <asp:AccordionPane ID="AccordionPane7" runat="server">  
            <Header><div>
             <asp:Label ID="Label22" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label23" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label24" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div></Header>  
            <Content>  
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.  
            Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.  
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.  
            </Content>  
        </asp:AccordionPane>  
        <asp:AccordionPane ID="AccordionPane8" runat="server">  
            <Header><div>
             <asp:Label ID="Label25" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label26" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label27" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div></Header>  
            <Content>  
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.  
            Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.  
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.  
            </Content>  
        </asp:AccordionPane>  
        <asp:AccordionPane ID="AccordionPane9" runat="server">  
            <Header><div>
             <asp:Label ID="Label28" runat="server" Font-Bold="True" 
            Font-Italic="True" Font-Names="Arial Black" ForeColor="#32435A"></asp:Label>
        <asp:Label ID="Label29" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#333333"></asp:Label>
        <asp:Label ID="Label30" runat="server" Font-Italic="True" 
            Font-Names="Arial Black" Font-Size="Small" ForeColor="#496183"></asp:Label>
&nbsp;
        
            </div></Header>  
            <Content>  
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.  
            Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus.  
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. Mauris et orci.  
            </Content>  
        </asp:AccordionPane>
        
    </Panes>
    </asp:Accordion>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <p>
        <asp:Button ID="btn_cargarMas" runat="server" BackColor="White" 
            BorderStyle="None" Font-Italic="True" Font-Names="Arial Black" 
            Font-Size="X-Small" ForeColor="#6699FF" Height="18px" 
            Text="Mostrar mas publicaciones" Width="167px"  
            CssClass="showMoreButton"/>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
   
</asp:Content>
