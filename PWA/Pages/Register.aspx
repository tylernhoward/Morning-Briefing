<%@ Page Title="" Language="C#" MasterPageFile="~/Briefing.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PWA.Pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
        <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel style="clear:both; margin: 10px; background-color: whitesmoke;" ID="PersonalDetails" runat="server" GroupingText="Personal Info" Width="800px">
         <table>
			<tr>
               <td><asp:Label ID="lblGender" style="color:Black" Text="Gender:" runat="server" /></td>
               <td><asp:RadioButtonList ID="rblGender" RepeatDirection="Horizontal" runat="server" style="display:inline">
                        <asp:ListItem id = "radMale" Text="Male" Value="m" />
                        <asp:ListItem id= "radFemale" Text="Female" Value="f" />
                   </asp:RadioButtonList>
			    </td>
				<td><asp:RequiredFieldValidator ID="valGenderReq" runat="server" 
                    ControlToValidate="rblGender"
                    ErrorMessage="* You must fill in this field" Display="dynamic"/>
                </td>
            </tr>
            <tr>
               <td><asp:Label ID="lblFirstName" style="color:Black" 
               Text="First Name: " runat="server" /></td>
               <td><asp:TextBox ID="txtFirstName" runat="server" /></td>
			   <td><asp:RequiredFieldValidator id="valFirstNameRequired" runat="server" 
                     ControlToValidate="txtFirstName"
                     ErrorMessage="* You must enter a first name" Display="dynamic" />
               </td>
            </tr>
            <tr>
               <td><asp:Label ID="lblLastName" style="color:Black" 
               Text="Last Name: " runat="server" /></td>
               <td><asp:TextBox ID="txtLastName" runat="server" /></td>
				<td><asp:RequiredFieldValidator id="valLastNameRequired" runat="server" 
                     ControlToValidate="txtLastName"
                     ErrorMessage="* You must enter a last name" Display="dynamic" />
               </td>
            </tr>
			<tr>
               <td><asp:Label ID="lblDOB" style="color:Black" 
               Text="Date of Birth: " runat="server" /></td>
               <td><asp:TextBox ID="txtDOB" runat="server" /></td>
				<td><asp:RequiredFieldValidator id="valDOBRequired" runat="server" 
                     ControlToValidate="txtDOB"
                     ErrorMessage="* You must fill in this field" Display="dynamic" />
					<asp:RegularExpressionValidator id="valRegExDate" runat="server"
                     ControlToValidate="txtDOB"
                     ValidationExpression="\d\d\/\d\d\/\d\d"
                     ErrorMessage="* Not valid format. (MM/DD/YY)"
                     display="dynamic">
                    </asp:RegularExpressionValidator>

               </td>
            </tr>
			<tr>
               <td><asp:Label ID="lblEmail" style="color:Black" 
               Text="Email Address: " runat="server" /></td>
               <td><asp:TextBox ID="txtEmail" runat="server" /></td>
				<td><asp:RequiredFieldValidator id="valEmailRequired" runat="server" 
                     ControlToValidate="txtEmail"
                     ErrorMessage="* You must enter a valid email" Display="dynamic" />
                    <asp:RegularExpressionValidator id="valRegExEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression=".*@.*\..*"
                        ErrorMessage="* Your entry is not a valid e-mail address."
                        display="dynamic">
                    </asp:RegularExpressionValidator>

               </td>
            </tr>
		</table>
        </asp:Panel>
		<asp:Panel style="clear:both; margin: 10px; background-color: whitesmoke;" ID="CompanyDetails" runat="server" GroupingText="Company Details" Width="800px">
         <table>
			<tr>
               <td><asp:Label ID="lblCompany" style="color:Black" 
               Text="Company Name: " runat="server" /></td>
               <td><asp:TextBox ID="txtCompany" runat="server" /></td>
            </tr>
		</table>
        </asp:Panel>
        <asp:Panel style="clear:both; margin: 10px; background-color: whitesmoke;" ID="AddressDetails" runat="server" GroupingText="Location Details" Width="800px">
         <table>
			<tr>
               <td><asp:Label ID="lblAddress" style="color:Black" 
               Text="Street Address: " runat="server" /></td>
               <td><asp:TextBox ID="txtAddress" runat="server" /></td>
				<td><asp:RequiredFieldValidator id="valAddressRequired" runat="server" 
                     ControlToValidate="txtAddress"
                     ErrorMessage="* You must fill in this field" Display="dynamic" />
               </td>
            </tr>
			<tr>
               <td><asp:Label ID="lblSuburb" style="color:Black" 
               Text="Suburb: " runat="server" /></td>
               <td><asp:TextBox ID="txtSuburb" runat="server" /></td>
            </tr>
			<tr>
               <td><asp:Label ID="lblZip" style="color:Black" 
               Text="Zip Code: " runat="server" /></td>
               <td><asp:TextBox ID="txtZip" runat="server" /></td>
				<td><asp:RequiredFieldValidator id="valZipRequired" runat="server" 
                     ControlToValidate="txtZip"
                     ErrorMessage="* You must fill in this field" Display="dynamic" />
				<asp:RegularExpressionValidator id="valRegExZip" runat="server"
                    ControlToValidate="txtZip"
                    ValidationExpression="\d{5}"
                    ErrorMessage="* Zip Code must be 5 numeric digits."
                    display="dynamic">
                </asp:RegularExpressionValidator>
                </td>
            </tr>
			<tr>
               <td><asp:Label ID="lblCity" style="color:Black" 
               Text="City: " runat="server" /></td>
               <td><asp:TextBox ID="txtCity" runat="server" /></td>
				<td><asp:RequiredFieldValidator id="valCityRequired" runat="server" 
                     ControlToValidate="txtCity"
                     ErrorMessage="* You must fill in this field" Display="dynamic" />
               </td>
            </tr>
			<tr>
                <td><asp:Label id="lblCountry" Style= "color:Black" Text="Country" runat="server"/></td>
				<td>
                <asp:DropDownList ID="ddCountry" runat="server">
                    <asp:ListItem Enabled="true" Text="Select Country" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="United States" Value="usa"></asp:ListItem>
                    <asp:ListItem Text="Spain" Value="esp"></asp:ListItem>
                    <asp:ListItem Text="Russia" Value="rus"></asp:ListItem>
                </asp:DropDownList>
				</td>
				<td><asp:RequiredFieldValidator ID="valCountryReq" runat="server" 
					ControlToValidate="ddCountry"
                    InitialValue="-1" 
					ErrorMessage="* You must fill in this field" Display="dynamic"/>
				</td>
			</tr>
		</table>
        </asp:Panel>
		 <asp:Panel style="clear:both; margin: 10px; background-color: whitesmoke;" ID="ContactDetails" runat="server" GroupingText="Contact Info" Width="800px">
         <table>
			<tr>
               <td><asp:Label ID="lblPhone" style="color:Black" 
               Text="Phone Number: " runat="server" /></td>
               <td><asp:TextBox ID="txtPhone" runat="server" /></td>
				<td><asp:RequiredFieldValidator id="valPhoneRequired" runat="server" 
                     ControlToValidate="txtPhone"
                     ErrorMessage="* You must enter a valid phone number" Display="dynamic" />
               <asp:RegularExpressionValidator id="valRegExPhone" runat="server"
                    ControlToValidate="txtPhone"
                    ValidationExpression="\d{10}"
                    ErrorMessage="* Phone Number must be 10 numeric digits."
                    display="dynamic">
                </asp:RegularExpressionValidator>
				</td>
            </tr>
            <tr>
               <td><asp:Label ID="lblFax" style="color:Black" 
               Text="Fax Number: " runat="server" /></td>
               <td><asp:TextBox ID="txtFax" runat="server" /></td>
            </tr>
		</table>
        </asp:Panel>
	     <asp:Panel style="clear:both; margin: 10px; background-color: whitesmoke;" ID="PasswordDetails" runat="server" GroupingText="Password Details" Width="800px">
         <table>
            <tr>
               <td><asp:Label ID="lblPass" style="color:Black" 
               Text="Password: " runat="server" /></td>
               <td><asp:TextBox ID="txtPass" runat="server" TextMode="Password"/></td>
				<td><asp:RequiredFieldValidator id="valPassRequired" runat="server" 
                     ControlToValidate="txtPass"
                     ErrorMessage="* You must fill in this field" Display="dynamic" />
               </td>
			    <td></td>
            </tr>
            <tr>
               <td><asp:Label ID="lblPassRe" style="color:Black" 
               Text="Confirm Password: " runat="server" /></td>
               <td><asp:TextBox ID="txtPassRe" runat="server" TextMode="Password"/></td>
				<td><asp:RequiredFieldValidator id="valPassReRequired" runat="server" 
                     ControlToValidate="txtPassRe"
                     ErrorMessage="* You must fill in this field" Display="dynamic" />
               </td>
            </tr>
			<asp:CompareValidator id="valCompare" runat="server"
                    ControlToValidate="txtPass" ControlToCompare="txtPassRe"
                    Operator="Equal"
                    Type="String"
                    ErrorMessage="* The passwords must match!"
                    Display="dynamic">
                </asp:CompareValidator>
			<asp:RegularExpressionValidator id="valRegExPass" runat="server"
                     ControlToValidate="txtPass"
                     ValidationExpression=".{8,}"
                     ErrorMessage="* Password must be longer than 8 characters"
                     display="dynamic">
            </asp:RegularExpressionValidator>
         </table>
        </asp:Panel>
        <asp:Button Text="Register" ID="registerBtn" OnClick="Submit_Click" runat="server" />
</asp:Content>
