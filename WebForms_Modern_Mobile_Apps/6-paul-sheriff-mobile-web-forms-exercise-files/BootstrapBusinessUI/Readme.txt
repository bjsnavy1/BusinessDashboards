Bootstrap Samples
------------------------
Dependencies
  Bootstrap (http://www.getbootstrap.com)
  jQuery UI (http://www.jqueryui.com)
  Modernizr (http://www.modernizr.com)
  
NOTES:
  We have enableViewState="false" set in the Web.Config file. It is not needed for most pages.
  We have ClientIDMode="Static" in the Web.Config file in order to avoid id "munging" which can goof up jQuery
  
Site.Master - All links, "container"
  If you use 'navbar-fixed-top' the header stays on top. You need to increase the 'margin-top' on the 'contentArea' style.
  If you use 'navbar-static-top' you need to increase the 'margin-top' or you can simply remove 'navbar-fixed-top'.
  Notice the use of 'visible-??' to control what is displayed on each size screen
    I used a different header for each size. This helps you know when you are in a different size such as 'xs', 'sm', 'md' or 'lg'.

Home.aspx - Shows the use of the Accordion from jQuery UI.

ForgotPasswordView1.aspx - Normal screen using "panel" class
ForgotPasswordView2.aspx - Shows use of "form-control-static" class

LoginView1.aspx - Validator controls styled with 'text-danger'.
LoginView2.aspx - Shows use of "input-group" class and glyph icons. Notice the checkbox. Notice we use class='row' instead of class='form-group'
LoginView3.aspx - Hide labels using 'sr-only' class. Use placeholders. Add a Glyph to the Login button. You can't easily use a Glyph with an ASP:Button control, so I just used a <button> with a runat=server tag.
LoginViewModal.aspx - Shows the use of a Modal Dialog with Fading capability
                    - In IE 11 the required fields display highlighted (unfortunate)

SignupView1.aspx - Different columns sizes for different fields. Modal dialog for 'terms and conditions'. jQuery used to accept terms.
SignupView2.aspx - No labels. Hide labels using 'sr-only' class.

MemberProfileView1.aspx - Use drop down lists for birth date
MemberProfileView2-Inline.aspx - Multiple columns only for certain lines
MemberProfileView3-WithTabs.aspx - Use jQuery UI tabs. Use DatePicker for birth date. Apt. field uses different column sizes for different screen sizes. Added Security Question/Answer

CreditCardView.aspx - Gradient background. Use form-inline for billing date
AddressView.aspx - Modifying screen based on Country, using Validator controls, turning div's off and on
  NOTE: You must enable ViewState on this page in order for the AutoPostBack to work for the drop down list.
WizardView.aspx - Using tabs as a wizard
ContactUsView.aspx - Use media query to control size/layout of 'Contact Us' button in top left

AboutView1.aspx - Use of CSS 3 rounded corners and drop shadows
AboutView2.aspx - Use glyphs on check marks
AboutView3.aspx - Use teaser buttons
