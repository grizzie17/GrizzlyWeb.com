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
document.writeln('<div align="right">');
document.writeln('  <'+'!--');
document.writeln('  Copyright '+oDate.getFullYear()+' Bear Consulting Group');
document.writeln('  --'+'>');
document.writeln('  <table border="0" cellspacing="0">');
document.writeln('    <tr>');
document.writeln('      <td align="center" style="background-image: url(http://'+sRoot+'/company/images/bpaw_small_trans.gif); background-repeat: no-repeat; background-position: top center">');
document.writeln('<a href="http://'+sCompany+'/" target="_blank" ');
document.writeln('style="color: #999999; font-size: xx-small; text-decoration: none;">Web Design by:<br>');
document.writeln('        Grizzly WebMaster<br>');
document.writeln('        <em>a Division of<br>');
document.writeln('        Bear Consulting Group</em></a></td>');
document.writeln('    </tr>');
document.writeln('  </table>');
document.writeln('</div>');

}

makeDesignByFooter();


