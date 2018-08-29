<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\locationnames.asp"-->
<!--#include file="_private\navigation.asp"-->
<%
DIM	sPageTitle
DIM	sNavTitle
DIM	sKwdTitle
DIM	sDescTitle

sPageTitle = ""
sDescTitle = ""
IF 0 < Len(sLocationName) THEN
	sPageTitle = " - " & sLocationName
	sDescTitle = " for " & sLocationName & " and vicinity"
END IF

sNavTitle = ""
sKwdTitle = ""
IF 0 < Len(sLocationFullName) THEN
	sNavTitle = "<br>" & sLocationFullName
	sKwdTitle = ", " & LCase(sLocationAbbrevName) & ", " & UCase(sLocationAbbrevName) & ", " & sLocationFullName
END IF
%>
<html>

<head>
<title>Hobbies<%=sPageTitle%> - Photography - Grizzly Web Links</title>
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_rec.css"
media="screen">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="620" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" width="150">
    <!--webbot bot="Include"
      u-include="_private/nav/0root.asp" tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="22514" endspan -->
<%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1rec.asp;;Recreation & Sports" & vbLF _
		&	"hobbies.asp;;Hobbies" & vbLF _
		&	"hobbies_photography.asp;;Photography"
	NavBack sPages, sLocArgx
	
%>


      <!--webbot bot="Include" u-include="_private/other/webcenterstop.htm"
      tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25"><spacer type="block" width="1" height="1"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#CC9966" class="webcenters" valign="top" align="left"><img src="../images/pie_tl.gif" WIDTH="16" HEIGHT="16"></td>
    <th bgcolor="#CC9966" class="webcenters">Web Centers</th>
    <td bgcolor="#CC9966" class="webcenters" valign="top" align="right"><img src="../images/pie_tr.gif" width="16" height="16"></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="53814" endspan -->

      <table border="0" cellpadding="4" width="100%" cellspacing="0">
        <tr>
          <td bgcolor="#FFFFCC" valign="top" class="webcentersbody"><a href="http://photography.about.com/">About.com</a>
			<br>
			<a href="http://www.dmoz.org/Arts/Photography/">Open Directory</a><br>
            <a href="http://d2.dir.ac2.yahoo.com/Arts/Visual_Arts/Photography/">Yahoo!</a></td>
        </tr>
      </table>
      <!--webbot bot="Include" u-include="_private/other/webcentersbottom.htm"
      tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#CC9966" class="webcenters" valign="bottom" align="left"><img src="../images/pie_bl.gif" width="16" height="16"></td>
    <td bgcolor="#CC9966" class="webcenters" valign="bottom" align="right"><img src="../images/pie_br.gif" width="16" height="16"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"><img src="../images/000000.gif" width="1" height="1"></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="38882" endspan -->

    </td>
    <td valign="top" width="470">
      <%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\hobbies_photography.asp" )
	END IF
      %>
      <table border="0" width="100%" cellspacing="4" cellpadding="0">
        <tr>
          <td valign="top" width="50%">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">E-Zines</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
				<a href="http://www.magicalplacesfineart.com/blog/">Magical Places Fine Art</a><br>
				<a href="http://www.naturephotographers.net/">Nature Photographers</a><br>
				</td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">News Stand</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                <!--webbot bot="Include"
                  u-include="_private/magazine/hobbies/photography.htm" tag="BODY" startspan -->

<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td><a href="http://www.amateurphotographer.co.uk/">Amateur Photographer</a> (UK)<br>
	<a href="http://www.americanphotomag.com/">American Photo</a> <br>
	<a href="http://www.cameraarts.com/">CameraArts</a> <br>
	<a href="http://www.completedigitalphotography.com/">Complete Digital Photography</a> <br>
	<a href="http://www.dcmag.co.uk/">Digital Camera</a> (UK)<br>
	<a href="http://www.digitalphotopro.com/">Digital Photo Pro</a> <br>
	<a href="http://www.digiphotomag.com/">Digital Photographer</a> <br>
	<a href="http://www.dphotographer.co.uk/">Digital Photographer</a> (UK)<br>
	<a href="http://www.illustratedphotography.com/">Illustrated Photography</a><br>
	<a href="http://www.lenswork.com/">LensWork</a><br>
	<a href="http://www.nppa.org/news_and_events/magazine/">News Photographer</a> <br>
	<a href="http://www.outdoorphotographer.com/">Outdoor Photographer</a> <br>
	<a href="http://www.pcphotomag.com/">PCPhoto</a><br>
	<a href="http://www.pentaxuser.co.uk/">Pentax User</a> <br>
	<a href="http://www.pdnonline.com/">Photo District News</a><br>
	<a href="http://www.phototechmag.com/">Photo Techniques</a> <br>
	<a href="http://www.photography-guide.com/index2.php">photograph</a> <br>
	<a href="http://pfmagazine.com/">Photographer's Forum</a> <br>
	<a href="http://www.photomediagroup.com/">PhotoMedia</a><br>
	<a href="http://www.popphoto.com/">Popular Photography</a> <br>
	<a href="http://www.professionalphotographer.co.uk/">Professional Photographer</a> (UK)<br>
	<a href="http://www.ppmag.com/">Professional Photographer</a> <br>
	<a href="http://www.rangefindermag.com/">Rangefinder</a> <br>
	<a href="http://www.shotsmag.com/">Shots</a><br>
	<a href="http://www.shutterbug.com/">Shutterbug</a> <br>
	<a href="http://www.viewcamera.com/">View Camera</a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="21398" endspan -->

                </td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Other</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a href="http://www.basic-digital-photography.com/">Basic digital 
				photography</a><br>
				<a href="http://www.dpreview.com/" style="font-style: italic">Digital Photography Review</a> <br>
				<a href="http://www.dphoto.co.nz/">D-Photo</a> <br>
				<a href="http://www.fredmiranda.com/">fredmiranda.com</a><br>
				<a href="http://www.letsgodigital.org/en/index.html">LetsGoDigital</a>&nbsp; <br>
				<a href="http://www.megapixel.net/">Megapixel</a><br>
				<a href="http://www.beststuff.com/photography">Photography BestStuff</a> <br>
				<a href="http://photo.net/">Photo.net</a> <br>
				<a href="http://photocamel.com/forum/">PhotoCamel</a> - (forum)</td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="shopping">Shopping</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="shoppingbody">
                <!--webbot
                  bot="Include"
                  u-include="_private/shopping/hobbies_photography.htm" tag="BODY" startspan
                  -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="http://www.17photo.com/">17 Street Photo</a><br>
	<a href="http://www.adorama.com/">Adorama Camera</a> <br>
	<a href="http://www.amazon.com/Camera-Photo-Film-Canon-Sony/b/ref=sd_allcat_p?ie=UTF8&amp;node=502394">
    <img
      src="images/logos/amazon_logo.gif" alt="amazon.com Affiliate"
      border="0" width="90" height="29"></a><br>
      <a href="http://home.amvona.com/">Amvona</a><br>
	<a href="http://backdropoutlet.com/">Backdrop Outlet</a> <br>
	<a href="http://www.bestbuy.com/site/olspage.jsp?id=abcat0400000&amp;type=category">
	<img alt="" src="images/logos/bestbuy2_150.gif" border="0" width="80" height="40"></a><br>
	<a href="http://www.bhphotovideo.com/">B&amp;H Photo</a> <br>
	<a href="http://garyfonginc.com/">Gary Fong</a><br>
	<a href="http://www.wolfcamera.com/">Wolf Camera</a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="8354" endspan -->

                </td>
              </tr>
            </table>
          </td>
          <td valign="top" class="gutter" bgcolor="#C0C0C0" width="1"><img
            border="0" src="../images/000000.gif"></td>
          <td valign="top" width="50%">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Instructional</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a href="http://www.digital-cameras-help.com/">Digital 
				camera help</a> <br>
				<a href="http://www.dslrtips.com/" style="font-style: italic">DSLR Tips</a> <br>
				<a href="http://www.dpchallenge.com/">DPChallenge</a> <br>
				<a href="http://digital-photography-school.com/">Digital Photography School</a> <br>
				<a href="http://www.photoanswers.co.uk/">Photo Answers</a> <br>
				<a href="http://photo.net/">Photo.net</a><br>
				<a href="http://www.tipsfromthetopfloor.com/">Tips from the Top Floor</a> <br>
				<a href="http://www.digitalfieldguide.com/">Digital Field Guide</a>
				<br><a href="http://garyfonginc.com/">Gary Fong</a><br><br><a href="http://super.nova.org/DPR/">Concepts for 
				Lighting &amp;<br>Digital Photography</a><br>
				<br>
				<a href="http://blog.epicedits.com/2007/12/10/16-inspirational-portrait-photography-techniques/">16 
				Inspirational Portrait Photography Techniques</a> <br>
				<br>
				<a href="http://www.stnphotography.com/tips.html">Tips for Portrait Photography</a> <br>
				<br>
				<a href="http://www.larrysizemore.com/">Nature Photography - larry sizemore</a> <br>
				<br>
				<a href="http://www.weatherscapes.com/">Weather Photography</a>
				<br><br><a href="http://super.nova.org/DPR/DIY01/">DIY 
				Reflector-Diffuser</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Beginner</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a href="http://www.basic-digital-photography.com/">Basic digital 
				photography</a> <br>
				<a href="http://www.expertvillage.com/video-series/1067_photography-basics.htm">How to Take Good 
				Pictures</a><br>
				<a href="http://www.expertvillage.com/video-series/570_photography-course.htm">Photography Lessons 
				Intermediate</a> <br>
				<a href="http://www.dpchallenge.com/tutorial.php?TUTORIAL_ID=45">ISO, Aperture, and Shutter Speed</a><br>
				<a href="http://digital-photography-school.com/">Digital Photography School</a> <br>
				<a href="http://www.betterphoto.com/">BetterPhoto.com</a> <br>
				<br>
				<a href="http://www.classic-photography-school.com/">Classic Photography School</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Manufacturers</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a href="http://www.usa.canon.com/">Canon U.S.A</a> <br>
				<a href="http://www.casio.com/products/Cameras/">Casio</a><br>
				<a href="http://www.kodak.com/">Kodak</a><br>
				<a href="http://nikonusa.com/">Nikon Cameras</a> <br>
				<a href="http://www.sigmaphoto.com/">Sigma</a><br>
				<a href="http://www.sony.com/">Sony</a> <br>
				<a href="http://www.tamron.com/">Tamron</a><br>
                  </td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Societies / Organizations</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a href="http://www.aspp.com/">American Society of Picture 
				Professionals</a> <br>
				<br>
				<a href="http://www.aperture.org/">Aperture Foundation</a><br>
				<br>
				<a href="http://www.nppa.org/">National Press Photographers Association</a><br>
				<br>
				<a href="http://www.psa-photo.org/">Photographic Society of America</a><br>
				<br>
				<a href="http://www.ppa.com/">Professional Photographers of America, Inc.</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Directories</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a href="http://www.onlinephotography.com/">ONLINE PHOTOGRAPHY</a><br>
                  </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/nav/hobbies_navbar.asp" tag="BODY" startspan
-->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img src="../images/pie_tl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span class="small">Hobbies</span>&nbsp;
    </th>
    <td bgcolor="#996600" rowspan="2" class="navbackground"><table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="recreation"><a href="hobbies_models.asp" class="navigationsmall" target="_top">Modeling</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="hobbies_photography.asp" class="navigationsmall" target="_top">Photography</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="hobbies_rc.asp" class="navigationsmall" target="_top">Radio Control</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="hobbies_railroad.asp" class="navigationsmall" target="_top">Rail Road</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="hobbies_woodwork.asp" class="navigationsmall" target="_top">Wood Work</a></th>
      </tr>
    </table>
    </td>
    <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img src="../images/pie_tr.gif" border="0" WIDTH="16" HEIGHT="16"></td>
  </tr>
  <tr>
    <td bgcolor="#996600" align="left" valign="bottom" class="navbackground"><img src="../images/pie_bl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img src="../images/pie_br.gif" border="0" WIDTH="16" HEIGHT="16"></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="31370" endspan -->

<!--webbot bot="Include" u-include="../_private/include/footer.htm"
tag="BODY" startspan -->


<br clear="all">
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td height="5" colspan="2"></td>
  </tr>
  <tr>
    <td valign="bottom">
      <form method="GET" name="SearchForm_bottom"
      action="submit/searchengine/grizzlyweblinks.asp" target="_top">
        <table border="0" cellspacing="0">
          <tr>
            <td bgcolor="#FFCC99"><input type="text" name="q" size="25"> <input
              type="submit" value="Search Site" name="x"></td>
          </tr>
          <tr>
            <td><a href="submitlink.asp" class="small" target="_top">Add
              Link...</a>&nbsp;&nbsp; <span class="small">*</span>&nbsp;&nbsp; <a
              href="comments.asp" class="small" target="_top">Comments /
              Problems...</a></td>
          </tr>
        </table>
      </form>
    </td>
    <td align="right" valign="top"><font face="Arial" size="1" color="#999999"
      style="font-family: sans-serif; font-size: 10px">Last modified: 
    30 Sep 2009</font><br>
      <a style="color: #CCCCCC; TEXT-DECORATION: none"
      href="../company/9copyright.htm" target="_top"><font color="#CCCCCC" size="1">Copyright
      2004 Bear Consulting Group</font></a><font color="#CCCCCC" size="1"><a
      style="color: #CCCCCC; text-decoration: none" target="_top"><br>
      </a><a href="../company/" style="color: #CCCCCC; TEXT-DECORATION: none" target="_top">Service
      Provided by Bear Consulting Group</a></font></td>
  </tr>
</table>




<!--webbot bot="Include" i-checksum="53053" endspan -->


</body>

</html>