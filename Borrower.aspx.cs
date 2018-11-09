using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
	 protected void Page_Load(object sender, EventArgs e)
	 {

	 }


		  //add two button methods
	 protected void btnSubmit_Click(object sender, EventArgs e)
	 {
		  if (IsValid)
		  {
				lblEnd.Text = "Thank you for your submission.";
		  }
	 }

	 protected void btnClear_Click(object sender, EventArgs e)
	 {
		  tbxFName.Text = "";
		  tbxLName.Text = "";
		  tbxEmail.Text = "";
		  tbxReEmail.Text = "";
		  tbxPhone.Text = "";
	 }
}