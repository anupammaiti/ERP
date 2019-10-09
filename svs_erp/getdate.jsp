<HTML>
<HEAD><TITLE>The ever cool date picker in javascript world!</TITLE> 
</HEAD>
<BODY>
<!--  PopCalendar Start (name and id must match) -->
<iframe name="gToday:normal:agenda.js" id="gToday:normal:agenda.js" src="popcjs.htm" scrolling="no" frameborder="2" style="border:ridge;visibility:hidden;position:absolute;z-index:65535">
</iframe>
<!--  PopCalendar End (DO NOT REPEAT this part! One is enough.) -->

<script>
var arrRange=depRange=[]; // this is for demo use.
</script>
<FORM name="demoform">
<TABLE align=center width=600 border=0 >
  <TR>
    <TD align=center colspan=2>
      <H1 >Here goes my excellent work !</H1><BR><B>PopCalendar eXtremely Perfect 3.20</B><BR>(IE 5.x,6.x & Netscape 4.x,6.x)<BR><BR></TD></TR>
  <TR>
    <TD align="right" class="toright" width="35%">Arrival At: </TD>
    <TD class="toleft">
	<table border=0 cellspacing=0 cellpadding=0><tr><td><input name="dayf" value="8" size="11">/<input name="monf" value="Jun" size="11">/<input name="yearf" value="2001" size="11"><INPUT onclick="with(this.form)gfPop.fDemoPop(dayf,monf,yearf,dc1,arrRange);" type="button" value=" V "></td></tr>
	<tr><td height="0"><input name="dc1" type="hidden" value="8-Jun-2001"></td></tr>
	</table>
    </TD>
  </TR>
  <TR>
    <TD align="right" class="toright">Departure: </TD>
    <TD class="toleft" >
	<input name="dc2" value="18-Jun-2001" readonly size="11"><INPUT onclick="gfPop.fPopCalendar(this.form.dc2,depRange);" type=button value=" V ">
    </TD>
  </TR>
  <TR>
    <TD align="right" class="toright">Other Input Boxes: </TD>
    <TD class="toleft" >
	<ilayer name="toggle"><form><textarea cols=40>It'll never block the calendar!</textarea></form></ilayer>
    </TD>
  </TR>
 <TR>
    <TD align=center colspan=2><BR>Designer: <B>Liming Weng (Chinese)</B><BR>Copyright Reserved, 2001<BR><BR>It is an emailware. If you love it, please mail and commend me!<BR>Emailto: popcal@yahoo.com
    </TD></TR>
  <TR><TD class="toleft" colspan=2><BR><B>Notice:</B><BR>
 1. This emailware is free only for private use, and must mail me first!<BR>
 2. For commercial use, please contact me to pay a small amount of license fee.<BR>
 3. The netscape part will only be available after payment. See an image demo in Netscape 4.77 <A href="nn4demo.gif">HERE!</A></layer><BR>
 4. <A href="KnowHow.htm"><B>Hints & Tips</B></A><BR>
 <PRE>
 Features List of PopCalendarXP:
+ Cross-broswer(IE5,6 & NN4,6) with highly customizable UI and functionality.
+ Easy to embed, NO Mess-up, NO Conflict with the other scripts in your page.
+ Parse, Remember and Highlight the Selected Date
+ Never be blocked by any other input boxes.(tricks needed in NN4)
+ Agenda with Colorful Highlights and even IMAGES!
+ Themes support with dynamic background available!
+ Diversified Context Sensible Actions - popups, auto-mail and any javascript statement.
+ One plug-in function let you define the holidays by yourself.
+ Show context info both in status-bar and tooltip(except NN4).
+ Date-range-confinement precises to day
+ One-Click Hide.
+ Disable any day with line-through effect
+ American & European Calendar Layout
+ American & European & Chinese Date Format
+ Literal & Digital Date Format
+ Long & Short Year Format
+ Super fast(only 10KB) due to optimized code.
+ Fully configurable calendar size, fonts, colors,agenda, layout and... too many
+ Detailed comments and easier to config with separated config files.
* Fully tested on IE 5.0,5.01,5.5,6.0beta and Netscape 4.08,4.75,4.77,6.0,6.01
</PRE>
  </TD></TR>
  
</TABLE>
</FORM>
</BODY>
</HTML>

