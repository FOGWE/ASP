<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPHosp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


<div class="row" id="content">
    <div class="col-md-6"  id="text">

      <h1><span>Appointment</span></h1>

              <p>
                    Wishing to book an <span title="Appointment">Appointment</span>/<span title="Rendez-vous">Visit</span> with a trained Medical Personnel?,  
                  Choose a type of appointment and you are done <span title="CTRL + Mousewheel">+/-</span> without any troubles.  
              </p>

              <ul>
        <li><b>Regular Visit:</b> For any kind of Visit</li>
        <li><b>Check-Up:</b> If you've been in one of our centres for consultation</li>
      </ul>

      <h1><span>Consultation</span></h1>

              <p>
                    Get in regular information for a <a href="menu.html" title="simple consultation"> right &amp; from home?</a> or drop comments on your situation?.  
                    Contact our doctors <span title="online"> for good results.</span> 
                    Our personnel is very well trained to offer accurate services
              </p>

              <p>
              To see information on our personnel, visit: <a href="#" title="view medical portfolio">here</a>.  To use our consultation services, sign our <a href="#" title="confidentiality Agreement/"> for your information security</a>.  The rest was created by me and is open source.
      </p>

      <h1><span>Emergency</span></h1>
              <p> Contact us if you encounter and emergency case. We are open
                  to community services and will urgently come by to see what is at stake. Why 
                  will you see a case and just sit by. We offer services and can pass on first aid
                  measures in the case where the time-distance relation ship is very low. 
                  Contact our Emergency services on <a href="http://fullahead.org/contact.html" 
                      title="FullAhead contact form">contact</a>. 
                     We wait on your collaboration </p>

              
    </div>

    <div class="col-md-2" id="image"><img src="images/plants.jpg" alt="plants"/></div>

    <div class="col-md-3" id="sideBar">

      <h1><span>Comments</span></h1>

      <div id="comments">

             <p>
          This would be some comment text.  Thrilling.
          <span class="author"><a href="http://fullahead.org">Pat</a>, Nov 23rd</span>
        </p>
                <img src="images/comment_bg.gif" alt="comment bottom"/>

             <p>
	      Goodness, more comment text?  That's crazy talk...
	      <span class="author"><a href="http://openwebdesign.org/userinfo.phtml?user=snop">snop</a>, Nov 24th</span>
        </p>
                <img src="images/comment_bg.gif" alt="comment bottom"/>

             <p>
          Comments are hawt, but if you wanted a submenu, you could <a href="menu.html" title="menu version">look here</a>.
          <span class="author"><a href="http://google.com">Bort</a>, Nov 29th</span>
        </p>
                <img src="images/comment_bg.gif" alt="comment bottom"/>

      </div>


      <h1><span>Your Turn</span></h1>


      <p>
        <input type="text" value="Name"/>
        <input type="text" value="URL"/>
        <textarea rows="5" cols="">Comment</textarea>
        <input type="submit" value="Submit" class="button" />
      </p>


    </div>
</div>



</asp:Content>
