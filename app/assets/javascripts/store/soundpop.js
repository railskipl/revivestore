// JavaScript Document
// Pop-Up Embedder Script by David Battino, www.batmosphere.com; Object tag implementation by Mark Levitt, http://digitalmedia.oreilly.com
var UniqueID = 314 // Make each link open in a new window.
var newWinOffset = 0 // Position of first pop-up
function PlayerOpen(soundfiledesc,soundfilepath) {

PlayWin = window.open('',UniqueID,'width=320,height=190,top=' + newWinOffset +',left=0,resizable=0,scrollbars=0,titlebar=0,toolbar=0,menubar=0,status=0,directories=0,personalbar=0');
PlayWin.focus(); 
var winContent = "<HTML><HEAD><TITLE>" + soundfiledesc + "</TITLE></HEAD><BODY bgcolor='#FF9900'>";
winContent += "<B style='font-size:18px;font-family:Verdana,sans-serif;line-height:1.5'>" + soundfiledesc + "</B>";

winContent += "<OBJECT width='300' height='42'>";
winContent += "<param name='SRC' value='" +  soundfilepath + "'>";
winContent += "<param name='AUTOPLAY' VALUE='true'>";
winContent += "<param name='CONTROLLER' VALUE='true'>";
winContent += "<param name='BGCOLOR' VALUE='#FF9900'>";
winContent += "<EMBED SRC='" + soundfilepath + "' AUTOSTART='TRUE' LOOP='FALSE' WIDTH='300' HEIGHT='42' CONTROLLER='TRUE' BGCOLOR='#FF9900'></EMBED>";
winContent += "</OBJECT>";

winContent += "<p style='font-size:12px;font-family:Verdana,sans-serif;text-align:center'><a href='"+soundfilepath+"'>Download this file</a> <SPAN style='font-size:10px'>(right-click or Option-click)</SPAN></p>";

winContent += "<FORM><DIV align='center'><INPUT type='button' value='Close this window' onClick='javascript:window.close();'></DIV></FORM>";
winContent += "</BODY></HTML>";
PlayWin.document.write(winContent);
PlayWin.document.close(); // "Finalizes" new window
UniqueID = UniqueID + 1
// newWinOffset = newWinOffset + 20 // subsequent pop-ups will be this many pixels lower.
}