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
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<title>Motorcycle<%=sPageTitle%> - Grizzly Web Links</title>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="Keywords" content="motorcycle,motorcycling,riding,rider,touring,goldwing,harley,honda<%=sKwdTitle%>">
<meta name="description" content="Links to a wide variety of motorcycle sites<%=sDescTitle%>">
<meta name="rating" content="General">
<meta name="ROBOTS" content="ALL">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_rec.css" media="screen">
<style type="text/css">
<!--

.RemindMonthHeader
{
	font-size: x-small;
	background-image: url(images/bkg_remindMonthHeader.jpg);
}

.RmdToday
{
	background-color: #CCEEFF;
	color: #FF0000;
	font-size: x-small;
	font-weight: bold;
	font-family: sans-serif;
}

.RmdMotorcycleLocal, .RmdMotorcycleLocal a:link, .RmdMotorcycleLocal a:visited, .RmdMotorcycleLocal a:active
{ color: #999999; font-size: xx-small; }

.RmdMotorcycleRCW, .RmdMotorcycleRCW a:link, .RmdMotorcycleRCW a:visited, .RmdMotorcycleRCW a:active
{ color: #999999; font-size: xx-small; }

.RmdMotorcycleGWRRA, .RmdMotorcycleGWRRA a:link, .RmdMotorcycleGWRRA a:visited, .RmdMotorcycleGWRRA a:active
{ color: #999999; font-size: xx-small; }

.RmdMotorcycleCMA
{
	color: #999999;
	font-size: xx-small;
	font-family: sans-serif;
}
.RmdMotorcycleCMA a:link, .RmdMotorcycleCMA a:visited
{ color: #999999; }




.RmdMotorcycle
{
	color: black;
	background-color: white;
	font-size: x-small;
}

.remind_date, .remind_dash
{
	font-size: x-small;
}

.b {  font-family: Arial; font-size: 9pt; color: #000000; text-decoration: none; font-weight: ; line-height: 12pt}

-->
</style>
<!--#include file="_private\ratings_meta_tags.asp"-->
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="150" cellspacing="0" cellpadding="0" align="left">
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

<!--webbot bot="Include" i-checksum="22514" endspan --><%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1rec.asp;;Recreation & Sports" & vbLF _
		&	"motorcycle.asp;;Motorcycling" & sNavTitle
	NavBack sPages, sLocArgx
	

%>

      <p align="center"><strong>Related Pages:</strong><br>
      <a href="auto.asp?<%=sLocArgx%>">Automotive</a><br>
      <a href="maps.asp?<%=sLocArgx%>">Maps</a><br>
      <a href="travel.asp?<%=sLocArgx%>">Travel</a><br>
      <a href="weather.asp?<%=sLocArgx%>">Weather</a></p>

      <!--webbot
      bot="Include" u-include="_private/other/webcenterstop.htm" tag="BODY" startspan -->

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
<!--webbot bot="Include" i-checksum="53814" endspan --><table border="0" cellpadding="4" width="100%" cellspacing="0">
        <tr>
          <td bgcolor="#FFFFCC" valign="top" class="webcentersbody">
          <a href="http://motorcycles.about.com/">About.com</a><br>
          <a href="http://search.aol.com/aolcom/browse?id=232">AOL.com</a><br>
            <a href="http://dir.excite.com/d/search/p/excite/?c=directory&s=motorcycle&topic=Top/Recreation/Motorcycles">Excite</a>
          <br>
          <a href="http://www.google.com/search?hl=en&ie=UTF-8&oe=UTF-8&q=motorcycle&btnG=Google+Search">
          Google</a><br>
            <a href="http://dir.lycos.com/Recreation/Motorcycles/">Lycos</a><br>
            <a href="http://search.netscape.com/ns/browse?id=232">Netscape</a>
          <br>
          <a href="http://dmoz.org/Recreation/Motorcycles/">Open Directory</a><br>
            <a href="http://www.search.com/search?q=motorcycle">SEARCH.com</a><br>
            <a href="http://dpxml.webcrawler.com/info.wbcrwl/search/web/motorcycle">WebCrawler</a><br>
            <a href="http://dir.yahoo.com/Recreation/Automotive/Motorcycles/">Yahoo!</a></td>
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
<!--webbot bot="Include" i-checksum="38882" endspan --><table border="0" width="100%" cellpadding="2">
        <tr>
          <th bgcolor="#CC9966" align="left" class="shopping">Shopping</th>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" class="shoppingbody">
          <!--webbot bot="Include"
            u-include="_private/shopping/motorcycle.htm" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td>
		<a href="http://www.chrischrome.com/">Chris Chrome</a> <br>
		<a href="http://www.chromeworld.com/">Chrome World</a><br>
<a href="http://www.color-rite.com/">Color Rite</a><br>
      <a href="http://www.cruisercustomizing.com/">Cruiser Customizing</a> <br>
		<a href="http://www.cyclegiant.com/">CycleGiant.com</a><br>
      <a href="http://www.cycletrader.com/">CycleTrader.com</a><br>
		<a href="http://www.elitesecuritysupplies.com/">Elite Security Supplies</a><br>
		<a href="http://www.hondadirectlineusa.com/">Honda-Directline</a> <br>
		<a href="http://www.i-bike.com/">i-Bike</a><br>
		<a href="http://www.jpcycles.com/">J&amp;P Cycles</a><br>
		<a href="http://www.kuryakyn.com/">Kuryakyn</a> <br>
		<a href="http://www.nationalcycle.com/">National Cycle</a><br>
		<a href="http://www.niehauscycle.com/">Niehaus Cycle</a><br>
      <a href="http://www.rivcoproducts.com/">Rivco Products</a> <br>
		<a href="http://www.schroaders.com/">Schroader's Honda</a> <br>
		<a href="http://www.things4wings.com/">Things4Wings.com</a><br>
		<a href="http://www.tulsaenterprises.com/">Tulsa Enterprises</a> <br>
		<a href="http://www.whitehorsepress.com/">Whitehorse</a><br>
		<a href="http://www.wingstuff.com/">WingStuff.com</a>
		<br>
		<a href="http://www.wingthings-texas.com/">WingThings</a>
		<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table2">
		<tr>
			<td bgcolor="#FFFF99">Apparel</td>
		</tr>
		</table>
		


		
      <a href="http://www.aerostich.com/">AEROstitch</a> <br>
		<a href="http://www.autumnriders.com/">Autumn Riders</a> - Custom 
		embroidery<br>
		<a href="http://www.bootbarn.com/">Boot Barn</a> <br>
		<a href="http://www.casualcottons.com/">Casual Cottons</a> <br>
		<a href="http://www.classyrider.com/">Classy Rider</a> <br>
		<a href="http://www.cooladvantage.com/">Cool Advantage</a> <br>
		<a href="http://www.cruiserworks.com/">Cruiserworks</a> - Boots<br>
    <a href="http://www.dragginjeans.com/">Draggin' Jeans</a> <br>
      <a href="http://www.froggtoggs.com/">Frogg Toggs</a> <br>
		<a href="http://www.gearupdirect.com/">GearUpDirect.com</a><br>
      <a href="http://www.gerbing.com/">Gerbing</a> - Heated Clothing<br>
		<a href="http://www.gusset.com/">Gusset Jeans</a> <br>
		<a href="http://www.hippohands.com/">Hippo Hands</a> - Handlebar Muffs<br>
		<a href="http://www.joerocket.com/">Joe Rocket</a> <br>
      <a href="http://www.motonation.com/">MotoNation</a> - Boots<br>
		<a href="http://www.nikwax-usa.com/">Nikwax Waterproofing</a> <br>
		<a href="http://www.olympiamotosports.com/">Olympia Moto Sports</a><br>
		<a href="http://www.prexportusa.com/">Prexport</a> <br>
		<a href="http://shirtznthingz.site.yahoo.net/index.html">ShirtznThingz</a>
<br>
<a href="http://www.silvereagleoutfitters.com/">Silver Eagle Outfitters</a> - 
Cooling<br>
		<a target="_blank" href="http://shoeline.com/">Shoeline.com</a> <br>
		<a href="http://www.tourmaster.com/">Tour Master</a> <br>
		<a href="http://www.triplejsportswear.com/">Triple J Sportswear</a><br>
		<a href="http://www.wrapchaps.com/">Wrap-Chaps</a>

<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table4">
			<tr>
				<td bgcolor="#FFFF99">Books / Maps</td>
			</tr>
		</table>
		<a href="submit/affiliate/amazon_com.asp?page=tg/browse/-/10520">
    <img
      src="images/logos/amazon_logo.gif" alt="amazon.com Affiliate"
      border="1" width="90" height="29"></a><br>
                <a href="http://www.clymer.com/">Clymer</a> <br>
				<a href="http://www.helminc.com/">Helm inc</a><br>
		<a href="http://madmaps.com/">MAD Maps</a><br>
		<a href="http://www.motorcyclebooks.com/">MotorcycleBooks.com</a><br>
                <a href="http://www.repairmanual.com/">Repair Manual .com</a>
		<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table2">
		<tr>
			<td bgcolor="#FFFF99">Electronics</td>
		</tr>
		</table>
		


      <a href="http://www.airrider.com/">AirRider.com</a> <br>
		<a href="http://www.autocom.co.uk/">Autocom</a> (UK)<br>
		<a href="http://www.baehrusa.com/">Baehr</a> - Motorcycle Communication 
		Systems<br>
      <a href="http://cellset.com/">CellSet.com</a> <br>
		<a href="http://www.edsets.com/">EdSets</a> - High Fidelity Motorcycle 
		Headsets<br>
    	<a href="http://www.electricalconnection.com/">Electrical Connection</a><br>
		<a href="http://www.imc-electronics.com/gotobuy.html">IMC Electronics 
		N.A. Ltd.</a><br>
      <a href="http://www.jmcorp.com/">J&amp;M Audio</a> <br>
		<a href="http://www.sierra-mc.com/">Sierra-MC Electronics</a><br>
<a href="http://www.speedohealer.com/">SpeedoHealer</a> - Electronic Speedo and 
Odometer calibrator<br>
<a href="http://www.winglites.com/">WingLites.com</a> - Custom LED Trim Lights for 
Honda Goldwing GL1800<br>
<a href="http://www.yellr.com/">YellR</a> - makers of the YELLOW BOX speedo 
recalibrator

<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table2">
		<tr>
			<td bgcolor="#FFFF99">Graphics</td>
		</tr>
		</table>
		


<a href="http://www.reflectivedecals.com/">AppliedGraphics</a> <br>
<a href="http://www.appliquebuffet.com/">Applique Buffet</a><br>
<a href="http://www.badgemaker2.com/">BadgeMaker II</a> <br>
<a href="http://www.ballerpinstriping.com/">Baller Pinstriping</a> <br>
<a href="http://www.custommadecreations.com/">Custom Made Creations</a><br>
<a href="http://www.decalzone.com/">Decal Zone</a> <br>
<a href="http://www.theengraver.com/">Engraver, The</a><br>
<a href="http://www.thefluf.com/">Goldwing Graphics</a><br>
<a href="http://graphxonline.com/">GraphXonline</a> <br>
<a href="http://www.makingitdigital.net/">Making it Digital</a> <br>
<a href="http://www.streetglo.net/">StreetGlo</a><br>
<a href="http://www.ultimatedecals.com/">Ultimate Decals</a>

<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table1">
			<tr>
				<td bgcolor="#FFFF99">Helmets / Safety</td>
			</tr>
		</table>


		<a href="http://www.agv.com/">AGV</a> <br>
                <a href="http://www.lazerhelmets.com/">AGV-Lazer</a><br>
                <a href="http://www.araihelmet.com/">ARAI</a> <br>
                <a href="http://www.bellhelmets.com/">Bell</a> <br>
                <a href="http://www.caberg-helm.com/">Caberg</a> <br>
                <a href="http://www.davida.co.uk/">Davida</a> <br>
                <a href="http://www.hjc-helmet.com/">HJC</a> <br>
                <a href="http://www.flipopen.com/">Jarow</a><br>
                <a href="http://www.nexxpro.com/">NEXX</a> <br>
		<a href="http://www.reevu.com/">Reevu</a><br>
                <a href="http://www.shoei-helmets.com/">Shoei</a> <br>

		

<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table1">
			<tr>
				<td bgcolor="#FFFF99">Insurance</td>
			</tr>
		</table>
		                  <a href="http://www.allstate.com/">Allstate</a> <br>
					<a href="http://www.fernet.com/">Fernet</a><br>
					<a href="http://www.foremost.com/">Foremost</a><br>
                  <a href="http://www.geico.com/">Geico</a> <br>
                  <a href="http://www.hondamotorcycleinsurance.com/">Honda</a><br>
                  <a href="http://www.insure.com/auto/">insure.com</a> <br>
                  <a href="https://secure1.insweb.com/">insweb</a> <br>
                  <a href="http://www1.progressive.com/">Progressive</a><br>
                  <a href="http://quotesmith.com/">Quotesmith.com</a> <br>
					<a href="http://www.statefarm.com/">State Farm</a>
 <br>
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table1">
			<tr>
				<td bgcolor="#FFFF99">Maintenance</td>
			</tr>
		</table>
		                  <a href="http://intershop.amsoil.com/cgi-bin/Amsoil.storefront">AMS OIL</a> - Synthetic<br>
		<a href="http://www.color-rite.com/">Color Rite</a><br>
		<a href="http://www.angelridevideos.com/">GL1800 GW Video</a><br>
        <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table1">
			<tr>
				<td bgcolor="#FFFF99">Seats / Saddles</td>
			</tr>
		</table>


		<a href="http://www.airrider.com/">AirRider</a> <br>
		<a href="http://airventusa.com/">Airvent seats</a> <br>
		<a href="http://www.alaskaleather.com/">Alaska Leather</a><br>
		<a href="http://www.buyaqua-aire.com/">Aqua-aire</a><br>
		<a href="http://www.backaline.com/">Back-A-Line</a> <br>
		<a href="http://www.bikesolutionsllc.com/">Bike Solutions LLC</a><br>
		<a href="http://www.buttbuffer.com/">Butt Buffer</a> <br>
		<a href="http://www.corbin.com/">Corbin</a> <br>
		<a href="http://www.diamondseats.com/">Diamond Custom Seats</a><br>
		<a href="http://www.hartcoseats.com/">Hartco</a> <br>
		<a href="http://www.mustangseats.com/">Mustang</a><br>
		<a href="http://www.rohoinc.com/">ROHO Group</a> <br>
		<a href="http://www.day-long.com/">Russell</a><br>
		<a href="http://www.saddlemen.com/">Saddlemen</a> 
		<br>
		<a href="http://www.ultimateseats.ca/">UltimateSeats.ca</a><br>
		<a href="http://www.utpr.com/">Utopia Products</a>

<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table3">
			<tr>
				<td bgcolor="#FFFF99">Tires</td>
			</tr>
		</table>


		<a href="http://www.accu-pressure.com/">AccuPressure</a> <br>
		<a href="http://www.airmanusa.com/">Airman Inflator</a><br>
		<a href="http://www.avonmotorcycle.com/">Avon</a> <br>
		<a href="http://www.motorcycle-karttires.com/">Bridgestone-Firestone</a>
		<br>
		<a href="http://www.cyclepump.com/">CyclePump</a><br>
		<a href="http://www.dunlopmotorcycle.com/">Dunlop</a> <br>
		<a href="http://www.dynaplug.com/">Dynaplug®</a> <br>
		<a href="http://www.getagauge.com/">Get-A-Gauge</a> <br>
		<a href="http://www.maxxis.com/">Maxxis</a><br>
		<a href="http://www.metzeler.com/">Metzeler</a><br>
      <a href="http://two-wheels.michelin.com/">Michelin</a> <br>
		<a href="http://www.pirellimoto.com/">Pirelli</a><br>
		<a href="http://www.stopngo.com/">Stop &amp; Go</a> - Repairs

		

<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table5">
			<tr>
				<td bgcolor="#FFFF99">Tools</td>
			</tr>
		</table>
      <a href="http://www.cruztools.com/">CruzTOOLS</a> <br>
		<a href="http://sktoolstore.com/kd/kdindex.html">KD Automotive</a><br>
      <a href="http://www.napaonline.com/">NAPA</a><br>
      <a href="http://www.norcoindustries.com/">Norco lifting equip</a> <br>
      <a href="http://www.skywaytools.com/">Skyway Tools</a>
		<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" id="table5">
			<tr>
				<td bgcolor="#FFFF99">Trailers</td>
			</tr>
		</table>
      

      <a href="http://adventuresportsproducts.com/">Adventure Sports</a><br>
		<a href="http://www.american-legend.com/">American Legend</a> <br>
		<a href="http://www.bf-specialties.com/">B&amp;F Specialties</a><br>
		<a href="http://www.bills-trailers.com/">Bill's</a> <br>
		<a href="http://www.burroproductsinc.com/">Burro</a><br>
		<a href="http://www.bushtec.com/">Bushtec</a> <br>
		<a href="http://www.californiasidecar.com/">California Sidecar</a> <br>
		<a href="http://www.carreplicatrailers.com/">Car Replica Trailers</a>
		<br>
		<a href="http://www.cellco.ca/">Cellco</a><br>
		<a href="http://www.championsidecars.com/">Champion</a> <br>
		<a href="http://www.cheyennetrailers.com/">Cheyenne Trailers</a> <br>
		<a href="http://www.com-pac-camp.com/">Com-Pac-Camp</a><br>
		<i>
		<a href="http://www.countrytrailers.net/">Country Trailers</a></i> <br>
		<a href="http://www.cycle-mate.com/">Cycle-Mate</a> <br>
		<a href="http://www.trurons.com/dasz/">Dasz Enterprizes</a><br>
		<a href="http://www.dauntlessmotors.com/">Dauntless</a> <br>
		<a href="http://www.fibroconcept.com/">Fibro Concept Inc.</a><br>
		<a href="http://www.hannigantrikes.com/">Hannigan Motorsports</a> <br>
                <a href="http://www.hayestrailersales.com/">Hayes Trailer Sales</a>
		<br>
		<a href="http://www.honkytrailer.com/">Honkytrailer</a><br>
		<a href="http://www.jdmcstuff.com/">JD's Cycle Stuff</a> <br>
		<a href="http://jdtrailers.com/">JDTrailers dba</a> <br>
		<a href="http://www.littletrailers.com/">Little Trailer Co</a><br>
		<a href="http://www.mctrailersllc.com/">MC Trailers 
		LLC</a><br>
		<a href="http://www.motorcycletrailer.com/">MotorcycleTrailer.com</a><br>
		<a href="http://www.motorvation.com/">Motorvation</a> <br>
		<a href="http://www.aerobourne.com/">M.W.Bourne</a><br>
		<a href="http://www.neoshotrailers.com/">Neosho Starlight Trailers</a>
		<br>
		<a href="http://n-line.com/">N-LINE trailers</a><br>
		<a href="http://www.customcyclecarrier.com/">PHOENIX</a><br>
		<a href="http://piggybacker.stehltow.com/">Piggybacker</a> <br>
		<a href="http://dropbears.com/r/ricandrews/trailers.htm">Ric Andrews</a><br>
		<a href="http://www.rollahome.com/">RollaHome</a> <br>
		<a href="http://r-wtrailers.com/">R&amp;W Trailer</a><br>
		<a href="http://www.sarasotatrailers.com/">Sarasota</a> <br>
		<a href="http://www.scootertrailer.net/">Scooter Trailer</a> <br>
		<a href="http://www.speedwagonmanufacturing.com/">Speedwagon MFG</a><br>
		<a href="http://www.tagalong-trailers.com/">Tagalong</a> <br>
		<a href="http://www.tailwindtrailers.com/">Tailwind Trailers</a> <br>
		<a href="http://www.tntmotocorp.com/">TNT Motocorp</a><br>
		<a href="http://www.toycarrier.com/">Toy Carrier</a><br>
		<a href="http://www.trailmasterinc.com/">Trailmaster Inc.</a> <br>
		<a href="http://turtlehulltrailers.com/">Turtle Hull Trailers</a><br>
		<a href="http://www.wagstrailers.com/">WAGS</a> <br>
		<a href="http://www.wikco.com/cargot1.html">Wikco</a><br>
		<a href="http://www.zztrailer.com/">ZZ Trailer</a><br>
		<a href="http://www.gadgetjq.com/trailer.htm">Build a MC Trailer</a>

</td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="32458" endspan --></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="470">
    <img border="0" src="images/header_motorcycle.jpg" alt="Motorcycling" width="468" height="107">
      <%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\motorcycle.asp" )
	'ELSE
	'	buildLocationTable()
	END IF
      %>
      <table border="0" width="100%" cellpadding="0" cellspacing="3">
        <tr>
          <td valign="top" width="50%">
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Magazines</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" nowrap class="boxbody">
          <!--webbot bot="Include"
                  u-include="_private/magazine/motorcycling.htm" tag="BODY" startspan -->

      <a title="WARNING: Adult Content" href="adultwarning.asp?url=http://www.100-biker.co.uk/&amp;prompt=100%25 Biker">100% Biker</a> - UK<br>

      <a href="http://www.2wf.com/">2WF</a> <br>
      <a href="http://www.airbrushartistmagazine.com/">airbrush artist</a><br>
      <a href="http://www.amemagazine.com/">Alberta Motorcycle Enthusiast</a><br>
      <a title="For People who Love Harley-Davidsons" href="http://www.americanironmagazine.com/">American Iron</a>&nbsp;<br>
      <a href="http://www.americanmotor.com/">American Motorcycle</a>&nbsp;<br>
      <a href="http://www.americanrider.com/">American Rider</a> <br>
      <a href="http://www.american-v.co.uk/">American-V</a> - UK<br>
      <a href="http://www.arizonahighways.com/">Arizona Highways</a> <br>
      <a href="http://www.autoartmagazine.com/">Auto Art</a><br>
      <a title="Tour Magazine from Virginia to the Canadian Border" href="http://www.backroadsusa.com/">Backroads</a>
      <br>
      <a href="http://www.motorcycleshowcase.com/">Barnett's Motorcycle Showcase</a><br>
      <a href="http://www.bike.se/">Bike</a> - Sweden <br>
      <a title="WARNING: Adult Content" href="adultwarning.asp?url=http://www.savagemag.com/&amp;prompt=Biker">Biker</a><br>
      <a title="The Motorcycle Magazine Geared For Women" href="http://www.bikerallymag.com/">Biker Ally</a>
      <br>
      <a href="http://www.bikerboerse.de/">Biker Börse</a> - Germany<br>
      <a href="http://www.bikers-atlas.com/">Bikers Atlas</a><br>
      <a href="http://www.bikerslife.com/">Bikers Life</a>&nbsp;- Italy<br>
      <a href="http://www.thebikinglife.com/">Biking Life</a> <br>
      <a title="WARNING: Adult Content" href="adultwarning.asp?url=http://www.wild.hu/&amp;prompt=Born to be WILD">Born to be WILD</a> - Hungary<br>
      <a title="Official Publication of the Boss Hoss Riders Association" href="http://www.bosshosscountry.com/">Boss Hoss Country</a>
      <br>
      <a href="http://brotherhoodbikersnews.8m.com/">Brotherhood Bikers 
      Newsletter</a> - Tx<br>
      <a href="http://www.thebullet-in.com/">Bullet-In, The</a> - UK<br>
      <a href="http://www.canadianbiker.com/">Canadian Biker</a>&nbsp;<br>
      <a href="http://www.carolinabikermag.com/">Carolina Biker</a><br>
      <a href="http://www.chopperunderground.com/">Chopper Underground</a><br>
      <a title="Northern California's monthly motorcycle magazine" href="http://www.citybike.com/">City Bike</a>&nbsp;<br>
      <a href="http://www.classicbikeguide.com/">Classic Bike Guide</a> - UK<br>
      <a href="http://www.classicmechanics.com/">Classic &amp; Motorcycle Mechanics</a>
      <br>
      <a href="http://www.classicmotorcycle.co.uk/">Classic MotorCycle</a> - UK<br>
      <a href="http://www.classicracer.com/">Classic Racer</a> - UK<br>
      <a title="Canadian Motorcycle Guide" href="http://www.cmgonline.com/">CMG</a> 
      - Canada<br>
      <a href="http://www.crossroadsmagazines.com/">Crossroads</a><br>
      <a href="http://www.motorcyclecruiser.com/">Cruiser</a> <br>
      <a href="http://www.cruisingrider.com/">Cruising Rider</a> <br>
      <a href="http://www.custom-performance.de/">Custom Performance</a> - 
      Germany<br>
      <a href="http://www.custom-bike.at/">Custom Bike</a> - Austria<br>
      <a href="http://www.custom-world.de/">CUSTOM WORLD</a> - Germany<br>
      <a href="http://www.cyclecanadamagazine.net/">Cycle Canada</a><br>
      <a href="http://cycledreamsmag.com/">Cycle Dreams</a><br>
      <a href="http://www.cyclenews.com/">Cycle News</a>&nbsp;<br>
      <a href="http://www.cyclesource.com/">Cycle Source</a><br>
      <a title="Australia's only monthly Motorycle Newspaper" href="http://www.cycletorque.com.au/">Cycle Torque</a> 
      - Australia<br>
      <a href="http://www.cycletrader.com/">Cycle Trader</a> <br>
      <a href="http://cyclevideo.com/">CycleVideo</a><br>
      <a href="http://www.cycleworld.com/">CycleWorld</a> <br>
      <a href="http://www.dealernews.com/">Dealernews</a> <br>
      <a href="http://www.dirtbikemagazine.com/">Dirt Bike</a><br>
      <a href="http://www.dirtrider.com/">Dirt Rider</a> <br>
      <a href="http://www.dixiebiker.com/">Dixie Biker Illustrated</a><br>
      <a href="http://www.dixierider.com/">Dixie Rider</a> <br>
      <a href="http://dualsportnews.com/">Dual Sport News</a><br>
      <a title="WARNING: Adult Content" href="adultwarning.asp?url=http://www.easyriders.com/&amp;prompt=Easyriders">Easyriders</a>&nbsp;<br>
      <a href="http://www.ehlertpowersports.com/">Ehlert Powersports Business</a>
      <br>
      <a href="http://www.epennbiker.com/">E. Penn Biker</a><br>
      <a href="http://www.friction-zone.com/">Friction Zone</a> - Canada<br>
      <a href="http://www.fullthrottleoh.com/">Full Throttle</a> - Ohio &amp; Kentucky
      <br>
      <a href="http://www.fullthrottleusa.com/">FULL THROTTLE</a> <br>
      <a title="Dedicated to Harley-Davidsons in Australia" href="http://www.heavyduty.com.au/">Heavy Duty</a> - Australia<br>
      <a href="http://www.magazin-hp.com/">High-Performance</a> - Germany<br>
      <a href="http://www.thehorsemag.com/">The Horse - Back Street Chopper</a><br>
      <a title="Harley-Davidson Enthusiasts" href="http://www.hotbikeweb.com/">Hot Bike</a>&nbsp;<br>
      <a href="http://www.hotrodbikes.com/">Hot Rod Bikes</a> <br>
      <a href="http://www.insidemotorcycles.com/">Inside Motorcycles</a> - 
      Canada<br>
      <a href="http://www.insidemotocross.ca/">Inside MotoX</a> - Canada<br>
      <a title="WARNING: Adult Content" href="adultwarning.asp?url=http://www.inthewind.com/&amp;Prompt=In The Wind">In The WIND</a><br>
      <a href="http://www.ironworksmag.com/">IronWorks</a>&nbsp;<br>
      <a href="http://www.italianbikemagazine.com/">Italianbike</a> - Italy<br>
      <a href="http://www.legendbike.it/">Legend Bike</a> - Italy<br>
      <a href="http://www.longridersmagazine.com/">Long Riders</a> <br>
      <a href="http://www.mcjournalen.no/">MCJournalen</a> - Norway<br>
      <a href="http://www.mcm.se/">MCM</a> - Sweden<br>
      <a title="Motorcycle News" href="http://www.motorcyclenews.com/">MCN</a> - UK<br>
      <a href="http://www.motomag.com/">MOTO</a> - France<br>
      <a href="http://www.motocross.com/">MOTOCROSS</a> <br>
      <a href="http://www.motocrossactionmag.com/">Motocross Action</a><br>
      <a href="http://www.moto-euro.com/">Moto-Euro</a> <br>
      <a href="http://www.moto-kids.com/">Moto-KIDS</a><br>
      <a href="http://www.moto-loisirs.be/">Moto &amp; Loisirs</a> - Belgium<br>
      <a href="http://www.motorbikestoday.com/">MotorbikesToday</a> <br>
      <a href="http://www.motorcycle.com/">Motorcycle</a> <br>
      <a title="dedicated to the glory days of British motorcycling" href="http://www.the-motor-cycle.co.uk/">The Motor Cycle</a> - UK<br>
      <a href="http://www.mcnews.com/">Motorcycle Consumer® News</a> <br>
      <a href="http://www.motorcyclecruiser.com/">Motorcycle Cruiser</a> <br>
      <a href="http://www.motorcycleevents.com/">Motorcycle Events</a> <br>
		<a href="http://www.motorcycleescape.com/">Motorcycle Escape</a><br>
      <a href="http://www.mimag.com/">Motorcycle Industry</a><br>
      <a title="A Woman's Place Is On The Road" href="http://www.motorcycle-madness.com/">Motorcycle Madness</a><br>
      <a href="http://www.classicmechanics.com/">Motorcycle Mechanics</a> <br>
      <a href="http://www.mpnmag.com/home.htm">Motorcycle Product News</a> <br>
      <a href="http://www.mssmag.com/">Motorcycle Street &amp; Strip</a><br>
      <a href="http://www.motorcyclistonline.com/">Motorcyclist</a> <br>
		<a href="http://www.motorcyclistspost.com/">Motorcyclists Post</a><br>
      <a href="http://www.motoren-toerisme.be/">Motoren &amp; Toerisme</a> - Belgium<br>
      <a href="http://www.motorevue.com/">Moto Revue</a> - French<br>
      <a href="http://www.motorradonline.de/mrd/home">MOTORRAD</a> - Germany<br>
      <a href="http://www.mototurismo.it/">MOTOTURISMO</a> - Italy<br>
      <a href="http://www.motorworld.com/">MotorWorld</a> <br>
      <a href="http://www.mxraceronline.com/">MX Racer</a> <br>
      <a href="http://www.oldbikemart.co.uk/">Old Bike Mart</a> - UK<br>
      <a href="http://www.outlawbiker.com/">Outlaw Biker</a><br>
      <a title="WARNING: Adult Content" href="adultwarning.asp?url=http://www.ozbike.com.au/&amp;prompt=Ozbike">Ozbike</a> - Australia<br>
      <a href="http://www.partsmag.com/">Parts Magazine</a> <br>
      <a title="Hottest Sportbike Magazine for the Motorcycle Enthusiast" href="http://www.quickkmag.com/">Quickk Magazine</a><br>
      <a href="http://www.racerxill.com/">Racer X</a>&nbsp;<br>
      <a href="http://www.racerxill.com/">Racer X Illustrated</a><br>
      <a href="http://www.rideon.ca/">RideON</a> - Canada<br>
      <a href="http://www.ridermagazine.com/">Rider</a> <br>
      <a href="http://www.texmoto.com/">Ride Texas</a> <br>
      <a href="http://www.roadbikemag.com/">RoadBike</a><br>
      <a href="http://www.roadracingworld.com/">Roadracing World</a>&nbsp;<br>
      <a title="Chattanooga's Motorcycle Events" href="http://www.roadrashmag.com/">
      Road Rash</a> - Chattanooga<br>
      <a href="http://www.rrmotorcycling.com/">RoadRUNNER</a> <br>
      <a title="For Yamaha Road Star Motorcycles" href="http://www.roadstarmagazine.com/">RoadStar Magazine</a>
      <br>
      <a href="http://www.motorcyclingmag.com/">Robb Report Motorcycling</a><br>
      <a href="http://www.rumblemagazine.net/">Rumble Magazine</a><br>
      <a title="Scandinavian Custom &amp; Biker Magazine" href="http://www.scanbike.com/">ScanBike</a><br>
      <a href="http://www.scootquarterly.com/">Scoot! Quarterly</a>&nbsp;<br>
      <a href="http://www.scootermag.it/">Scooter</a> - Italy<br>
      <a href="http://www.scootering.com/">Scootering</a>&nbsp; <br>
      <a href="http://www.soundrider.com/">Sound Rider</a><br>
      <a href="http://www.sportrider.com/">Sport Rider</a><br>
      <a href="http://www.steelhorsemag.com/">Steel Horse</a>&nbsp;<br>
      <a href="http://www.streetchopperweb.com/">Street Chopper</a> <br>
      <a href="http://www.superbike.co.uk/">SuperBike</a> - UK<br>
      <a href="http://www.superbike-news.co.uk/">Superbike News</a> - UK<br>
      <a href="http://www.supercross.com/">Supercross</a><br>
      <a title="Suzuki SV Motorcycles" href="http://www.svrider.com/">SV Rider</a>
      <br>
      <a href="http://www.texas2wheeler.com/">Texas 2 Wheeler</a><br>
      <a href="http://thunderroadsmagazine.com/">Thunder Roads</a> <br>
      <a href="http://www.todotrial.com/">Todo Trial</a><br>
      <a href="http://www.trailrider.com/">Trail Rider</a> <br>
      <a href="http://www.transworldmotocross.com/">Transworld Motocross</a> <br>
      <a href="http://www.trialscomp.com/">Trials Competition</a><br>
		<a href="http://www.trikes.org/">Trikes</a><br>
      <a href="http://www.twistngo.com/">Twist &amp; Go Scooter</a> <br>
		<a href="http://www.usridernews.com/">US Rider Motorcycle News</a><br>
      <a href="http://www.virginiawind.com/">VirginiaWind</a> <br>
      <a title="Vintage Motocross &amp; Dirt Bike Quarterly" href="http://www.vmxmag.com.au/">VMX</a> - Australia<br>
      <a href="http://www.v-twin.com/">V-Twin</a><br>
      <a href="http://www.walnecks.com/">Walneck's Cycle Trader</a> <br>
      <a href="http://www.wheelsofgrace.com/">Wheels Of Grace</a><br>
      <a href="http://www.wheelsontheroad.com/">Wheels on the Road</a> - S. 
      Florida<br>
      <a title="Gold Wing Road Riders Assocation Magazine" href="http://www.wingworldmag.com/">Wing World</a> <br>
      <a href="http://www.womanmotorist.com/">Woman Motorist</a> <br>
      <a href="http://www.riderreport.com/wzone.cfm">Woman Rider</a><!--webbot bot="Include" i-checksum="12579" endspan --></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">E-Zines</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                <a href="http://www.1800goldwing.com/">1800GoldWing.Com</a><br>
				<a href="http://www.americanmotor.com/">American Motorcycle 
                Network</a><br>
                <a href="http://www.americansteel.net/">American Steel.Net</a>
                <br>
                <a href="http://www.bikersweb.co.uk/">Bikersweb Cyberzine</a> - 
                UK<br>
                <a href="http://www.bikertrash.com/">BikerTrash.com</a><br>
                <a href="http://www.bostonbiker.com/">Boston Biker</a> <br>
                <a href="http://www.canadianrider.com/">CanadianRider.com</a>
				<br>
				<i><a href="http://www.cycleconnections.com/">Cycle Connections</a></i><br>
                <a href="http://www.dirtbike.com/">Dirtbike.com</a> <br>
                <a href="http://www.dtol.net/">Dirt Track Online</a><br>
                <a href="http://www.dragbike.com/">Dragbike.com</a> <br>
                <a href="http://www.ducatiwomen.com/">Ducati Women</a> <br>
				<a href="http://www.friendsandwings.com/">Friends And Wings</a><br>
                <a href="http://www.goldwinginfo.com/">GoldWingInfo.com</a><br>
                <a href="http://www.zyworld.com/GoldWingProductReviews/">
                GoldWing Product Reviews</a> <br>
                <a href="http://www.goldwingworld.com/">Goldwing World GL 1500</a><br>
                <a href="http://www.hondagoldwings.com/">Honda GoldWings</a> <br>
                <a href="http://www.insidebikes.com/">InsideBikes.com</a> <br>
                <a href="http://www.metricbikes.com/">Metric Bikes .com</a> <br>
                <a title="WARNING: Adult Content" href="adultwarning.asp?url=http://www.missbikeweek.com/&prompt=Miss Bike Week">Miss Bike Week</a><br>
                <a href="http://www.motodemons.com/">MotoDemons.com</a><br>
                <a href="http://www.motorcyclebuzz.com/">Motorcycle Buzz</a><br>
                <a href="http://www.motorcyclecity.com/">Motorcycle City</a> <br>
                <a href="http://www.motorcycledaily.com/">Motorcycle Daily</a><br>
                <a href="http://www.motorcyclejournal.net/">Motorcycle Journal</a>
                <br>
                <a href="http://www.motorcyclelife.net/">MotorcycleLife.net</a>
                <br>
                <a href="http://www.motorcyclenewswire.com/">Motorcycle News 
                Wire</a><br>
                <a href="http://www.motorcycle-usa.com/">Motorcycle USA</a> <br>
                <a href="http://www.motopress.net/">MotoPress</a><br>
                <a href="http://www.motorsports-network.com/">Motorsports 
                Network</a><br>
                  <a href="http://www.motorworld.com/">MotorWorld</a> <br>
                <a href="http://www.motoworld.com/">MotoWorld.com</a> <br>
                <a href="http://www.mxgirls.com/">MXGirls.com</a><br>
                <a href="http://www.powersportsnetwork.com/">PowerSports Network</a>
                <br>
                <a href="http://www.rideamotorcycle.com/">RideAMotorcycle.com</a><br>
                <a href="http://www.ridernews.net/">RiderNews.net</a><br>
                <a href="http://www.rideronline.com/">RIDER ONLINE</a>&nbsp; <br>
      <a href="http://www.gazette9.com/">Single Cylinder Gazette</a><br>
                <a href="http://www.esportbike.com/">SportbikeS.com</a><br>
                <a href="http://www.sportbikes.net/">Sportbikes.net</a> <br>
                <a href="http://www.sportsbikerider.com/">SportsBikeRider</a><br>
                <a href="http://www.supercross.com/">Supercross.com</a> <br>
                <a href="http://www.thebikesite.com/">TheBikeSite.com</a><br>
                <a href="http://www.travelingbikers.com/">Traveling Bikers</a><br>
                <a href="http://www.virginiawind.com/">VirginiaWind</a> <br>
                <a href="http://www.woti.org/">Wings on the Internet</a> <br>
                <a href="http://www.yankeecruisah.com/">Yankee Cruisah</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Message 
					Boards</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                <a href="http://www.1800goldwing.com/phpBB2/">1800GoldWing.com</a><br>
				<a href="http://www.gl1800riders.com/">GL1800Riders</a> <br>
				<a href="http://www.harleychatgroup.com/">Harley Chat Group</a>
				<br>
				<a href="http://www.RidersRally.com/">RidersRally - GL1800</a>
				<br>
				<a href="http://www.wing-owners.com/">Wing-Owners</a><br>
				<a href="http://wingridersboard.com/">Wingriders Board</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">TV &amp;
                  Radio</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                  <a href="http://dsc.discovery.com/fansites/amchopper/amchopper.html">
                  American Chopper</a> - TLC<br>
                  <a href="http://www.americanthundertv.com/">American Thunder</a> 
                  - SpeedTV<br>
                  <a href="http://www.theautochannel.com/">Auto Channel</a> <br>
                  <a href="http://www.borntoride.com/">Born To Ride</a> - UPN<br>
                  <a href="http://www.chopshoptour.com/">Chop Shop Tour</a><br>
                  <a href="http://www.rideontv.com/">Corbin's Ride ON</a> - 
                  SpeedTV<br>
      <a href="http://www.crossroadsmagazines.com/">Crossroads</a> - UPN<br>
                  <a href="http://www.motoworld.com/">MotoWorld</a> - Spike<br>
                  <a href="http://www.speedtv.com/">Speed Channel</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Manufacturers</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" width="100%" valign="top" class="boxbody">
                  <a href="http://www.aprilia.com/">Aprilia</a> - Italy<br>
                  <a href="http://www.bmw-motorrad.com/">BMW</a>&nbsp;- Germany<br>
                  <a href="http://www.buell.com/">Buell</a> - US<br>
                  <a href="http://www.cagivausa.com/">Cagiva</a> - Italy<br>
                <a href="http://www.ec21.com/rogerems">China Geely</a> <br>
                  <a href="http://www.classicmotorcycle.com/">CMSI</a><br>
                  <a href="http://www.ducati.com/">Ducati</a> - Italy<br>
                <a href="http://www.enfieldmotorcycles.com/">Enfield Bullet</a> 
                  - UK<br>
                  <a href="http://www.Harley-Davidson.com/">Harley-Davidson</a> 
                  - US<br>
                <a href="http://www.hercheemoto.com/">Her Chee</a> - Taiwan<br>
                  <a href="http://powersports.honda.com/">Honda</a> - Japan <br>
                  <a href="http://www.husqvarnausa.com/">Husqvarna</a> - Italy<br>
					<a href="http://www.indianmotorcycle.com/">Indian</a> - US<br>
                  <a href="http://www.kawasaki.com/">Kawasaki</a> - Japan<br>
                <a href="http://www.ktm.at/">KTM</a> - Austria<br>
                  <a href="http://www.lambrettausa.com/DesktopDefault.aspx">
                  Lambretta</a> - Italy (scooter)<br>
                  <a href="http://www.laverda.com/">Laverda</a> - Italy<br>
                  <a href="http://www.mondialmoto.it/">Mondial Moto</a> - Italy<br>
                  <a href="http://www.usmontesa.com/">Montesa</a> - Spain<br>
                  <a href="http://www.motoguzzi.it/">Moto Guzzi</a> - Italy<br>
                  <a href="http://www.mvagusta.it/">MV Agusta</a> - Italy<br>
					<a href="http://www.muz.de/">Motorrad und Zweiradwerk</a> - 
					Germany<br>
                  <a href="http://www.nortonmotorcycles.com/">Norton</a> - UK<br>
                <a href="http://www.royalenfield.com/">Royal Enfield</a> - UK<br>
                  <a href="http://www.suzukicycles.com/">Suzuki</a> - Japan<br>
                  <a href="http://www.triumph.co.uk/">Triumph</a> - UK<br>
                  <a href="http://www.vespa.com/">Vespa</a> - Italy (scooter)<br>
                  <a href="http://www.victorymotorcycles.com/">Victory</a> - US<br>
					<a href="http://www.vincentmotors.com/">Vincent Motors</a> - 
					US<br>
                <a href="http://www.vipermotorcycle.com/">Viper</a><br>
                <a href="http://www.whizzermotorbike.com/">Whizzer</a> - US<br>
                  <a href="http://www.yamaha-motor.com/">Yamaha</a> - Japan <br>
                <a href="http://www.zongshenmotor.com/zh_en/">Zongshen motor</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">
                Custom/Specialty Shops</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                <a href="http://www.arlenness.com/">Arlen Ness</a><br>
				<a href="http://www.bigbearchoppers.com/">Big Bear Choppers</a><br>
                <a href="http://www.v8bikes.com/">BIG BRUTE</a><br>
                <a href="http://www.bigdogmotorcycles.com/">Big Dog Motorcycles</a>
                <br>
                <a href="http://www.bourgets.com/">Bourget's Bike Works, Inc.</a><br>
                <a href="http://www.bosshoss.com/">Boss Hoss</a> - US<br>
                <a href="http://www.bostonmotorcycle.com/">Boston Motorcycle 
                Company</a> <br>
                <a href="http://www.choppercitycustoms.com/">Chopper City 
                Customs</a><br>
                <a href="http://www.choppersinc.com/">Choppers Inc.</a> <br>
                <a href="http://www.confederate.com/">Confederate Motor Company</a>
                <br>
                <a href="http://www.desperadomotorcycles.com/">Desperado 
                Motorcycles</a> <br>
				<a href="http://www.exilecycles.com/">Exile Cycles</a><br>
                <a href="http://jesserookecustoms.com/">Jesse Rooke Customs</a><br>
                <a href="http://www.kendalljohnsoncustoms.com/">Kendall Johnson 
                Customs</a> <br>
                <a href="http://martinbrosbikes.com/">Martin Bros. Bikes</a><br>
                <a href="http://www.metrycustomcycles.com/newnew/mcc.htm">Metry 
                Custom Cycles</a><br>
                <a href="http://www.milwaukeeiron.com/">Milwaukee Iron</a><br>
                <a href="http://www.orangecountychoppers.com/">Orange County 
                Choppers</a>&nbsp; <br>
                <a href="http://www.prostreetcustoms.com/">Pro Street Customs</a><br>
                <a href="http://www.ridleymotorcycles.com/">Ridley Motorcycle 
                Company</a> <br>
                <a href="http://www.rokon.com/">ROKON</a> <br>
                <a href="http://www.steelthundercc.com/">Steel Thunder Custom 
                Cycles</a><br>
                <a href="http://www.thundercycle.com/">Thunder Cycle Design</a><br>
                <a href="http://www.ultracycles.com/">Ultra Motorcycle Company</a>
                <br>
                <a href="http://www.unlimiteddreams.biz/">Unlimited Dreams</a>
				<br>
				<a href="http://www.vengeancemotorcycles.com/">Vengeance 
				Motorcycles</a><br>
                <a href="http://westcoastchoppers.com/">West Coast Choppers</a><br>
                <a href="http://www.wildwestmc.com/">Wild West Motor Company</a>
                <br>
                <a href="http://www.youngchoppers.com/">Young Choppers</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Directories
                  &amp; Rings</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                <a href="http://www.dropbears.com/bikelinks/index.htm">Bikelinks</a>
                <br>
                <a href="http://www.bikerheaven.com/">BikerHeaven</a><br>
                <a href="http://www.bikerlink.com/">Bikerlink.com</a> <br>
                <a href="http://www.bikers-engine.com/">Bikers Engine</a><br>
                <a href="http://r.webring.com/hub?ring=bmwbikering">BMW WebRing</a><br>
                <a href="http://www.geocities.com/cmcdatabase/">Christian MC 
                DataBase</a> <br>
                <a href="http://b.webring.com/webring?ring=goldwing&list">Gold 
                Wing WebRing</a> <br>
                <a href="http://dir.webring.com/rw?d=Recreation___Sports/Automotive/Motorcycles/Makes_and_Models/Harley_Davidson">
                Harley Davidson WebRings</a> - Dir<br>
                <a href="http://dir.webring.com/rw?d=Recreation___Sports/Automotive/Motorcycles/Makes_and_Models/Honda">
                Honda WebRings</a> - Directory<br>
                <a href="http://www.motorcity.net/">MotorCity.net</a><br>
                <a href="http://www.motorcycle-links.com/">Motorcycle-Links.com</a>
                <br>
                <a href="http://j.webring.com/hub?ring=motorcycle">Motorcycles 
                WebRing</a> <br>
				<a href="http://www.themotorcycleyellowpages.com/">Motorcycle 
				Yellow Pages</a><br>
                <a href="http://www.moto-directory.com/">Moto-Directory</a><br>
                <a href="http://motorcycle.start4all.com/">motorcycle.start4all</a>
                <br>
                <a href="http://www.sepnet.com/cycle/">Motorcycle WEB INDEX</a>
                <br>
                <a href="http://motosites.com/">MotoSites.com</a> <br>
                <a href="http://totalmotorcycle.web1000.com/">Total Motorcycle 
                Index</a><br>
                <a href="http://welcome.to/worldwide-biker-web">worldwide biker 
                web</a></td>
              </tr>
            </table>
          </td>
          <td valign="top" class="gutter" bgcolor="#C0C0C0" width="1"><img border="0" src="../images/000000.gif" height="1" width="1"></td>
          <td valign="top" width="50%">
<table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Event 
					Calendar</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
<!--#include file="scripts/sortutil.asp"-->
<!--#include file="scripts/remind.asp"-->
<!--#include file="scripts/remind_files.asp"-->
<!--#include file="scripts/remind_utils.asp"-->
<%

DIM g_oFSO
SET g_oFSO = CreateObject( "Scripting.FileSystemObject" )


FUNCTION loadMotorcycleFiles( nDateBegin, nDateEnd, sCategories, sHolidayCategories, bShowToday )

	DIM	sRemindFile
	DIM	oCalendar
	DIM	oCalendarFile
	
	DIM	aFileList()
	REDIM aFileList(5)
	DIM	aTempSplit
	DIM	sTemp
	
	getRemindList aFileList
	
	SET loadMotorcycleFiles = Nothing
	
	IF -1 < UBOUND(aFileList) THEN
		SET	oCalendar = new CCalendar
		
		IF bShowToday THEN
			oCalendar.juliandate = jdateFromVBDate( NOW )
			oCalendar.subject = "* T * O * D * A * Y *"
			oCalendar.style = "RmdToday"
			oCalendar.outputMessage
		END IF
		
		FOR EACH sTemp IN aFileList
			IF 0 < INSTR( LCASE(sTemp), "motorcycle" ) THEN
				IF "" <> sTemp THEN
					aTempSplit = SPLIT( sTemp, vbTAB )
					SET oCalendarFile = new CCalendarFile
					oCalendarFile.file = aTempSplit(1)
					oCalendarFile.datebegin = nDateBegin
					oCalendarFile.dateend = nDateEnd
					IF 0 < INSTR(aTempSplit(1),";categories") THEN
						IF 0 < LEN(sCategories) THEN oCalendarFile.categories = sCategories
					ELSEIF 0 < INSTR(aTempSplit(1),";holiday") THEN
						IF 0 < LEN(sHolidayCategories) THEN oCalendarFile.categories = sHolidayCategories
					ELSE
						IF 0 < LEN(sCategories) THEN oCalendarFile.categories = sCategories
					END IF
					oCalendarFile.getDates( oCalendar )
				END IF
			END IF
		NEXT 'sTemp
				
		SET loadMotorcycleFiles = oCalendar
		SET oCalendar = Nothing
		SET oCalendarFile = Nothing

	END IF
END FUNCTION


SUB makeEventCalendar()

	
	DIM	sMon
	DIM	m
	m = 6
	
	
	DIM	oCalendar
	DIM	oCalendarFile
	
	DIM	nDateBegin
	DIM	nDateEnd
	DIM	sRemindFile
	
		
		DIM	nYear, nYearEnd
		DIM	nMon, nMonEnd
		
		nYear = YEAR(NOW)
		nMon = MONTH(NOW)
		nMonEnd = nMon + m
		IF 12 < nMonEnd THEN
			nYearEnd = nYear + FIX(nMonEnd/12)
			nMonEnd = nMonEnd MOD 12
		ELSE
			nYearEnd = nYear
		END IF
		
		'Response.Write "m = " & nMon & ", y = " & nYear & "<br>"
		'Response.Write "m = " & nMonEnd & ", y = " & nYearEnd & "<br>" & vbCRLF
		
		nDateBegin = jdateFromGregorian( 1, nMon, nYear )
		nDateEnd = jdateFromGregorian( 1, nMonEnd, nYearEnd ) - 1
		
		
	
	DIM sCatMC
	
	sCatMC = "motorcycle,rally"
	IF "" <> sLocation THEN sCatMC = sCatMC & ",motorcycle_" & sLocation
	
	SET oCalendar = loadMotorcycleFiles( nDateBegin, nDateEnd, sCatMC, "holiday,usa,none", TRUE )
	IF NOT Nothing IS oCalendar THEN
	
		'Load the XSL
		DIM	oXSL
		DIM	oXML
		SET oXSL = Server.CreateObject("msxml2.DOMDocument")
		'SET oXSL = Server.CreateObject("Microsoft.XMLDOM")
		oXSL.async = false
		oXSL.load(Server.MapPath("scripts/remind.xslt"))
		
		SET oXML = oCalendar.xmldom
		Response.Write oXML.transformNode(oXSL)
	
	END IF


END SUB
makeEventCalendar

SET g_oFSO = Nothing
%>
                </td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Events &amp; 
					Rallies</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                <a href="http://www.tourexpo.com/">Americade</a> <br>
                <a href="http://www.motorcyclejubilee.com/">Anpac Motorcycle 
				Jubilee</a><br>
                <a href="http://www.bransonmotorcyclerally.com/">Branson 
				Motorcycle Rally</a><br>
                <a href="http://www.charlestonmotorcycleweek.com/">Charleston 
				Motorcycle Week</a><br>
                <a href="http://www.biketoberfest.org/">Daytona Beach 
				Biketoberfest</a> <br>
                <a href="http://www.officialbikeweek.com/">Daytona Beach Bike 
				Week</a> <br>
                <a href="http://www.heritagemotorcyclerally.com/">Heritage 
				Motorcycle Rally</a> <br>
				<a href="http://www.hollisterrally.com/">Hollister Independence 
				Rally</a><br>
                <a href="http://www.hondahoot.com/">Honda Hoot</a> <br>
                <a href="http://www.laconiamcweek.com/">Laconia Motorcycle Week</a>
                <br>
                <a href="http://www.leesburgbikefest.com/">Leesburg Bikefest</a><br>
                <a href="http://www.littlesturgisrally.net/">Little Sturgis 
				Rally</a> - Sturgis, KY<br>
                <a href="http://www.louisianabikeexpo.com/">Louisiana Bike Expo</a>
				<br>
				<a href="http://www.lynchburgsaloon.com/">Lynchburg Motorcycle 
				Rally</a> <br>
				<a href="http://www.mawmr.com/">Mid-Atlantic Women's MC Rally</a><br>
                <a href="http://www.myrtlebeachbikeweek.com/">Myrtle Beach Bike 
				Week</a> <br>
                <a href="http://www.ponyexpressrides.org/">Pony Express Relay</a>
                <br>
                <a href="http://www.ride4kids.org/">Ride For Kids</a> <br>
				<a href="http://www.rotrally.com/">ROT Biker Rally</a> - TX<br>
				<a href="http://snowshoefreedomfest.com/">Snowshoe Freedom Fest</a><br>
                <a href="http://www.southmississippibikerally.com/">South 
				Mississippi Bike Rally</a><br>
                <a href="http://sturgis.com/">Sturgis</a> - SD<br>
				<a href="http://www.sturgismsrally.com/">Sturgis, MS, Rally</a><br>
                <a href="http://www.al-tn-trailoftears.org/">Trail of Tears</a><br>
                <a href="http://www.wing-ding.org/">Wing Ding</a> - Honda 
				Goldwings
      <table border="0" width="100%" cellspacing="0">
        <tr>
          <th class="boxsubtitle" align="left">Directories</th>
        </tr>
      </table>
                <a href="http://www.carolinamcevents.com/">Carolina Motorcycle 
				Events</a> <br>
                <a href="http://www.lets-ride.com/">Let's Ride</a> <br>
				<a href="http://www.motorcycleevents.com/">MotorcycleEvents.com</a><br>
                <a href="http://www.motorcycle-runs.com/">Motorcycle-Runs</a>
                </td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2" id="table1">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Charities</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                <a href="http://www.afr1982.org/">American Federation of Riders</a><br>
				<a href="http://www.bacausa.com/">Bikers Against Child Abuse</a>
                <br>
                <a href="http://www.ripsbadride.com/">Bikers Against Diabetes</a><br>
                <a href="http://www.baddcentral.com/">Bikers Against Drunk 
                Drivers</a><br>
                <a href="http://www.bikers4kids.org/">Bikers for Kids</a> <br>
				<a href="http://www.goodsamaritanride.com/">Good Samaritan Ride</a><br>
                <a href="http://www.kylepettycharityride.com/">Kyle Petty 
                Charity Ride</a> <br>
                <a href="http://www.loveride.org/">Love Ride</a><br>
                <a href="http://www.ponyexpressrides.org/">Pony Express Relay</a>
                <br>
                <a href="http://www.rebelswithacause.us/">Rebels with a Cause</a>
                <br>
				<a href="http://www.ride4kids.org/">Ride For Kids</a><br>
                <a href="http://www.rftw.org/">Run for the Wall</a></td>
              </tr>
            </table>
            
            <table border="0" width="100%" cellpadding="2" id="table2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Shows</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                <a href="http://www.motorcycleshows.com/">International 
                Motorcycle Shows</a> <br>
                <a href="http://www.fastdates.com/BIKESHOW.HTM">LA Calendar 
                Motorcycle Show</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Clubs &amp; 
                Organizations</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                <a href="http://www.americanbikerassociation.com/">American 
                Biker Association</a> <br>
                <a href="http://americancruisers.us/">American Cruisers Alliance</a>
                <br>
                <a href="http://www.americanmotorcycleclub.com/">American 
                Motorcycle Club</a><br>
                <a href="http://www.ama-cycle.org/">American Motorcyclist Assn</a> <br>
                <a href="http://adamsimages.com/mc/astra.html">American Sport 
                Touring Rider's Assn</a> <br>
                <a href="http://www.antiquemotorcycle.org/">Antique MC of 
                America</a><br>
                <a href="http://www.blueknights.org/">Blue Knights International</a>
                <br>
                <a href="http://www.brothersinarmsmc.com/">Brothers In Arms M-C</a><br>
                <a href="http://www.cruiserclubusa.org/">Cruiser Club USA</a>
				<br>
				<a href="http://www.homeofthedragon.com/">Dragon Riders Club</a><br>
                <a href="http://pjgillam.tripod.com/">Herd of Turtles Motorcycle 
                Club</a> <br>
                <a href="http://www.ibmwr.org/">Internet BMW Riders</a> - Mailing List<br>
                <a href="http://www.ibmc.org/">Int'l Brotherhood Of MC Campers</a><br>
                <a href="http://www.ironbutt.com/">Iron Butt Association</a> <br>
                <a href="http://www.longridersmc.org/">Long Riders Association</a><br>
                <a href="http://www.moocowbikers.org/">Moo Cow Bikers</a> - 
                Chick-Fil-A<br>
                <a href="http://www.mtariders.com/">Motorcycle Touring Assn</a> <br>
                <a href="http://www.motormaids.org/">Motor Maids, Inc.</a> <br>
                <a href="http://www.aimncom.com/ncom/">National Coalition of 
                Motorcyclists</a><br>
                <a href="http://www.nohvcc.org/">National Off-Highway
                <font size="1">Vehicle Conservation Council</font></a> <br>
                <a href="http://www.retreads.org/">Retreads Motorcycle Club</a>
                <br>
                <a href="http://www.ridemotorcycle.com/">Ride Motorcycle Club</a>
                <br>
                <a href="http://www.roadandrider.com/">Road &amp; Rider Assn</a> <br>
                <a href="http://www.southerncruisers.net/">Southern Cruisers</a>
                <br>
                <a href="http://www.spokes-women.com/">Spokes-Women MC</a> <br>
                <a href="http://www.tmra.org/">Texas MC Roadriders Assn</a><br>
				<a href="http://www.trikes.org/">Trike Riders International</a><br>
                <a href="http://www.twistysisters.com/">Twisty Sisters</a> <br>
                <a href="http://www.umci.net/">United M-C International</a><br>
                <a href="http://www.usmvmc.org/">U S Military Vets Motorcycle 
                Club</a><br>
                <a href="http://www.micapeak.com/VME/">Vintage Motorcycle 
                Enthusiasts</a><br>
                <a href="http://www.womenonwheels.org/">Women On Wheels</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Owner's 
                Groups</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                <a href="http://www.agwa.com/">American Gold Wing Association</a>
                <br>
                <a href="http://www.aprilia-usa.com/">Aprilia USA Owner's Club</a><br>
                <a href="http://www.classicwingclub.org/">Classic Wing Club</a>
                <br>
                <a href="http://www.bmwmoa.org/">BMW MC Owners of America</a><br>
                <a href="http://www.bmwra.org/">BMW Riders Association</a> <br>
                <a href="http://www.bosshosscountry.com/bhra/index.htm">Boss 
                Hoss Riders Assn</a><br>
                <a href="http://www.gwrra.org/">Gold Wing Road Riders Assn</a>
                <br>
                <a href="http://www.gwta.org/">Gold Wing Touring Assn</a><br>
                <a href="http://www.hog.com/">Harley Owners Group</a> <br>
                <a href="http://hrca.honda.com/index.asp?bhcp=1">Honda Rider's 
                Club of America</a> <br>
                <a href="http://www.ridehsta.com/">Honda Sport Touring 
                Association</a><br>
                <a href="http://www.ironbuttgoldwingers.com/">Ironbutt 
                Goldwingers</a> <br>
                <a href="http://www.ironindian.com/">Iron Indian Riders 
                Association</a><br>
                <a href="http://www.magnariders.com/">Magna Riders Association</a>
                <br>
                <a href="http://www.startouring.org/">STAR Touring &amp; Riding Assn</a><br>
                <a href="http://www.valkyrie-owners.com/">Valkyrie Owners 
                Association</a> <br>
                <a href="http://www.valkyrieriders.com/">Valkyrie Riders Cruiser 
                Club</a> <br>
                <a href="http://www.venturers.org/">Venturers Motorcycle Club</a>
                <br>
                <a href="http://www.thevmc.com/">Victory Motorcycle Club</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Information</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                  <a href="http://www.bikersrights.com/">Bikers Rights Online!</a><br>
                  <a href="http://www.mrf.org/">Motorcycle Riders Foundation</a><br>
                  <a href="http://www.msf-usa.org/">Motorcycle Safety Foundation</a>
                  <br>
                  <a href="http://www.aimncom.com/ncom/">National Coalition of 
                  Motorcyclists</a><br>
                  <a href="http://www.motorists.org/">National Motorists 
                  Association</a></td>
              </tr>
            </table>
            
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Trips &amp; 
                Routes</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                <!--webbot bot="Include" U-Include="_private/motorcycle/trips.htm" TAG="BODY" startspan -->

<p>
                <a href="http://www.adamsimages.com/mc/abr.html">America's 
                BackRoad Reader</a><br>
                <a href="http://www.byways.org/">America's Byways™</a> <br>
                <a href="http://www.pashnit.com/motoroads.htm">California 
                Motorcycle Roads</a> <br>
				<a href="http://www.dealsgap.com/">Deal's Gap</a><br>
                <a href="http://www.dine.com/">Dine.com</a> <br>
				<a href="http://www.homeofthedragon.com/">Dragon Riders Club</a><br>
                <a href="http://members.aol.com/easyreadertg/index.html">
                EasyReader Tourguide</a><br>
                <a href="http://www.miatadrives.com/">MiataDrives.com</a> <br>
                <a href="http://www.motorcycleroads.com/">Motorcycle Roads in 
                the USA</a><br>
                <a href="http://www.motorcycleroads.us/">MotorcycleRoads.US</a><br>
                <a href="http://www.motorcycleshipping.com/">
                MotorcycleShipping.com</a> <br>
                <a href="http://www.micapeak.com/info/mclist.html">Motorcycle 
                Trip Checklist</a> <br>
                <a href="http://my.execpc.com/~ytk/st_list.htm">NASBRR State 
                Road List</a><br>
                <a href="http://www.nps.gov/">National Park Service</a> <br>
                <a href="http://www.fhwa.dot.gov/trafficinfo/index.htm">Nat'l 
                Traffic &amp; Road Closure Info</a><br>
                <a href="http://www.randmcnally.com/rmc/tools/roadConstructionSearch.jsp">
                Rand McNally - Road Construction</a><br>
                <a href="http://www.swbike.com/">Southwest Bike Travel Zine</a><br>
                  <a href="http://www.speedtrap.com/">Speedtrap Registry</a> <br>
                <a href="http://my.execpc.com/~ytk/">Sport Bike Road Registry</a> 
                - US<br>
				<a href="http://www.tailofthedragon.com/">Tail of the Dragon at 
				Deals Gap</a><br>
                <a href="http://www.travelingbikers.com/">Traveling Bikers</a>
                <br>
                <a href="http://www2.firstsaga.com/goldwing/tourism.html">US and 
                Canadian Tourism Offices</a><br>
                <a href="http://www.usroads.com/">U.S. Roads</a> <br>
                <a href="http://www.yankeecruisah.com/">Yankee Cruisah</a></p>

<!--webbot bot="Include" i-checksum="20054" endspan --></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Tours</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                <!--webbot bot="Include" U-Include="_private/motorcycle/tours.htm" TAG="BODY" startspan -->

<p>
                <a href="http://www.twouptours.com/">Adirondacks and Beyond</a><br>
                <a href="http://www.admo-tours.com/">AdMo Motorcycle Tours</a>
                <br>
                <a href="http://www.winternet.com/~act/">Adventure Cycle Tours</a>
                <br>
                <a href="http://www.motoroads.com/">Adventure Motorcycle Tours</a><br>
                <a href="http://www.capetown.to/moto/">African Outdoors</a> <br>
				<a href="http://www.alaskamotorcycletours.com/">Alaska 
				Motorcycle Tours</a><br>
                <a href="http://www.alaska.net/~akrider/">Alaska Rider Tours</a> <br>
				<a href="http://www.asianbiketour.com/">Asian Motorcycle 
				Adventures</a><br>
                <a href="http://www.bmca.com/">Beach's Motorcycle 
                Adventures</a> <br>
                <a href="http://www.bigkahunarentals.com/">Big Kahuna 
                MC Tours n' Rentals</a> - Hawaii<br>
				<a href="http://www.bikersites.com/motorcycle/Assorted/Tours_and_Rentals/Tours_and_Rentals.cfm">
				Biker Site's Tours &amp; Rentals</a><br>
                <a href="http://www.biketours-uk.com/">Bike Tours UK</a> <br>
                <a href="http://www.bosenberg.com/">Bosenberg</a> - Europe and Alps<br>
                <a href="http://www.coastlinemc.com/">Coastline Motorcycle Tours</a>
				<br>
				<a href="http://www.crtrails.co.cr/">Costa Rica MC Tours &amp; 
				Rentals</a><br>
				<a href="http://www.mariaalexandra.com/">Costa Rica Tour</a><br>
                <a href="http://www.eaglerider.com/">EagleRider</a> - USA Tours<br>
				<a href="http://www.edelweissbike.com/">Edelweiss Bike Travel</a><br>
                <a href="http://www.familyrides.com/">FamilyRides</a> - Blue Ridge 
                Pkwy<br>
                <a href="http://www.twisty-roads.com/">Freedom Motorcycle Tours</a><br>
                <a href="http://www.greatamericantouring.com/">Great American 
                MC Touring</a> <br>
				<a href="http://www.gcmc.com/">Great Canadian MC Tours</a><br>
                <a href="http://www.hdbikr.com/">HD BIKR</a> <br>
				<a href="http://www.highvalleyresort.com/">High Valley Resort, 
				Suches Georgia</a><br>
				<a href="http://www.highwaypegs.com/">Highway Pegs - HD Rentals</a>
				<br>
				<a href="http://www.imt-bike.com/">Iberian Moto Tours</a> <br>
				<a href="http://www.ironhorsestables.com/">Iron Horse Stables</a>
				<br>
				<a href="http://www.kea-motorcycles.com/">KEA New Zealand Tours</a><br>
                <a href="http://www.lotustours.com/">Lotus Tours</a><br>
                <a href="http://www.african-bike-adventures.de/">Moto-Africa</a>
                <br>
				<a href="http://www.motodiscovery.com/">MotoDiscovery</a><br>
                <a href="http://www.motorcycletours.com/">Northeastern 
                Motorcycle Tours</a> <br>
				<a href="http://www.nzbike.com/">New Zealand MC Rentals &amp; Tours</a> <br>
                <a href="http://www.rideamerica.com/">Ride America</a> <br>
				<a href="http://www.ridefree.com/">Ride Free MC Tours &amp; Rentals</a>
				<br>
				<a href="http://www.ridethedream.com/">Ride the Dream</a> <br>
				<a href="http://www.rockymtnmoto.com/">Rocky Mtn Motorcycle 
				Holidays</a> <br>
				<a href="http://www.southerneaglemcresort.com/">Southern Eagle 
				Motorcycle Resort</a><br>
                <a href="http://www.stayinsafe.com/">Stayin' Safe Motorcycle 
                Tours</a> <br>
				<a href="http://www.wvriders.com/">West Virginia Riders</a><br>
				<a href="http://www.wingtourshawaii.com/">Wing Tours Hawaii</a></p>

<!--webbot bot="Include" i-checksum="21990" endspan --></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Education 
                / Safety</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                  <a href="http://www.motorcyclebeginners.com/">
                  MotorcycleBeginners.com</a><br>
                  <a href="http://www.msf-usa.org/">Motorcycle Safety Foundation</a>
                  <br>
                  <a href="http://www.ecsis.net/mrep/">Motorcycle Safety WEB 
                  Sites</a><br>
                  <a href="http://www.msgroup.org/TIPS.asp">Motorcycle Tips and 
                  Techniques</a><br>
                  <a href="http://www.ahainc.com/nams/">Nat'l Agenda For MC 
                  Safety</a><br>
                  <a href="http://www.nhtsa.dot.gov/">Nat'l Hi'way Traffic 
                  Safety Admin</a><br>
                  <a href="http://www.ridelikeapro.com/">Ride Like a Pro</a><br>
					<a href="http://www.ridersedge.com/">Rider's Edge</a><br>
                  <a title="National Association of State Motorcycle Safety Administrators" href="http://www.smsa.org/">State MC Safety Administrators</a>
                  <br>
                  <a href="http://www.stayinsafe.com/">Stayin' Safe Motorcycle 
                  Tours</a> <br>
					<a href="motorcycle_tclock.htm">T-CLOCK Inspection 
					Check-list</a><br>
                  <a href="http://www.usroads.com/">U.S. Roads</a> <br>
					<a href="http://will.mylanders.com/outdoors/motorcycle/">
					Will England - Eclectic Motorcycle</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">History</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                  <a href="http://www.allenmuseum.com/">Allen Vintage Motorcycle 
                  Museum</a><br>
                  <a href="http://www.guggenheim.org/exhibitions/past_exhibitions/motorcycle/motorcycle.html">
                  Art of the Motorcycle</a> -Guggenheim<br>
                  <a href="http://www.barbermuseum.org/">Barber Vintage 
                  Motorsports Musm</a><br>
                  <a href="http://www.chandlerwheels.com/">Chandler Wheels 
                  Vintage Musm</a> <br>
					<a href="http://www.designsthroughtime.com/">Designs Through 
					Time</a><br>
                  <a href="http://www.ama-cycle.org/museum/">Motorcycle Hall of 
                  Fame Museum</a><br>
                  <a href="http://www.nationalmcmuseum.org/">National Motorcycle 
                  Museum</a> <br>
                  <a href="http://www.nycpolicemuseum.org/html/vehicles/harley.html">
                  NYC Police Museum</a><br>
                  <a href="http://www.mcnews.com.au/Testing/Honda/GoldWing/History/Pictorial.htm">
                  Pictorial History - Honda GW</a> <br>
                  <a href="http://www.museumofmotorcycles.com/">Pioneer Museum 
                  of Motorcycles</a><br>
                  <a href="http://www.servi-cycle.com/">Simplex Collectors' Site</a>
                  <br>
                  <a href="http://www.motosolvang.com/">Solvang vintage 
                  Motorcycle Musm</a><br>
                  <a href="http://www.thevincent.com/">Vincent Motorcycle</a>
                  <br>
                  <a href="http://www.wheelsthroughtime.com/">Wheels Through 
                  Time</a><br>
                  <a href="http://www.zuendapp-bella.com/">Zndapp Bella</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Missions</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
                <a href="http://bikersforchrist.org/">Bikers For Christ</a><br>
                <a href="http://bikers.4mg.com/bikers.htm">Born Again Bikers</a><br>
                <a href="http://www.christianbiker.org/">Christian Biker 
                Missionaries</a> <br>
                <a href="http://www.christianmotorcyclist.org/">Christian 
                Motorcyclist</a><br>
                <a href="http://www.cmausa.org/">Christian Motorcyclists Assn</a>
                <br>
                <a href="http://www.geocities.com/cmcdatabase/">Christian MC 
                DataBase</a> <br>
                <a href="http://www.christiansportbike.com/">Christian Sport 
                Bike &amp; Sport Touring</a> <br>
                <a href="http://www.covenantmm.org/">Covenant Motorcycle 
                Ministry</a> <br>
                <a href="http://www.cycledisciples.com/">Cycle Disciples</a> <br>
                <a href="http://www.heavenssaints.com/">Heaven's Saints MM</a>
                <br>
                <a href="http://www.messengersmc.org/">Messengers Motorcycle 
                Club</a> <br>
                <a href="http://www.christianbranch.com/cmd/">Messiah's 
                Disciples Ministry</a> <br>
                <a href="http://www.tiac.net/~mpbcds/seedofabraham.html">Seed of 
                Abraham MM</a> <br>
                <a href="http://www.diako.com/">Servants for Christ</a> <br>
                <a href="http://www.soldiersforjesusmc.com/">Soldiers For Jesus 
                MC</a><br>
                <a href="http://www.soldiersofthecross.org/">Soldiers of the 
                Cross</a> <br>
                <a href="http://www.sonsofgodmc.org/">Sons 
                of God</a><br>
                <a href="http://www.spiritriders.org/">Spirit Riders Motorcycle 
                Ministry</a> <br>
                <a href="http://www.tojmm.org/">Tribe of Judah</a><br>
                <a href="http://www.wheelsofgrace.com/">Wheels Of Grace</a></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="4" cellspacing="0">
  <tr>
    <td width="100%">
      <p align="center"><a href="submit/affiliate/allwall_com.asp?PD=10018954"><img
      border="0" src="images/logos/allwall/10018954.jpg"
      alt="In Association with art.com"></a><a href="submit/affiliate/allwall_com.asp?PD=10018954"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a href="submit/affiliate/allwall_com.asp?PD=10009124"><img
      border="0" src="images/logos/allwall/10009124.jpg"
      alt="In Association with art.com"></a><a href="submit/affiliate/allwall_com.asp?PD=10009124"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a href="submit/affiliate/allwall_com.asp?PD=10115331"><img
      border="0" src="images/logos/allwall/10115331.jpg"
      alt="In Association with art.com"></a><a href="submit/affiliate/allwall_com.asp?PD=10115331"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a href="submit/affiliate/allwall_com.asp?PD=10044939"><img
      border="0" src="images/logos/allwall/10044939.jpg"
      alt="In Association with art.com"></a><a href="submit/affiliate/allwall_com.asp?PD=10044939"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a href="submit/affiliate/allwall_com.asp?PD=10095951"><img
      border="0" src="images/logos/allwall/10095951.jpg"
      alt="In Association with art.com"></a><a href="submit/affiliate/allwall_com.asp?PD=10095951"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a href="submit/affiliate/allwall_com.asp?PD=10066998"><img
      border="0" src="images/logos/allwall/10066998.jpg"
      alt="In Association with art.com"></a><a href="submit/affiliate/allwall_com.asp?PD=10066998"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a href="submit/affiliate/allwall_com.asp?ID=1993">
      <font face="sans-serif" size="1">Buy Motorcycle<br>
      posters at&nbsp;<br>
 art.com</font></a></p>
    </td>
  </tr>
</table>
<br clear="all">
<!--webbot bot="Include" u-include="_private/nav/rec_navbar.asp" tag="BODY" startspan -->

<br clear="all">
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../images/000000.gif" width="1" height="1"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img
      src="../images/pie_tl.gif" border="0" width="16" height="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span
      class="small">Recreation</span>&nbsp;</th>
    <td bgcolor="#996600" rowspan="2" class="navbackground">
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="recreation"><a href="auto.asp"
            class="navigationsmall">Automotive</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="aviation.asp"
            class="navigationsmall">Aviation &amp; Flight</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="collect.asp"
            class="navigationsmall">Collecting</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="games.asp"
            class="navigationsmall">Games</a></th>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="recreation"><a href="hobbies.asp"
            class="navigationsmall">Hobbies</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="motorcycle.asp"
            class="navigationsmall">Motorcycling</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="outdoors.asp"
            class="navigationsmall">Outdoors</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="sports.asp"
            class="navigationsmall">Sports</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="travel.asp"
            class="navigationsmall">Travel</a></th>
        </tr>
      </table>
    </td>
    <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img
      src="../images/pie_tr.gif" border="0" width="16" height="16"></td>
  </tr>
  <tr>
    <td bgcolor="#996600" align="left" valign="bottom" class="navbackground"><img
      src="../images/pie_bl.gif" border="0" width="16" height="16"></td>
    <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img
      src="../images/pie_br.gif" border="0" width="16" height="16"></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="25330" endspan --><!--webbot
bot="Include" u-include="../_private/include/footer.asp" tag="BODY" startspan -->



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




<!--webbot bot="Include" i-checksum="37146" endspan -->



</body>

</html>