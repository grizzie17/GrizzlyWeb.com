// Web Design By:
// Grizzly WebMaster
// a Division of
// Bear Consulting Group
//

function makeDesignByFooter()
{

var sRoot;
var	sCompany;
if ( location.hostname == "localhost" )
{
	sRoot = "localhost/GrizzlyWeb";
	sCompany = sRoot;
}
else
{
	sRoot = "GrizzlyWeb.com";
	sCompany = "BearConsultingGroup.com";
}

var oDate = new Date();

document.writeln('<br clear="all">');
document.writeln('<br clear="all">');
document.writeln('<div align="left">');
document.writeln('  <'+'!--');
document.writeln('  Copyright '+oDate.getFullYear()+' Bear Consulting Group');
document.writeln('  --'+'>');
document.writeln('  <table border="0" cellspacing="0" style="background-image: url(http://'+sRoot+'/company/images/bkg_title.jpg); background-repeat: no-repeat; background-position: top left">');
document.writeln('    <tr>');
document.writeln('		<td width="55">&nbsp;</td>');
document.writeln('      <td>');
document.writeln('<a href="http://'+sCompany+'/" target="_blank" ');
document.writeln('style="color: #663300; font-family: sans-serif; font-size: x-small; text-decoration: none;">');
document.writeln('	This site designed by and courtesy of:<br>');
document.writeln('        <b>Grizzly WebMaster</b> <br>');
document.writeln('        <em>a Division of ');
document.writeln('        Bear Consulting Group</em><br>');
document.writeln('		  Like this site? <b>Let us design one for you.</b></a></td>');
document.writeln('    </tr>');
document.writeln('  </table>');
document.writeln('</div>');

}

makeDesignByFooter();


