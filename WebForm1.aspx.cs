using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    if (filesize <= 51200)
                    {

                        FileUpload1.SaveAs(Server.MapPath("~/") + FileUpload1.FileName);
                        Image2.ImageUrl = FileUpload1.FileName;
                        Label3.Text = "File Has Been Saved Successfully - See Below";

                    }
                    else
                    {
                        Label3.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                    }

                }
                else
                {
                    Label3.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
                }
            }
            else
            {
                Label3.Text = "You have not selected any file - Browse and Select File First";
            }
        }
    }
}