using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BusinessLayer;
using System.IO;

namespace WebApplication
{
    public partial class Default : System.Web.UI.Page
    {
        GeneralBusinessRepo BusinessObject = new GeneralBusinessRepo();
        float PolyCount = 0;
        float OptPolyCount = 0;
        float OptPercentage = 0;

        string TempResults = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            //Testing Cmd Shell Commands
            //TextBox2.Text = BusinessObject.ExecuteShellCommand("Dir");

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    Session["FileName"] = FileUploadControl.FileName;
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/Resources/Import/") + filename);

                    //Decimate Mesh
                    funcDecimateMesh();

                    //Display Decimation information to client
                    UpdateClientInformation();


                    //Update AssetBundle
                    funcGenerateAssetBundle();
                }
                catch (Exception ex)
                {
                    labResultNotification.Text = "We apologize for the inconvenience it seems either the file is Corrupted or unsupported file format.";
                }
            }
        }

        private void UpdateClientInformation()
        {
            int a = TempResults.IndexOf("]}") - TempResults.IndexOf("{[");
            TempResults = TempResults.Substring(TempResults.IndexOf("{[") + 2, TempResults.IndexOf("]}") - TempResults.IndexOf("{[") -2);
            string[] ParamsDecimation = TempResults.Split(',');

            float.TryParse(ParamsDecimation[0], out PolyCount);
            float.TryParse(ParamsDecimation[1], out OptPolyCount);
            float.TryParse(ParamsDecimation[2], out OptPercentage);

            labPolyCount.Text = PolyCount.ToString();
            labOptPolyCount.Text = OptPolyCount.ToString();
            labOptPercentage.Text = OptPercentage.ToString() + "%";
        }



        private void funcGenerateAssetBundle()
        {
            if (Session["FileName"] != null)
                if (!string.IsNullOrEmpty(Session["FileName"].ToString()))
                    TempResults = BusinessObject.GenerateAssetBundel(Session["FileName"].ToString());
        }

        private void funcDecimateMesh()
        {
            if (Session["FileName"] != null)
                if (!string.IsNullOrEmpty(Session["FileName"].ToString()))
                    TempResults = BusinessObject.DecimateMesh(Session["FileName"].ToString());
        }
    }
}