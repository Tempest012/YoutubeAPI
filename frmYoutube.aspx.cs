using BLL;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YoutubeAPI
{
    public partial class frmYoutube : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected async void btnBuscar_Click(object sender, EventArgs e)
        {
            string query = txtBuscar.Text;

            SQLDBHelper busquedasDAL = new SQLDBHelper();
            busquedasDAL.GuardarBusqueda(query); 

            BDYoutube_DAL youtubeDAL = new BDYoutube_DAL();
            List<BDYoutube_BLL> videos = await youtubeDAL.BuscarVideos(query);
            rptVideos.DataSource = videos;
            rptVideos.DataBind();
        }


    }
}