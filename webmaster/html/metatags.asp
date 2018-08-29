<!--#include file="_private\outputsource.asp"-->
<html>

<head>
<title>HTML Meta-tags - Grizzly WebMaster</title>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="../1webmaster.css" media="screen">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <th valign="bottom" class="titleblock" align="left"><span class="subtitle">HTML</span><br>
      <span class="title">META-Tags</span></th>
    <td align="right" valign="bottom"><!--webbot bot="Include"
      u-include="../_private/gwm.htm" tag="BODY" startspan -->
      <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td valign="bottom">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" bgcolor="#663300"><img border="0" src="../images/pie_brx.gif" width="16" height="16"></td>
              </tr>
            </table>
          </td>
          <td bgcolor="#663300"><a href="../"><img border="0" src="../images/bearpaw-header.jpg" alt="Grizzly WebMaster home" width="245" height="64"></a></td>
        </tr>
      </table>
<!--webbot bot="Include" endspan i-checksum="59381" -->
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="3"><img border="0" src="../images/000000.gif" width="1" height="1"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="navigationpath">&nbsp;<a href="../">Grizzly
      WebMaster (HOME)</a> &gt;&gt; <a href="../html.htm">HTML</a> &gt;&gt;
      META-Tags</th>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="2"><img border="0" src="../images/000000.gif" width="1" height="1"></td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">META-tags are used to provide special information to
      browsers and search engines regarding the handling or content of your
      pages.</td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Browser Cache Control</h2>
      <p>Many of today's browsers cache (or hold onto) pages that have been
      previously viewed/visited.&nbsp; This is done to optimize the amount of
      time it takes to return to the page.&nbsp; Sometimes a page author wants
      to prevent their page from being cached because the contained information
      is time sensitive.</p>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\expires.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Ownership</h2>
      <p>These meta-tags are primarily informational.</p>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\author.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Refresh</h2>
      <p>The biggest problem with the &quot;refresh&quot; meta-tag method of
      page-refresh is that it adds to the visitor's page-history.&nbsp; This
      means that for each automatic page refresh/reload your site visitor must
      select the browser's back button.&nbsp; This potentially can be a
      considerable bother to your visitors as well as a confusion.</p>
      <p>The preferred redirection method is a simple <a href="../javascripts/refresh.asp">JavaScript</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\refresh.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Redirection</h2>
      <table border="1" width="175" align="right" cellspacing="0" cellpadding="2">
        <tr>
          <th bgcolor="#CCFFCC">See Also</th>
        </tr>
        <tr>
          <td bgcolor="#CCFFCC">&quot;<a href="../javascripts/redirection.asp"><b>Page
            Redirection - JavaScript</b></a>&quot; for more techniques of
            redirecting from one page to another.</td>
        </tr>
      </table>
      <p>The biggest problem with using the &quot;refresh&quot; meta-tag method
      of page-redirection is that it adds to the visitor's page-history.&nbsp;
      This potentially can be a considerable bother to your visitors as well as
      a confusion.</p>
      <p>The preferred redirection method is a simple <a href="../javascripts/redirection.asp">JavaScript</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\redirection.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Search Engine</h2>
      <p>There are various ways to provide hints for search engines.&nbsp; There
      is no way to guarantee how a search engine indexes your site.&nbsp; Some
      search engines use the &quot;robots&quot; meta-tag to provide hints regarding
      how to traverse a site's pages.&nbsp; Other search engines use the
      robots.txt file or a combination of techniques.</p>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\robots.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <p>Some search engines use the &quot;keywords&quot; and
      &quot;description&quot; meta-tags to help in the indexing of a single
      page.&nbsp; Many engines will confirm that the listed keywords actually
      occur on the page.&nbsp; If they don't then the page may be rejected as a
      spam page.</p>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\keywords.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Window Target</h2>
      <p>Specifies the named window target for the document/page.&nbsp; This tag
      is not supported by all browsers, but it can be used to prevent pages from
      being contained in unwanted frames.</td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\windowtarget.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Content Rating</h2>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\rating.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>HTTP-EQUIV versus NAME meta-tags</h2>
      <p>'HTTP-EQUIV' tags are the equivalent of HTTP protocol headers.&nbsp;
      Some web-servers may actually generate HTTP headers from the HTML tags, as
      suggested by the HTML 3.2 specification.&nbsp; You should strictly avoid
      inventing/creating new HTTP-EQUIV tags.&nbsp; Use the 'NAME' meta-tags
      instead.</p>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="../_private/footer.htm" tag="BODY" startspan -->
<br clear="all">


<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td height="12" colspan="2"></td>
  </tr>
  <tr>
    <td valign="top">
      <form method="GET" name="SearchForm_bottom"
      action="../../links/submit/searchengine/grizzlywebmaster.asp">
        <table border="0" cellspacing="0">
          <tr>
            <td bgcolor="#FFCC99"><input type="text" name="q" size="25"> <input
              type="submit" value="Search Site" name="x"></td>
          </tr>
        </table>
      </form>
    </td>
    <td align="right" valign="top"><font face="Arial" size="1" color="#999999"
      style="font-family: sans-serif; font-size: 10px">Last modified: 25 May 2009</font><br>
      <a style="color: #CCCCCC; TEXT-DECORATION: none" href="../9copyright.htm"><font
      color="#CCCCCC" size="1">Copyright 2001 Bear Consulting Group</font></a><font
      color="#CCCCCC" size="1"><a style="color: #CCCCCC; text-decoration: none"><br>
      </a><a href="../../company/index.htm"
      style="color: #CCCCCC; TEXT-DECORATION: none">Service Provided by Bear
      Consulting Group</a></font></td>
  </tr>
</table>





<script language="JavaScript" src="../../javascript/remotelog.js"></script>




<!--webbot bot="Include" endspan i-checksum="1037" -->

</body>

</html>
