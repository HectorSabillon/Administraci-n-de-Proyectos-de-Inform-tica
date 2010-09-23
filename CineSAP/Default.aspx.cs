using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FBConnectAuth;
using Facebook.Schema;
using Facebook.Rest;
using Facebook.Session;
using Facebook.Utility;
using Facebook.Web;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    #region Private Members

    private const string APPLICATION_KEY = "50675d20abae424d58d42d0ffe43990d";
    private const string SECRET_KEY = "94da7bd77167c18aa7b075d87f445cf9";

    private Api _facebookAPI;
    private ConnectSession _connectSession;

    #endregion Private Members

    #region Page Load

    protected void Page_Load(object sender, EventArgs e)
    {

        /*Literal1.Text = @"<asp:Accordion><Panes><asp:AccordionPane> " +
             "<Header><div>" +
             "Prueba" +
            "</div></Header>" +
            "<Content>  " +
            "Prueba de Contenido</Content>  " +
        "</asp:AccordionPane>" +
        @"<asp:AccordionPane>
            <Header><div>
                Lol
            </div></Header>
            <Content>
                Prueba de Lol
            </Content>
            </asp:AccordionPane>
            </Panes> 
        </asp:Accordion>";
         * */
    }

    #endregion Page Load

    #region Public Vars

    public string diaDeHoy;
    public string otroDia;

    #endregion Public Vars

    protected void btn_Publicar_Click(object sender, EventArgs e)
    {
        Label1.Text = lbl_user.Text;
        Label2.Text = tbx_pub.Text;
        tbx_pub.Text = "";
        diaDeHoy = Convert.ToString(System.DateTime.Now);
        Label3.Text = "Posted at: " + diaDeHoy;
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        return default(string);
    }
    protected void btn_Go_Click(object sender, EventArgs e)
    {
        _connectSession = new ConnectSession(APPLICATION_KEY, SECRET_KEY);

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

           /* if (!_connectSession.IsConnected())
            {
                this.lbl_currentStatus.Text = "Usuario no conectado";
            }
            else
            {
                _facebookAPI = new Api(_connectSession);

                user user = _facebookAPI.Users.GetInfo();

                this.lbl_user.Text = string.Format("{0} {1}", user.first_name, user.last_name);
                
            }*/

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
            tbx_pub.Visible = true;
            btn_Publicar.Visible = true;
            btn_OtroDia.Visible = true;
            lbl_currentStatus.Text = "Conectado";
        }
    }
    protected void btn_OtroDia_Click(object sender, EventArgs e)
    {
        calendarioPost.Visible = true;
        btn_PublicarOtroDia.Visible = true;
    }
    protected void btn_PublicarOtroDia_Click(object sender, EventArgs e)
    {
        Label1.Text = lbl_user.Text;
        Label2.Text = tbx_pub.Text;
        tbx_pub.Text = "";
        otroDia = calendarioPost.SelectedDate.ToString();
        Label3.Text = "Posted at: " + otroDia;
        calendarioPost.Visible = false;
        btn_PublicarOtroDia.Visible = false;
    }
}
