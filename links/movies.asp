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
<title>Movies<%=sPageTitle%> - Grizzly Web Links</title>
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_ent.css"
media="screen">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
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
		&	"1ent.asp;;Entertainment" & vbLF _
		&	"movies.asp;;Movies"
	NavBack sPages, sLocArgx
%>

      <%IF 0 < Len(sLocation) THEN%>
      <p align="center"><a href="movies.asp?loc=">Other Locations</a> <%END IF%> </p>
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

      <table border="0" width="100%" cellspacing="0" cellpadding="4">
        <tr>
          <td width="100%" bgcolor="#FFFFCC" class="webcentersbody"><a
            href="http://asylum.aol.com/cgi-bin/aggregate?aggregator=movies">AOL.com</a><br>
            <a href="http://www.excite.com/entertainment/movies/">Excite</a><br>
            <a href="http://www.lycos.com/entertainment/movies/">Lycos</a><br>
            <a href="http://magellan.excite.com/entertainment/movies">Magellan</a><br>
            <a href="http://home.miningco.com/entertainment/movies/">Mining Co.</a><br>
            <a href="http://dir.yahoo.com/Entertainment/Movies_and_Film/">Yahoo!</a></td>
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

      <table border="0" width="100%" cellpadding="2">
        <tr>
          <th bgcolor="#CC9966" align="left" class="shopping">Shopping</th>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" class="shoppingbody">
          <!--webbot bot="Include"
            u-include="_private/shopping/movies.htm" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="http://www.allposters.com/">Allposters.com</a><br>
      <a href="submit/affiliate/amazon_com.asp?page=subst/home/video.html">
    <img src="images/logos/amzn-videos2.gif" alt="amazon.com Affiliate" border="1" width="100" height="70"></a><br>
      <a href="http://www.bigstar.com/">bigstar.com</a><br>
      <a href="http://www.blockbuster.com/">BLOCKBUSTER</a>
      <table border="0" cellspacing="0">
        <tr>
          <td bgcolor="#000000"><a href="submit/affiliate/borders_com.asp"><strong><font face="Arial" color="#FFFFFF"><span style="font-family: sans-serif; text-decoration: none">BORDERS</span></font></strong></a></td>
          <td bgcolor="#FFFFFF"><a href="submit/affiliate/borders_com.asp"><font face="Arial" color="#000000"><span style="font-family: sans-serif; text-decoration: none">.com</span></font></a></td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td><a href="http://buyvideos.com/">BUYVIDEOS.com</a>&nbsp;<br>
      <a href="http://www.cartoon-factory.com/index.html">Cartoon Factory</a> <br>
      <!--a href="http://www.dvdjam.com/">DVDjam</a><br-->
      <a href="http://www.kidflix.com/">KidFlix</a>&nbsp;<br>
      <a href="http://www.moviegoods.com/">MovieGoods</a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="25151" endspan -->

          </td>
        </tr>
      </table>
    </td>
    <td valign="top" width="470"><%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\movies.asp" )
	ELSE
		buildLocationTable()
	END IF
      %>
      <table border="0" width="100%" cellspacing="4" cellpadding="0">
        <tr>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">Reference</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.animated-movies.net/">
                Animated-Movies.com</a><br>
                <a href="http://www.cinemachine.com/">Cinemachine</a><br>
                  <a href="http://www.film.com/">Film.com</a>&nbsp;<br>
                  <a href="http://www.filmfrenzy.com/">FilmFrenzy.com</a><br>
                  <a href="http://www.go2flix.com/">Go 2 Flix</a><br>
                  <a href="http://www.hollywood.com/">Hollywood online</a><br>
                  <em><a href="http://www.imdb.com/">Movie Database</a><br>
                  </em><a href="http://www.moviefinder.com/">Movie Finder</a><br>
                  <a href="http://www.777film.com/">Movie Link</a>&nbsp;<br>
                  <a href="http://www.movie-list.com/">Movie-List</a><br>
                  <a href="http://www.moviesnapshot.com/">Movie Snapshot</a><br>
                  	<a href="http://movieweb.com/">MovieWEB</a><br>
                  <a
                  href="http://www.mrshowbiz.com/reviews/moviereviews/index.html">Mr.
                  Showbiz</a>&nbsp;<br>
                  <a href="http://movies.yahoo.com/">Yahoo! Movies</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">News
                  Stand</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC">
                <!--webbot bot="Include"
                  u-include="_private/magazine/movies.htm" tag="BODY" startspan -->

<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td><a HREF="http://www.yahoo.com/headlines/entertainment/">Daily VARIETY</a><br>
    <a href="http://www.premieremag.com/">Premiere</a></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="44356" endspan -->

                </td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">Other</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.moviebloopers.com/">Movie Bloopers</a><br>
                  <a href="http://www.oscar.com/">Oscar.com</a></td>
              </tr>
            </table>
          </td>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">Studios</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.20thcentury.com/">20th
                  Century</a><br>
                  <a href="http://artisanent.com/">Artisan Entertainment</a> <br>
                <a href="http://bventertainment.go.com/">Buena Vista</a><br>
                  <a href="http://www.spe.sony.com/movies/index.html">Columbia/TriStar</a><br>
                  <a href="http://www.disneypictures.com/">Disney</a><br>
                  <a href="http://www.foxmovies.com/">FOX</a><br>
                  Gramercy pictures<br>
                  <a href="http://www.movies.com/">Hollywood pictures</a><br>
                  <a href="http://www.mgm.com/">Metro Goldwyn Mayer</a><br>
                  <a href="http://www.newline.com/cinema/">New Line Cinema</a><br>
                  <a href="http://www.mgm.com/motionpictures/">Orion</a><br>
                  <a href="http://www.paramount.com/">Paramount</a><br>
                  Savoy pictures<br>
                  <a href="http://www.spe.sony.com/movies/index.html">Sony
                  pictures</a><br>
                  <a href="http://touchstonepictures.go.com/">Touchstone pictures</a><br>
                  <a href="http://www.mgmua.com/">United Artists</a><br>
                  <a href="http://www.universalpictures.com/">Universal</a><br>
                  <a href="http://www.disney.com/DisneyPictures/">Walt Disney
                  pictures</a><br>
                  <a href="http://www.movies.warnerbros.com/">Warner Brothers</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">Theaters</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://carmike.com/">Carmike
                  Cinemas</a><br>
                  <a href="http://www.regalcinemas.com/">Regal Cinemas</a></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/nav/ent_navbar.asp" tag="BODY" startspan -->

<br clear="all">
<!--table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../../../images/000000.gif" width="1" height="1"></td>
  </tr>
</table-->
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img
      src="../images/pie_tl.gif" border="0" width="16" height="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span
      class="small">Entertainment</span>&nbsp;</th>
    <td bgcolor="#996600" rowspan="2" class="navbackground">
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="entertainment"><a href="art.asp"
            class="navigationsmall">Art</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="books.asp"
            class="navigationsmall">Books</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="comics.asp"
            class="navigationsmall">Comics</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="humor.asp"
            class="navigationsmall">Humor</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="movies.asp"
            class="navigationsmall">Movies</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="music.asp"
            class="navigationsmall">Music</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a
            href="magazine.asp" class="navigationsmall">News Stand</a></th>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="entertainment"><a
            href="perform.asp" class="navigationsmall">Performance Art</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="radio.asp"
            class="navigationsmall">Radio</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="scifi.asp"
            class="navigationsmall">Science Fiction</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a
            href="television.asp" class="navigationsmall">Television</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="trivia.asp"
            class="navigationsmall">Trivia</a></th>
        </tr>
      </table>
    </td>
    <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img
      src="../images/pie_tr.gif" border="0"></td>
  </tr>
  <tr>
    <td bgcolor="#996600" align="left" valign="bottom" class="navbackground"><img
      src="../images/pie_bl.gif" border="0"></td>
    <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img
      src="../images/pie_br.gif" border="0"></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="8181" endspan -->

<!--webbot
bot="Include" u-include="../_private/include/footer.htm" tag="BODY" startspan -->


<br clear="all">
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td height="5" colspan="2"></td>
  </tr>
  <tr>
    <td valign="bottom">
      <form method="GET" name="SearchForm_bottom"
      action="submit/searchengine/grizzlyweblinks.asp">
        <table border="0" cellspacing="0">
          <tr>
            <td bgcolor="#FFCC99"><input type="text" name="q" size="25"> <input
              type="submit" value="Search Site" name="x"></td>
          </tr>
          <tr>
            <td><a href="submitlink.asp" class="small">Add
              Link...</a>&nbsp;&nbsp; <span class="small">*</span>&nbsp;&nbsp; <a
              href="comments.asp" class="small">Comments /
              Problems...</a></td>
          </tr>
        </table>
      </form>
    </td>
    <td align="right" valign="top"><font face="Arial" size="1" color="#999999"
      style="font-family: sans-serif; font-size: 10px">Last modified: 
    30 Sep 2009</font><br>
      <a style="color: #CCCCCC; TEXT-DECORATION: none"
      href="../company/9copyright.htm"><font color="#CCCCCC" size="1">Copyright
      2004 Bear Consulting Group</font></a><font color="#CCCCCC" size="1"><a
      style="color: #CCCCCC; text-decoration: none"><br>
      </a><a href="../company/" style="color: #CCCCCC; TEXT-DECORATION: none">Service
      Provided by Bear Consulting Group</a></font></td>
  </tr>
</table>




<!--webbot bot="Include" i-checksum="59332" endspan -->


</body>

</html>