<%@ Page Title="Borrower Entry" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Borrower.aspx.cs" Inherits="Default2" %>


	 <%-- this will all go in the main of the Master --%>
<asp:Content id="mainContent" ContentPlaceHolderID="main" runat="server">
	 <h1>Borrower</h1>
	 <p>Hey, if you would like to borrow some disks some time, enter your information below to create a borrower profile: </p>


		  <%-- we'll have five textboxes below here, for first name, last name, email, an email comparison, and a phone number.
				each has a required field validator. the phone and email have regexpress validators, and the ReEmail has a comparison 
				to the first email --%>
	 <div class="form-group">
	 	 <asp:Label ID="lblFName" CssClass="col-sm-3" runat="server" Text="First Name: "></asp:Label>
		  <div class="col-sm-4">
	 		  <asp:TextBox ID="tbxFName" runat="server"></asp:TextBox>
		  </div>
		  <div class="col-sm-5">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbxFName" runat="server" 
					 ErrorMessage="* this  is required"></asp:RequiredFieldValidator>
		  </div>
	 </div>

	 <div class="form-group">
	 	 <label ID="lblLName" class="col-sm-3 control-label" runat="server">Last Name: </label>
		  <div class="col-sm-4">
		  	  <asp:TextBox ID="tbxLName" runat="server"></asp:TextBox>
		  </div>
		  <div class="col-sm-5">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbxLName" runat="server" 
					 ErrorMessage="* this  is required"></asp:RequiredFieldValidator>
		  </div>
	 </div>

	 <div class="form-group">
	 	 <asp:Label ID="lblEmail" CssClass="col-sm-3" runat="server" TextMode="Email" Text="Email: "></asp:Label>
		  <div class="col-sm-4">
				<asp:TextBox ID="tbxEmail" runat="server"></asp:TextBox>
		  </div>
		  <div class="col-sm-5">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbxEmail" runat="server" 
					 ErrorMessage="* this  is required"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
					 ErrorMessage="Enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
					 ControlToValidate="tbxEmail"></asp:RegularExpressionValidator>
		  </div>
		  <br />
		 <asp:Label ID="lblReEmail" CssClass="col-sm-3" runat="server" TextMode="Email" Text="Re-enter your email: "></asp:Label>
		  <div class="col-sm-4">
				<asp:TextBox ID="tbxReEmail" runat="server"></asp:TextBox>
		  </div>
		  <div class="col-sm-5">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tbxReEmail" runat="server" 
					 ErrorMessage="* this  is required"></asp:RequiredFieldValidator>
				<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The emails must match" 
					 ControlToValidate="tbxReEmail" Type="String" Operator="Equal" ControlToCompare="tbxEmail"></asp:CompareValidator>
		  </div>
	 </div>

	 <div class="form-group">
	 	 <asp:Label ID="lblPhone" CssClass="col-sm-3" runat="server" TextMode="Phone" Text="Phone: "></asp:Label>
		  <div class="col-sm-4">
				<asp:TextBox ID="tbxPhone" runat="server"></asp:TextBox>
		  </div>
		  <div class="col-sm-5">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="tbxPhone" runat="server" 
					 ErrorMessage="* this  is required"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter a number in the form 999-999-9999" 
					 ControlToValidate="tbxPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
		  </div>
	 </div>


		  <%-- here we got two buttons, one to submit, and one to clear --%>
	 <div >
		  <asp:Button ID="btnSubmit" CssClass="acceptButtons" runat="server" OnClick="btnSubmit_Click" Text="SUBMIT" />
		  <asp:Button ID="btnClear" CssClass="acceptButtons" runat="server" OnClick="btnClear_Click" Text="CLEAR" 
				CausesValidation="false" />
	 </div>

	 <asp:Label ID="lblEnd" runat="server" Text=""></asp:Label>

</asp:Content>

