using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FBConnectAuth;
using Facebook.Schema;
using Facebook;
using Facebook.Web;
using System.Configuration;
using System.Data;

using AjaxControlToolkit;
using AjaxControlToolkit.HTMLEditor;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //PruebaDatos.DataAccess da = new PruebaDatos.DataAccess();


        Accordion1.RequireOpenedPane = false;
        aggregarPublicaciones();       

    }

    void aggregarPublicaciones()
    {
        DataAccess.DataAccess da = new DataAccess.DataAccess();
        Chili.Opf3.ObjectSet<DataAccess.Publicacion> setPublicacion = new Chili.Opf3.ObjectSet<DataAccess.Publicacion>();//da.ObtenerPublicaciones();
        setPublicacion.Add( new DataAccess.Publicacion( "IronMan", "4:00PM", "CityMoll", 123 ) );
        setPublicacion.Add( new DataAccess.Publicacion( "Inception", "4:00PM", "Multi", 31 ) );
        setPublicacion.Add( new DataAccess.Publicacion( "El Debut de Harry", "5:00", "Mega", 3243 ) );

        setPublicacion[ 0 ].Comentarios.Add( new DataAccess.Comentario( "Lol AiroMan", 1234 ) );
        setPublicacion[ 0 ].Comentarios.Add( new DataAccess.Comentario( "Jaja Ayrom Man", 39 ) );

        Accordion1.Panes.Clear();
        for ( int i = 0; i < setPublicacion.Count; i++ )
        {

            DataAccess.Publicacion publicacion = setPublicacion[ i ];
            AccordionPane pane = new AjaxControlToolkit.AccordionPane(); //Crear panels nuevos
            pane.ID = "pane" + i;
            Label lblPublicacion = new Label();
            lblPublicacion.Text = publicacion.Pelicula + " " + publicacion.Hora + " " + publicacion.Lugar;
            lblPublicacion.ID = "lblPub" + i;
            pane.HeaderContainer.Controls.Add( lblPublicacion );//Agregar un label al panle recien creado


            //ListView lstComentarios = new ListView();
            //lstComentarios.DataSource = setPublicacion[i].Comentarios;
            //lstComentarios.ID = "itemPlaceholder";
            //lstComentarios.DataBind();

            //pane.ContentContainer.Controls.Add( lstComentarios );//Agregar los comentarios

            for ( int j = 0; j < setPublicacion[i].Comentarios.Count; j++ )
            {
                DataAccess.Comentario comentario = setPublicacion[ i ].Comentarios[ j ];
                Label lblComentario = new Label();
                lblComentario.Text = setPublicacion[i].Comentarios[j].TextoComentario+ " ";     //TODO:Mejorar Esto.
                lblComentario.ID = string.Format( "LblComentario {0},{1}", i, j );
                pane.ContentContainer.Controls.Add( lblComentario );
            }


            Accordion1.Panes.Add( pane );
        }
    }
    
    protected void btn_Publicar_Click(object sender, EventArgs e)
    {
        //DataAccess.DataAccess da = new DataAccess.DataAccess();
        //da.IngresarPublicacion( Parser.DesCifrar( tbx_pub.Text ) );
            //panel_comment.Visible = true;
        //Label1.Text = lbl_user.Text;
        //Label2.Text = tbx_pub.Text;
        //tbx_pub.Text = "";
        //Label3.Text = "Posted at: " + Convert.ToString(System.DateTime.Now);
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        //tbx_pub.Enabled = false;
        //btn_Publicar.Enabled = false;
        //lbl_mensaje.Visible = false;
        //lbl_user.Text = "";
        //tbx_user.Text = "";
        //btn_logout.Visible = false;
        //tbx_comment.Text = "";
        //panel_comment.Visible = false;
        //lbl_currentStatus.Visible = true;
    }
    protected void btn_comment_Click(object sender, EventArgs e)
    {
      //  panel_comment.Visible = true;
    }
    protected void btn_comentar_Click(object sender, EventArgs e)
    {
        //lbl_comentario.Text = tbx_comment.Text;
        //lbl_statusComment.Text = "Posted at: " + Convert.ToString(System.DateTime.Now);
        //lbl_userComment.Text = lbl_user.Text + " dijo: ";
        //lbl_comentario.Visible = true;
        //lbl_statusComment.Visible = true;
        //lbl_userComment.Visible = true;
        //tbx_comment.Text = "";
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        return default(string);
    }
    protected void btn_Go_Click(object sender, EventArgs e)
    {
        FBConnectAuthentication auth = new FBConnectAuthentication("148883595138929", "94da7bd77167c18aa7b075d87f445cf9"); //Note this is the "app id", not "api Key"
        if (auth.Validate() != ValidationState.Valid)
        {
            // The request does not contain the details of a valid Facebook connect session -
            // you'll probably want to throw an error here.
            this.lbl_currentStatus.Text = "Error";

        }
        else
        {
            FBConnectSession fbSession = auth.GetSession();
            string userId = fbSession.UserID;
            string sessionKey = fbSession.SessionKey;
            string accessToken = fbSession.AccessToken; //This is the Graph API access token (available only when using the Graph API)
            // These values can now be used to communicate with Facebook on behalf of your user - perhaps using the Facebook Developer Toolkit
            // The expiry time and session secret is also available.
            this.lbl_currentStatus.Text = accessToken;
            if (userId == "639765435")
            {
                lbl_user.Text = "Hector Fernando Sabillon";
            }
            else if (userId == "894045382")
            {
                lbl_user.Text = "Ricardo Escobar";
            }
            else if(userId == "1037870586")
            {
                lbl_user.Text = "Uchiha Sama";
            }
            else if (userId == "549886672")
            {
                lbl_user.Text = "Alexis Castillo";
            }
            else if (userId == "553699803")
            {
                lbl_user.Text = "Rogger Vasquez";
            }
            else
            {
                lbl_user.Text = userId;
            }
            
        }

        if (lbl_currentStatus.Text != "Error" && lbl_currentStatus.Text!="No estas conectado")
        {
            tbx_pub.Enabled = true;
            btn_Publicar.Enabled = true;
            lbl_currentStatus.Text = "Conectado";
            btn_logout.Visible = true;            
        }
    }
}
