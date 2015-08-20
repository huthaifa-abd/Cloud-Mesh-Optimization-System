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
                    labUploadStatus.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    labUploadStatus.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }

        protected void btnDecimateMesh_Click(object sender, EventArgs e)
        {
            if (Session["FileName"] != null)
                if (!string.IsNullOrEmpty(Session["FileName"].ToString()))
                    txtResults.Text = BusinessObject.DecimateMesh(Session["FileName"].ToString());
        }

        protected void btnGenerateAssetBundel_Click(object sender, EventArgs e)
        {
            if (Session["FileName"] != null)
                if (!string.IsNullOrEmpty(Session["FileName"].ToString()))
                    txtResults.Text = BusinessObject.GenerateAssetBundel(Session["FileName"].ToString());
        }
    }
}