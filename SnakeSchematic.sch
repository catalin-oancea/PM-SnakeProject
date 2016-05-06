<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Mechanical" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Gehäuse" color="7" fill="1" visible="no" active="no"/>
<layer number="102" name="Mittellin" color="7" fill="1" visible="no" active="no"/>
<layer number="151" name="HeatSink" color="14" fill="1" visible="no" active="no"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="OrgLBR" color="13" fill="1" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="lph-7366">
<description>&lt;b&gt;LPH-7366: PCD8544-based Nokia 5110 monochrome LCD display&lt;/b&gt;
&lt;p&gt;&lt;b&gt;Doublecheck before using!&lt;/b&gt;&lt;/p&gt;</description>
<packages>
<package name="LPH-7366">
<wire x1="20" y1="19" x2="20" y2="-16" width="0.127" layer="21"/>
<wire x1="-20" y1="19" x2="-6" y2="19" width="0.127" layer="21"/>
<wire x1="-6" y1="19" x2="6" y2="19" width="0.127" layer="21"/>
<wire x1="6" y1="19" x2="20" y2="19" width="0.127" layer="21"/>
<wire x1="-20" y1="19" x2="-20" y2="-16" width="0.127" layer="21"/>
<wire x1="-20" y1="-16" x2="20" y2="-16" width="0.127" layer="21"/>
<wire x1="-6" y1="19" x2="-6" y2="14" width="0.127" layer="21"/>
<wire x1="-6" y1="14" x2="6" y2="14" width="0.127" layer="21"/>
<wire x1="6" y1="14" x2="6" y2="19" width="0.127" layer="21"/>
<wire x1="-19.9" y1="18.9" x2="-19.9" y2="15.1" width="0.3" layer="21"/>
<wire x1="-19.9" y1="-1.1" x2="-19.9" y2="-4.9" width="0.3" layer="21"/>
<wire x1="19.9" y1="-1" x2="19.9" y2="-4.8" width="0.3" layer="21"/>
<wire x1="19.9" y1="18.9" x2="19.9" y2="15.1" width="0.3" layer="21"/>
<wire x1="18" y1="-13" x2="18" y2="11" width="0.3" layer="21"/>
<wire x1="17" y1="12" x2="-17" y2="12" width="0.3" layer="21"/>
<wire x1="-18" y1="11" x2="-18" y2="-13" width="0.3" layer="21"/>
<wire x1="-18" y1="-13" x2="-17" y2="-14" width="0.3" layer="21" curve="90"/>
<wire x1="-17" y1="-14" x2="17" y2="-14" width="0.3" layer="21"/>
<wire x1="17" y1="-14" x2="18" y2="-13" width="0.3" layer="21" curve="90"/>
<wire x1="17" y1="12" x2="18" y2="11" width="0.3" layer="21" curve="-90"/>
<wire x1="-17" y1="12" x2="-18" y2="11" width="0.3" layer="21" curve="90"/>
<wire x1="-19.5" y1="-5.75" x2="-18.5" y2="-5.75" width="0.05" layer="51"/>
<wire x1="-18.5" y1="-5.75" x2="-18.5" y2="-8.25" width="0.05" layer="51"/>
<wire x1="-18.5" y1="-8.25" x2="-19.5" y2="-8.25" width="0.05" layer="51"/>
<wire x1="-19.5" y1="-8.25" x2="-19.5" y2="-5.75" width="0.05" layer="51"/>
<wire x1="-19.5" y1="7.25" x2="-18.5" y2="7.25" width="0.05" layer="51"/>
<wire x1="-18.5" y1="7.25" x2="-18.5" y2="4.75" width="0.05" layer="51"/>
<wire x1="-18.5" y1="4.75" x2="-19.5" y2="4.75" width="0.05" layer="51"/>
<wire x1="-19.5" y1="4.75" x2="-19.5" y2="7.25" width="0.05" layer="51"/>
<wire x1="-19.5" y1="2.25" x2="-18.5" y2="2.25" width="0.05" layer="51"/>
<wire x1="-18.5" y1="2.25" x2="-18.5" y2="-0.25" width="0.05" layer="51"/>
<wire x1="-18.5" y1="-0.25" x2="-19.5" y2="-0.25" width="0.05" layer="51"/>
<wire x1="-19.5" y1="-0.25" x2="-19.5" y2="2.25" width="0.05" layer="51"/>
<wire x1="18.5" y1="-5.75" x2="19.5" y2="-5.75" width="0.05" layer="51"/>
<wire x1="19.5" y1="-5.75" x2="19.5" y2="-8.25" width="0.05" layer="51"/>
<wire x1="19.5" y1="-8.25" x2="18.5" y2="-8.25" width="0.05" layer="51"/>
<wire x1="18.5" y1="-8.25" x2="18.5" y2="-5.75" width="0.05" layer="51"/>
<wire x1="18.5" y1="2.25" x2="19.5" y2="2.25" width="0.05" layer="51"/>
<wire x1="19.5" y1="2.25" x2="19.5" y2="-0.25" width="0.05" layer="51"/>
<wire x1="19.5" y1="-0.25" x2="18.5" y2="-0.25" width="0.05" layer="51"/>
<wire x1="18.5" y1="-0.25" x2="18.5" y2="2.25" width="0.05" layer="51"/>
<wire x1="18.5" y1="7.25" x2="19.5" y2="7.25" width="0.05" layer="51"/>
<wire x1="19.5" y1="7.25" x2="19.5" y2="4.75" width="0.05" layer="51"/>
<wire x1="19.5" y1="4.75" x2="18.5" y2="4.75" width="0.05" layer="51"/>
<wire x1="18.5" y1="4.75" x2="18.5" y2="7.25" width="0.05" layer="51"/>
<smd name="4" x="1" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="3" x="2" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="2" x="3" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="1" x="4" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="9" x="-4" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="5" x="0" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="6" x="-1" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="7" x="-2" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="8" x="-3" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<text x="-20.32" y="19.05" size="1.27" layer="25">&gt;NAME</text>
<text x="-20.32" y="-17.78" size="1.27" layer="27">&gt;VALUE</text>
<hole x="-17" y="13" drill="1.5"/>
<hole x="17" y="-12.5" drill="1.5"/>
</package>
</packages>
<symbols>
<symbol name="LPH-7366">
<wire x1="-12.7" y1="20.32" x2="-12.7" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-20.32" x2="7.62" y2="-20.32" width="0.254" layer="94"/>
<wire x1="7.62" y1="-20.32" x2="7.62" y2="20.32" width="0.254" layer="94"/>
<wire x1="7.62" y1="20.32" x2="-12.7" y2="20.32" width="0.254" layer="94"/>
<wire x1="-2.54" y1="17.78" x2="-2.54" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="-17.78" x2="5.08" y2="17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="17.78" x2="-2.54" y2="17.78" width="0.254" layer="94"/>
<text x="2.54" y="-2.54" size="1.27" layer="94" rot="R90">LPH-7366</text>
<text x="-12.7" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<text x="-12.7" y="22.86" size="1.778" layer="95" rot="MR180">&gt;NAME</text>
<pin name="VDD" x="-17.78" y="-5.08" length="middle" direction="pwr"/>
<pin name="SCLK" x="-17.78" y="15.24" length="middle" direction="in"/>
<pin name="SDIN" x="-17.78" y="17.78" length="middle" direction="in"/>
<pin name="D/C" x="-17.78" y="12.7" length="middle" direction="in"/>
<pin name="/SCE" x="-17.78" y="10.16" length="middle" direction="in" function="dot"/>
<pin name="OSC" x="-17.78" y="0" length="middle" direction="pas"/>
<pin name="GND" x="-17.78" y="-17.78" length="middle" direction="pwr"/>
<pin name="VOUT" x="-17.78" y="-10.16" length="middle" direction="pas"/>
<pin name="/RES" x="-17.78" y="5.08" length="middle" direction="in" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LPH-7366" prefix="LCD">
<gates>
<gate name="G$1" symbol="LPH-7366" x="-7.62" y="-2.54"/>
</gates>
<devices>
<device name="" package="LPH-7366">
<connects>
<connect gate="G$1" pin="/RES" pad="9"/>
<connect gate="G$1" pin="/SCE" pad="5"/>
<connect gate="G$1" pin="D/C" pad="4"/>
<connect gate="G$1" pin="GND" pad="7"/>
<connect gate="G$1" pin="OSC" pad="6"/>
<connect gate="G$1" pin="SCLK" pad="2"/>
<connect gate="G$1" pin="SDIN" pad="3"/>
<connect gate="G$1" pin="VDD" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Atmel_By_element14_Batch_1-00">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 27/07/2012 14:02:49</description>
<packages>
<package name="DIP254P1524X482-40">
<pad name="1" x="-15.24" y="48.26" drill="1.1176" shape="square"/>
<pad name="2" x="-15.24" y="45.72" drill="1.1176"/>
<pad name="3" x="-15.24" y="43.18" drill="1.1176"/>
<pad name="4" x="-15.24" y="40.64" drill="1.1176"/>
<pad name="5" x="-15.24" y="38.1" drill="1.1176"/>
<pad name="6" x="-15.24" y="35.56" drill="1.1176"/>
<pad name="7" x="-15.24" y="33.02" drill="1.1176"/>
<pad name="8" x="-15.24" y="30.48" drill="1.1176"/>
<pad name="9" x="-15.24" y="27.94" drill="1.1176"/>
<pad name="10" x="-15.24" y="25.4" drill="1.1176"/>
<pad name="11" x="-15.24" y="22.86" drill="1.1176"/>
<pad name="12" x="-15.24" y="20.32" drill="1.1176"/>
<pad name="13" x="-15.24" y="17.78" drill="1.1176"/>
<pad name="14" x="-15.24" y="15.24" drill="1.1176"/>
<pad name="15" x="-15.24" y="12.7" drill="1.1176"/>
<pad name="16" x="-15.24" y="10.16" drill="1.1176"/>
<pad name="17" x="-15.24" y="7.62" drill="1.1176"/>
<pad name="18" x="-15.24" y="5.08" drill="1.1176"/>
<pad name="19" x="-15.24" y="2.54" drill="1.1176"/>
<pad name="20" x="-15.24" y="0" drill="1.1176"/>
<pad name="21" x="0" y="0" drill="1.1176"/>
<pad name="22" x="0" y="2.54" drill="1.1176"/>
<pad name="23" x="0" y="5.08" drill="1.1176"/>
<pad name="24" x="0" y="7.62" drill="1.1176"/>
<pad name="25" x="0" y="10.16" drill="1.1176"/>
<pad name="26" x="0" y="12.7" drill="1.1176"/>
<pad name="27" x="0" y="15.24" drill="1.1176"/>
<pad name="28" x="0" y="17.78" drill="1.1176"/>
<pad name="29" x="0" y="20.32" drill="1.1176"/>
<pad name="30" x="0" y="22.86" drill="1.1176"/>
<pad name="31" x="0" y="25.4" drill="1.1176"/>
<pad name="32" x="0" y="27.94" drill="1.1176"/>
<pad name="33" x="0" y="30.48" drill="1.1176"/>
<pad name="34" x="0" y="33.02" drill="1.1176"/>
<pad name="35" x="0" y="35.56" drill="1.1176"/>
<pad name="36" x="0" y="38.1" drill="1.1176"/>
<pad name="37" x="0" y="40.64" drill="1.1176"/>
<pad name="38" x="0" y="43.18" drill="1.1176"/>
<pad name="39" x="0" y="45.72" drill="1.1176"/>
<pad name="40" x="0" y="48.26" drill="1.1176"/>
<wire x1="-0.635" y1="49.403" x2="-0.635" y2="50.419" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="46.863" x2="-0.635" y2="47.117" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="44.323" x2="-0.635" y2="44.577" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="41.783" x2="-0.635" y2="42.037" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="39.243" x2="-0.635" y2="39.497" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-2.159" x2="-0.635" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.159" x2="-0.635" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="50.419" x2="-7.3152" y2="50.419" width="0.1524" layer="21"/>
<wire x1="-7.3152" y1="50.419" x2="-7.9248" y2="50.419" width="0.1524" layer="21"/>
<wire x1="-7.9248" y1="50.419" x2="-14.605" y2="50.419" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="50.419" x2="-14.605" y2="49.5808" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="44.577" x2="-14.605" y2="44.323" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="42.037" x2="-14.605" y2="41.783" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="39.497" x2="-14.605" y2="39.243" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="36.957" x2="-14.605" y2="36.703" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="34.417" x2="-14.605" y2="34.163" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="31.877" x2="-14.605" y2="31.623" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="29.337" x2="-14.605" y2="29.083" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="26.797" x2="-14.605" y2="26.543" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="24.257" x2="-14.605" y2="24.003" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="21.717" x2="-14.605" y2="21.463" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="19.177" x2="-14.605" y2="18.923" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="16.637" x2="-14.605" y2="16.383" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="14.097" x2="-14.605" y2="13.843" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="11.557" x2="-14.605" y2="11.303" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="9.017" x2="-14.605" y2="8.763" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="6.477" x2="-14.605" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="3.937" x2="-14.605" y2="3.683" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.397" x2="-14.605" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-1.143" x2="-14.605" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.143" x2="-0.635" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="3.683" x2="-0.635" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="6.223" x2="-0.635" y2="6.477" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="8.763" x2="-0.635" y2="9.017" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="11.303" x2="-0.635" y2="11.557" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="13.843" x2="-0.635" y2="14.097" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="16.383" x2="-0.635" y2="16.637" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="18.923" x2="-0.635" y2="19.177" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="21.463" x2="-0.635" y2="21.717" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="24.003" x2="-0.635" y2="24.257" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="26.543" x2="-0.635" y2="26.797" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="29.083" x2="-0.635" y2="29.337" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="31.623" x2="-0.635" y2="31.877" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="34.163" x2="-0.635" y2="34.417" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="36.703" x2="-0.635" y2="36.957" width="0.1524" layer="21"/>
<wire x1="-7.3152" y1="50.419" x2="-7.9248" y2="50.419" width="0.1524" layer="21" curve="-180"/>
<text x="-15.8242" y="49.3776" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-14.605" y1="47.7012" x2="-14.605" y2="48.8188" width="0" layer="51"/>
<wire x1="-14.605" y1="48.8188" x2="-15.7988" y2="48.8188" width="0" layer="51"/>
<wire x1="-15.7988" y1="48.8188" x2="-15.7988" y2="47.7012" width="0" layer="51"/>
<wire x1="-15.7988" y1="47.7012" x2="-14.605" y2="47.7012" width="0" layer="51"/>
<wire x1="-14.605" y1="45.1612" x2="-14.605" y2="46.2788" width="0" layer="51"/>
<wire x1="-14.605" y1="46.2788" x2="-15.7988" y2="46.2788" width="0" layer="51"/>
<wire x1="-15.7988" y1="46.2788" x2="-15.7988" y2="45.1612" width="0" layer="51"/>
<wire x1="-15.7988" y1="45.1612" x2="-14.605" y2="45.1612" width="0" layer="51"/>
<wire x1="-14.605" y1="42.6212" x2="-14.605" y2="43.7388" width="0" layer="51"/>
<wire x1="-14.605" y1="43.7388" x2="-15.7988" y2="43.7388" width="0" layer="51"/>
<wire x1="-15.7988" y1="43.7388" x2="-15.7988" y2="42.6212" width="0" layer="51"/>
<wire x1="-15.7988" y1="42.6212" x2="-14.605" y2="42.6212" width="0" layer="51"/>
<wire x1="-14.605" y1="40.0812" x2="-14.605" y2="41.1988" width="0" layer="51"/>
<wire x1="-14.605" y1="41.1988" x2="-15.7988" y2="41.1988" width="0" layer="51"/>
<wire x1="-15.7988" y1="41.1988" x2="-15.7988" y2="40.0812" width="0" layer="51"/>
<wire x1="-15.7988" y1="40.0812" x2="-14.605" y2="40.0812" width="0" layer="51"/>
<wire x1="-14.605" y1="37.5412" x2="-14.605" y2="38.6588" width="0" layer="51"/>
<wire x1="-14.605" y1="38.6588" x2="-15.7988" y2="38.6588" width="0" layer="51"/>
<wire x1="-15.7988" y1="38.6588" x2="-15.7988" y2="37.5412" width="0" layer="51"/>
<wire x1="-15.7988" y1="37.5412" x2="-14.605" y2="37.5412" width="0" layer="51"/>
<wire x1="-14.605" y1="35.0012" x2="-14.605" y2="36.1188" width="0" layer="51"/>
<wire x1="-14.605" y1="36.1188" x2="-15.7988" y2="36.1188" width="0" layer="51"/>
<wire x1="-15.7988" y1="36.1188" x2="-15.7988" y2="35.0012" width="0" layer="51"/>
<wire x1="-15.7988" y1="35.0012" x2="-14.605" y2="35.0012" width="0" layer="51"/>
<wire x1="-14.605" y1="32.4612" x2="-14.605" y2="33.5788" width="0" layer="51"/>
<wire x1="-14.605" y1="33.5788" x2="-15.7988" y2="33.5788" width="0" layer="51"/>
<wire x1="-15.7988" y1="33.5788" x2="-15.7988" y2="32.4612" width="0" layer="51"/>
<wire x1="-15.7988" y1="32.4612" x2="-14.605" y2="32.4612" width="0" layer="51"/>
<wire x1="-14.605" y1="29.9212" x2="-14.605" y2="31.0388" width="0" layer="51"/>
<wire x1="-14.605" y1="31.0388" x2="-15.7988" y2="31.0388" width="0" layer="51"/>
<wire x1="-15.7988" y1="31.0388" x2="-15.7988" y2="29.9212" width="0" layer="51"/>
<wire x1="-15.7988" y1="29.9212" x2="-14.605" y2="29.9212" width="0" layer="51"/>
<wire x1="-14.605" y1="27.3812" x2="-14.605" y2="28.4988" width="0" layer="51"/>
<wire x1="-14.605" y1="28.4988" x2="-15.7988" y2="28.4988" width="0" layer="51"/>
<wire x1="-15.7988" y1="28.4988" x2="-15.7988" y2="27.3812" width="0" layer="51"/>
<wire x1="-15.7988" y1="27.3812" x2="-14.605" y2="27.3812" width="0" layer="51"/>
<wire x1="-14.605" y1="24.8412" x2="-14.605" y2="25.9588" width="0" layer="51"/>
<wire x1="-14.605" y1="25.9588" x2="-15.7988" y2="25.9588" width="0" layer="51"/>
<wire x1="-15.7988" y1="25.9588" x2="-15.7988" y2="24.8412" width="0" layer="51"/>
<wire x1="-15.7988" y1="24.8412" x2="-14.605" y2="24.8412" width="0" layer="51"/>
<wire x1="-14.605" y1="22.3012" x2="-14.605" y2="23.4188" width="0" layer="51"/>
<wire x1="-14.605" y1="23.4188" x2="-15.7988" y2="23.4188" width="0" layer="51"/>
<wire x1="-15.7988" y1="23.4188" x2="-15.7988" y2="22.3012" width="0" layer="51"/>
<wire x1="-15.7988" y1="22.3012" x2="-14.605" y2="22.3012" width="0" layer="51"/>
<wire x1="-14.605" y1="19.7612" x2="-14.605" y2="20.8788" width="0" layer="51"/>
<wire x1="-14.605" y1="20.8788" x2="-15.7988" y2="20.8788" width="0" layer="51"/>
<wire x1="-15.7988" y1="20.8788" x2="-15.7988" y2="19.7612" width="0" layer="51"/>
<wire x1="-15.7988" y1="19.7612" x2="-14.605" y2="19.7612" width="0" layer="51"/>
<wire x1="-14.605" y1="17.2212" x2="-14.605" y2="18.3388" width="0" layer="51"/>
<wire x1="-14.605" y1="18.3388" x2="-15.7988" y2="18.3388" width="0" layer="51"/>
<wire x1="-15.7988" y1="18.3388" x2="-15.7988" y2="17.2212" width="0" layer="51"/>
<wire x1="-15.7988" y1="17.2212" x2="-14.605" y2="17.2212" width="0" layer="51"/>
<wire x1="-14.605" y1="14.6812" x2="-14.605" y2="15.7988" width="0" layer="51"/>
<wire x1="-14.605" y1="15.7988" x2="-15.7988" y2="15.7988" width="0" layer="51"/>
<wire x1="-15.7988" y1="15.7988" x2="-15.7988" y2="14.6812" width="0" layer="51"/>
<wire x1="-15.7988" y1="14.6812" x2="-14.605" y2="14.6812" width="0" layer="51"/>
<wire x1="-14.605" y1="12.1412" x2="-14.605" y2="13.2588" width="0" layer="51"/>
<wire x1="-14.605" y1="13.2588" x2="-15.7988" y2="13.2588" width="0" layer="51"/>
<wire x1="-15.7988" y1="13.2588" x2="-15.7988" y2="12.1412" width="0" layer="51"/>
<wire x1="-15.7988" y1="12.1412" x2="-14.605" y2="12.1412" width="0" layer="51"/>
<wire x1="-14.605" y1="9.6012" x2="-14.605" y2="10.7188" width="0" layer="51"/>
<wire x1="-14.605" y1="10.7188" x2="-15.7988" y2="10.7188" width="0" layer="51"/>
<wire x1="-15.7988" y1="10.7188" x2="-15.7988" y2="9.6012" width="0" layer="51"/>
<wire x1="-15.7988" y1="9.6012" x2="-14.605" y2="9.6012" width="0" layer="51"/>
<wire x1="-14.605" y1="7.0612" x2="-14.605" y2="8.1788" width="0" layer="51"/>
<wire x1="-14.605" y1="8.1788" x2="-15.7988" y2="8.1788" width="0" layer="51"/>
<wire x1="-15.7988" y1="8.1788" x2="-15.7988" y2="7.0612" width="0" layer="51"/>
<wire x1="-15.7988" y1="7.0612" x2="-14.605" y2="7.0612" width="0" layer="51"/>
<wire x1="-14.605" y1="4.5212" x2="-14.605" y2="5.6388" width="0" layer="51"/>
<wire x1="-14.605" y1="5.6388" x2="-15.7988" y2="5.6388" width="0" layer="51"/>
<wire x1="-15.7988" y1="5.6388" x2="-15.7988" y2="4.5212" width="0" layer="51"/>
<wire x1="-15.7988" y1="4.5212" x2="-14.605" y2="4.5212" width="0" layer="51"/>
<wire x1="-14.605" y1="1.9812" x2="-14.605" y2="3.0988" width="0" layer="51"/>
<wire x1="-14.605" y1="3.0988" x2="-15.7988" y2="3.0988" width="0" layer="51"/>
<wire x1="-15.7988" y1="3.0988" x2="-15.7988" y2="1.9812" width="0" layer="51"/>
<wire x1="-15.7988" y1="1.9812" x2="-14.605" y2="1.9812" width="0" layer="51"/>
<wire x1="-14.605" y1="-0.5588" x2="-14.605" y2="0.5588" width="0" layer="51"/>
<wire x1="-14.605" y1="0.5588" x2="-15.7988" y2="0.5588" width="0" layer="51"/>
<wire x1="-15.7988" y1="0.5588" x2="-15.7988" y2="-0.5588" width="0" layer="51"/>
<wire x1="-15.7988" y1="-0.5588" x2="-14.605" y2="-0.5588" width="0" layer="51"/>
<wire x1="-0.635" y1="0.5588" x2="-0.635" y2="-0.5588" width="0" layer="51"/>
<wire x1="-0.635" y1="-0.5588" x2="0.5588" y2="-0.5588" width="0" layer="51"/>
<wire x1="0.5588" y1="-0.5588" x2="0.5588" y2="0.5588" width="0" layer="51"/>
<wire x1="0.5588" y1="0.5588" x2="-0.635" y2="0.5588" width="0" layer="51"/>
<wire x1="-0.635" y1="3.0988" x2="-0.635" y2="1.9812" width="0" layer="51"/>
<wire x1="-0.635" y1="1.9812" x2="0.5588" y2="1.9812" width="0" layer="51"/>
<wire x1="0.5588" y1="1.9812" x2="0.5588" y2="3.0988" width="0" layer="51"/>
<wire x1="0.5588" y1="3.0988" x2="-0.635" y2="3.0988" width="0" layer="51"/>
<wire x1="-0.635" y1="5.6388" x2="-0.635" y2="4.5212" width="0" layer="51"/>
<wire x1="-0.635" y1="4.5212" x2="0.5588" y2="4.5212" width="0" layer="51"/>
<wire x1="0.5588" y1="4.5212" x2="0.5588" y2="5.6388" width="0" layer="51"/>
<wire x1="0.5588" y1="5.6388" x2="-0.635" y2="5.6388" width="0" layer="51"/>
<wire x1="-0.635" y1="8.1788" x2="-0.635" y2="7.0612" width="0" layer="51"/>
<wire x1="-0.635" y1="7.0612" x2="0.5588" y2="7.0612" width="0" layer="51"/>
<wire x1="0.5588" y1="7.0612" x2="0.5588" y2="8.1788" width="0" layer="51"/>
<wire x1="0.5588" y1="8.1788" x2="-0.635" y2="8.1788" width="0" layer="51"/>
<wire x1="-0.635" y1="10.7188" x2="-0.635" y2="9.6012" width="0" layer="51"/>
<wire x1="-0.635" y1="9.6012" x2="0.5588" y2="9.6012" width="0" layer="51"/>
<wire x1="0.5588" y1="9.6012" x2="0.5588" y2="10.7188" width="0" layer="51"/>
<wire x1="0.5588" y1="10.7188" x2="-0.635" y2="10.7188" width="0" layer="51"/>
<wire x1="-0.635" y1="13.2588" x2="-0.635" y2="12.1412" width="0" layer="51"/>
<wire x1="-0.635" y1="12.1412" x2="0.5588" y2="12.1412" width="0" layer="51"/>
<wire x1="0.5588" y1="12.1412" x2="0.5588" y2="13.2588" width="0" layer="51"/>
<wire x1="0.5588" y1="13.2588" x2="-0.635" y2="13.2588" width="0" layer="51"/>
<wire x1="-0.635" y1="15.7988" x2="-0.635" y2="14.6812" width="0" layer="51"/>
<wire x1="-0.635" y1="14.6812" x2="0.5588" y2="14.6812" width="0" layer="51"/>
<wire x1="0.5588" y1="14.6812" x2="0.5588" y2="15.7988" width="0" layer="51"/>
<wire x1="0.5588" y1="15.7988" x2="-0.635" y2="15.7988" width="0" layer="51"/>
<wire x1="-0.635" y1="18.3388" x2="-0.635" y2="17.2212" width="0" layer="51"/>
<wire x1="-0.635" y1="17.2212" x2="0.5588" y2="17.2212" width="0" layer="51"/>
<wire x1="0.5588" y1="17.2212" x2="0.5588" y2="18.3388" width="0" layer="51"/>
<wire x1="0.5588" y1="18.3388" x2="-0.635" y2="18.3388" width="0" layer="51"/>
<wire x1="-0.635" y1="20.8788" x2="-0.635" y2="19.7612" width="0" layer="51"/>
<wire x1="-0.635" y1="19.7612" x2="0.5588" y2="19.7612" width="0" layer="51"/>
<wire x1="0.5588" y1="19.7612" x2="0.5588" y2="20.8788" width="0" layer="51"/>
<wire x1="0.5588" y1="20.8788" x2="-0.635" y2="20.8788" width="0" layer="51"/>
<wire x1="-0.635" y1="23.4188" x2="-0.635" y2="22.3012" width="0" layer="51"/>
<wire x1="-0.635" y1="22.3012" x2="0.5588" y2="22.3012" width="0" layer="51"/>
<wire x1="0.5588" y1="22.3012" x2="0.5588" y2="23.4188" width="0" layer="51"/>
<wire x1="0.5588" y1="23.4188" x2="-0.635" y2="23.4188" width="0" layer="51"/>
<wire x1="-0.635" y1="25.9588" x2="-0.635" y2="24.8412" width="0" layer="51"/>
<wire x1="-0.635" y1="24.8412" x2="0.5588" y2="24.8412" width="0" layer="51"/>
<wire x1="0.5588" y1="24.8412" x2="0.5588" y2="25.9588" width="0" layer="51"/>
<wire x1="0.5588" y1="25.9588" x2="-0.635" y2="25.9588" width="0" layer="51"/>
<wire x1="-0.635" y1="28.4988" x2="-0.635" y2="27.3812" width="0" layer="51"/>
<wire x1="-0.635" y1="27.3812" x2="0.5588" y2="27.3812" width="0" layer="51"/>
<wire x1="0.5588" y1="27.3812" x2="0.5588" y2="28.4988" width="0" layer="51"/>
<wire x1="0.5588" y1="28.4988" x2="-0.635" y2="28.4988" width="0" layer="51"/>
<wire x1="-0.635" y1="31.0388" x2="-0.635" y2="29.9212" width="0" layer="51"/>
<wire x1="-0.635" y1="29.9212" x2="0.5588" y2="29.9212" width="0" layer="51"/>
<wire x1="0.5588" y1="29.9212" x2="0.5588" y2="31.0388" width="0" layer="51"/>
<wire x1="0.5588" y1="31.0388" x2="-0.635" y2="31.0388" width="0" layer="51"/>
<wire x1="-0.635" y1="33.5788" x2="-0.635" y2="32.4612" width="0" layer="51"/>
<wire x1="-0.635" y1="32.4612" x2="0.5588" y2="32.4612" width="0" layer="51"/>
<wire x1="0.5588" y1="32.4612" x2="0.5588" y2="33.5788" width="0" layer="51"/>
<wire x1="0.5588" y1="33.5788" x2="-0.635" y2="33.5788" width="0" layer="51"/>
<wire x1="-0.635" y1="36.1188" x2="-0.635" y2="35.0012" width="0" layer="51"/>
<wire x1="-0.635" y1="35.0012" x2="0.5588" y2="35.0012" width="0" layer="51"/>
<wire x1="0.5588" y1="35.0012" x2="0.5588" y2="36.1188" width="0" layer="51"/>
<wire x1="0.5588" y1="36.1188" x2="-0.635" y2="36.1188" width="0" layer="51"/>
<wire x1="-0.635" y1="38.6588" x2="-0.635" y2="37.5412" width="0" layer="51"/>
<wire x1="-0.635" y1="37.5412" x2="0.5588" y2="37.5412" width="0" layer="51"/>
<wire x1="0.5588" y1="37.5412" x2="0.5588" y2="38.6588" width="0" layer="51"/>
<wire x1="0.5588" y1="38.6588" x2="-0.635" y2="38.6588" width="0" layer="51"/>
<wire x1="-0.635" y1="41.1988" x2="-0.635" y2="40.0812" width="0" layer="51"/>
<wire x1="-0.635" y1="40.0812" x2="0.5588" y2="40.0812" width="0" layer="51"/>
<wire x1="0.5588" y1="40.0812" x2="0.5588" y2="41.1988" width="0" layer="51"/>
<wire x1="0.5588" y1="41.1988" x2="-0.635" y2="41.1988" width="0" layer="51"/>
<wire x1="-0.635" y1="43.7388" x2="-0.635" y2="42.6212" width="0" layer="51"/>
<wire x1="-0.635" y1="42.6212" x2="0.5588" y2="42.6212" width="0" layer="51"/>
<wire x1="0.5588" y1="42.6212" x2="0.5588" y2="43.7388" width="0" layer="51"/>
<wire x1="0.5588" y1="43.7388" x2="-0.635" y2="43.7388" width="0" layer="51"/>
<wire x1="-0.635" y1="46.2788" x2="-0.635" y2="45.1612" width="0" layer="51"/>
<wire x1="-0.635" y1="45.1612" x2="0.5588" y2="45.1612" width="0" layer="51"/>
<wire x1="0.5588" y1="45.1612" x2="0.5588" y2="46.2788" width="0" layer="51"/>
<wire x1="0.5588" y1="46.2788" x2="-0.635" y2="46.2788" width="0" layer="51"/>
<wire x1="-0.635" y1="48.8188" x2="-0.635" y2="47.7012" width="0" layer="51"/>
<wire x1="-0.635" y1="47.7012" x2="0.5588" y2="47.7012" width="0" layer="51"/>
<wire x1="0.5588" y1="47.7012" x2="0.5588" y2="48.8188" width="0" layer="51"/>
<wire x1="0.5588" y1="48.8188" x2="-0.635" y2="48.8188" width="0" layer="51"/>
<wire x1="-14.605" y1="-2.159" x2="-0.635" y2="-2.159" width="0" layer="51"/>
<wire x1="-0.635" y1="-2.159" x2="-0.635" y2="50.419" width="0" layer="51"/>
<wire x1="-0.635" y1="50.419" x2="-7.3152" y2="50.419" width="0" layer="51"/>
<wire x1="-7.3152" y1="50.419" x2="-7.9248" y2="50.419" width="0" layer="51"/>
<wire x1="-7.9248" y1="50.419" x2="-14.605" y2="50.419" width="0" layer="51"/>
<wire x1="-14.605" y1="50.419" x2="-14.605" y2="-2.159" width="0" layer="51"/>
<wire x1="-7.3152" y1="50.419" x2="-7.9248" y2="50.419" width="0" layer="51" curve="-180"/>
<text x="-15.8242" y="49.3776" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-12.5222" y="-5.0546" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-11.0744" y="52.07" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ATMEGA324PA-PU">
<pin name="VCC" x="-17.78" y="30.48" length="middle" direction="pwr"/>
<pin name="AVCC" x="-17.78" y="27.94" length="middle" direction="pwr"/>
<pin name="AREF" x="-17.78" y="22.86" length="middle" direction="in"/>
<pin name="~RESET" x="-17.78" y="17.78" length="middle" direction="in"/>
<pin name="XTAL1" x="-17.78" y="15.24" length="middle" direction="in"/>
<pin name="PA0" x="-17.78" y="10.16" length="middle"/>
<pin name="PA1" x="-17.78" y="7.62" length="middle"/>
<pin name="PA2" x="-17.78" y="5.08" length="middle"/>
<pin name="PA3" x="-17.78" y="2.54" length="middle"/>
<pin name="PA4" x="-17.78" y="0" length="middle"/>
<pin name="PA5" x="-17.78" y="-2.54" length="middle"/>
<pin name="PA6" x="-17.78" y="-5.08" length="middle"/>
<pin name="PA7" x="-17.78" y="-7.62" length="middle"/>
<pin name="PC0" x="-17.78" y="-12.7" length="middle"/>
<pin name="PC1" x="-17.78" y="-15.24" length="middle"/>
<pin name="PC2" x="-17.78" y="-17.78" length="middle"/>
<pin name="PC3" x="-17.78" y="-20.32" length="middle"/>
<pin name="PC4" x="-17.78" y="-22.86" length="middle"/>
<pin name="PC5" x="-17.78" y="-25.4" length="middle"/>
<pin name="PC6" x="-17.78" y="-27.94" length="middle"/>
<pin name="PC7" x="-17.78" y="-30.48" length="middle"/>
<pin name="GND_2" x="-17.78" y="-35.56" length="middle" direction="pas"/>
<pin name="GND" x="-17.78" y="-38.1" length="middle" direction="pas"/>
<pin name="XTAL2" x="17.78" y="30.48" length="middle" direction="out" rot="R180"/>
<pin name="PB0" x="17.78" y="25.4" length="middle" rot="R180"/>
<pin name="PB1" x="17.78" y="22.86" length="middle" rot="R180"/>
<pin name="PB2" x="17.78" y="20.32" length="middle" rot="R180"/>
<pin name="PB3" x="17.78" y="17.78" length="middle" rot="R180"/>
<pin name="PB4" x="17.78" y="15.24" length="middle" rot="R180"/>
<pin name="PB5" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="PB6" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="PB7" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="PD0" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="PD1" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="PD2" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="PD3" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="PD4" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="PD5" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="PD6" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="PD7" x="17.78" y="-15.24" length="middle" rot="R180"/>
<wire x1="-12.7" y1="35.56" x2="-12.7" y2="-43.18" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-43.18" x2="12.7" y2="-43.18" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-43.18" x2="12.7" y2="35.56" width="0.4064" layer="94"/>
<wire x1="12.7" y1="35.56" x2="-12.7" y2="35.56" width="0.4064" layer="94"/>
<text x="-5.6642" y="36.449" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4798" y="-46.3804" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA324PA-PU" prefix="U">
<description>8-bit MCU</description>
<gates>
<gate name="A" symbol="ATMEGA324PA-PU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP254P1524X482-40">
<connects>
<connect gate="A" pin="AREF" pad="32"/>
<connect gate="A" pin="AVCC" pad="30"/>
<connect gate="A" pin="GND" pad="31"/>
<connect gate="A" pin="GND_2" pad="11"/>
<connect gate="A" pin="PA0" pad="40"/>
<connect gate="A" pin="PA1" pad="39"/>
<connect gate="A" pin="PA2" pad="38"/>
<connect gate="A" pin="PA3" pad="37"/>
<connect gate="A" pin="PA4" pad="36"/>
<connect gate="A" pin="PA5" pad="35"/>
<connect gate="A" pin="PA6" pad="34"/>
<connect gate="A" pin="PA7" pad="33"/>
<connect gate="A" pin="PB0" pad="1"/>
<connect gate="A" pin="PB1" pad="2"/>
<connect gate="A" pin="PB2" pad="3"/>
<connect gate="A" pin="PB3" pad="4"/>
<connect gate="A" pin="PB4" pad="5"/>
<connect gate="A" pin="PB5" pad="6"/>
<connect gate="A" pin="PB6" pad="7"/>
<connect gate="A" pin="PB7" pad="8"/>
<connect gate="A" pin="PC0" pad="22"/>
<connect gate="A" pin="PC1" pad="23"/>
<connect gate="A" pin="PC2" pad="24"/>
<connect gate="A" pin="PC3" pad="25"/>
<connect gate="A" pin="PC4" pad="26"/>
<connect gate="A" pin="PC5" pad="27"/>
<connect gate="A" pin="PC6" pad="28"/>
<connect gate="A" pin="PC7" pad="29"/>
<connect gate="A" pin="PD0" pad="14"/>
<connect gate="A" pin="PD1" pad="15"/>
<connect gate="A" pin="PD2" pad="16"/>
<connect gate="A" pin="PD3" pad="17"/>
<connect gate="A" pin="PD4" pad="18"/>
<connect gate="A" pin="PD5" pad="19"/>
<connect gate="A" pin="PD6" pad="20"/>
<connect gate="A" pin="PD7" pad="21"/>
<connect gate="A" pin="VCC" pad="10"/>
<connect gate="A" pin="XTAL1" pad="13"/>
<connect gate="A" pin="XTAL2" pad="12"/>
<connect gate="A" pin="~RESET" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="ATMEGA324PA-PU" constant="no"/>
<attribute name="OC_FARNELL" value="1715485" constant="no"/>
<attribute name="OC_NEWARK" value="15R0267" constant="no"/>
<attribute name="PACKAGE" value="DIP-40" constant="no"/>
<attribute name="SUPPLIER" value="ATMEL" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="switch-misc">
<description>&lt;b&gt;Switches&lt;/b&gt;&lt;p&gt;
Marquardt, RAFI, ITT, and others&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DT6">
<description>&lt;b&gt;ITT SWITCH&lt;/b&gt;</description>
<wire x1="1.016" y1="4.826" x2="1.016" y2="5.588" width="0.1524" layer="21"/>
<wire x1="1.016" y1="4.826" x2="-1.016" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="4.826" x2="-1.016" y2="5.588" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-5.969" x2="1.016" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-5.969" x2="-1.016" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-4.826" x2="-1.016" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-5.588" x2="1.016" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-5.588" x2="-1.016" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-5.588" x2="1.016" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.588" x2="1.016" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.588" x2="-1.016" y2="5.969" width="0.1524" layer="21"/>
<wire x1="1.016" y1="5.588" x2="1.016" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="2.54" x2="1.143" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.143" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-1.905" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-2.54" x2="1.143" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.143" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-2.9512" x2="-5.334" y2="2.9512" width="0.1524" layer="21" curve="302.09017"/>
<wire x1="-2.347" y1="3.9236" x2="2.347" y2="3.9236" width="0.1524" layer="21" curve="-61.77363"/>
<wire x1="-1.8556" y1="3.7578" x2="1.8556" y2="3.7578" width="0.1524" layer="21" curve="-52.56028"/>
<wire x1="-1.8556" y1="-3.7578" x2="1.8556" y2="-3.7578" width="0.1524" layer="21" curve="52.56028"/>
<wire x1="-2.347" y1="-3.9236" x2="2.347" y2="-3.9236" width="0.1524" layer="21" curve="61.77363"/>
<wire x1="-5.334" y1="-2.9512" x2="-5.334" y2="2.9512" width="0.1524" layer="21"/>
<wire x1="-3.7578" y1="1.8556" x2="-3.7578" y2="-1.8556" width="0.1524" layer="21" curve="52.56028"/>
<wire x1="-3.9236" y1="2.347" x2="-3.9236" y2="-2.347" width="0.1524" layer="21" curve="61.77363"/>
<wire x1="-3.7578" y1="-1.8556" x2="-1.8556" y2="-3.7578" width="0.1524" layer="51" curve="37.43972"/>
<wire x1="-3.9236" y1="-2.347" x2="-2.347" y2="-3.9236" width="0.1524" layer="51" curve="28.22637"/>
<wire x1="-3.9236" y1="2.347" x2="-2.347" y2="3.9236" width="0.1524" layer="51" curve="-28.22637"/>
<wire x1="-3.7578" y1="1.8556" x2="-1.8556" y2="3.7578" width="0.1524" layer="51" curve="-37.43972"/>
<wire x1="3.7578" y1="-1.8556" x2="3.7578" y2="1.8556" width="0.1524" layer="21" curve="52.56028"/>
<wire x1="3.9236" y1="-2.347" x2="3.9236" y2="2.347" width="0.1524" layer="21" curve="61.77363"/>
<wire x1="1.8556" y1="-3.7578" x2="3.7578" y2="-1.8556" width="0.1524" layer="51" curve="37.43972"/>
<wire x1="2.347" y1="-3.9236" x2="3.9236" y2="-2.347" width="0.1524" layer="51" curve="28.22637"/>
<wire x1="1.8556" y1="3.7578" x2="3.7578" y2="1.8556" width="0.1524" layer="51" curve="-37.43972"/>
<wire x1="2.347" y1="3.9236" x2="3.9236" y2="2.347" width="0.1524" layer="51" curve="-28.22637"/>
<pad name="1" x="-2.54" y="2.54" drill="1.1176" shape="octagon"/>
<pad name="2" x="2.54" y="2.54" drill="1.1176" shape="octagon"/>
<pad name="3" x="2.54" y="-2.54" drill="1.1176" shape="octagon"/>
<pad name="4" x="-2.54" y="-2.54" drill="1.1176" shape="octagon"/>
<text x="-2.54" y="6.477" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-7.874" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="DTE6">
<description>&lt;b&gt;ITT SWITCH&lt;/b&gt;</description>
<wire x1="1.016" y1="4.826" x2="1.016" y2="5.588" width="0.1524" layer="21"/>
<wire x1="1.016" y1="4.826" x2="-1.016" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="4.826" x2="-1.016" y2="5.588" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-5.969" x2="1.016" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-5.969" x2="-1.016" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-4.826" x2="-1.016" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-5.588" x2="1.016" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-5.588" x2="-1.016" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-5.588" x2="1.016" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.588" x2="1.016" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.588" x2="-1.016" y2="5.969" width="0.1524" layer="21"/>
<wire x1="1.016" y1="5.588" x2="1.016" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-1.905" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.921" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.429" x2="-3.81" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.429" x2="-3.429" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.429" x2="3.429" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.429" y1="-3.81" x2="-3.429" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.81" x2="3.81" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.81" y1="3.429" x2="3.81" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="3.429" x2="-3.429" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="3.81" x2="3.429" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-2.9512" x2="-5.334" y2="2.9512" width="0.1524" layer="21" curve="302.09017"/>
<wire x1="-5.334" y1="-2.9512" x2="-5.334" y2="2.9512" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="2.54" drill="1.1176" shape="octagon"/>
<pad name="2" x="2.54" y="2.54" drill="1.1176" shape="octagon"/>
<pad name="3" x="2.54" y="-2.54" drill="1.1176" shape="octagon"/>
<pad name="4" x="-2.54" y="-2.54" drill="1.1176" shape="octagon"/>
<text x="-2.54" y="6.477" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-7.747" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="DTE6K">
<description>&lt;b&gt;ITT SWITCH&lt;/b&gt;</description>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-1.905" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.921" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-5.207" x2="-6.223" y2="5.207" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-6.223" x2="-5.207" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="6.223" y1="5.207" x2="6.223" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="6.223" x2="5.207" y2="6.223" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-6.223" x2="6.223" y2="-5.207" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.223" y1="-5.207" x2="-5.207" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="5.207" y1="6.223" x2="6.223" y2="5.207" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.223" y1="5.207" x2="-5.207" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="5.715" y1="5.207" x2="5.715" y2="-5.207" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="5.715" x2="5.207" y2="5.715" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-5.207" x2="-5.715" y2="5.207" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-5.715" x2="-5.207" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-5.715" x2="5.715" y2="-5.207" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.715" y1="-5.207" x2="-5.207" y2="-5.715" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.715" y1="5.207" x2="-5.207" y2="5.715" width="0.1524" layer="21" curve="-90"/>
<wire x1="5.207" y1="5.715" x2="5.715" y2="5.207" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="2.54" drill="1.1176" shape="octagon"/>
<pad name="2" x="2.54" y="2.54" drill="1.1176" shape="octagon"/>
<pad name="3" x="2.54" y="-2.54" drill="1.1176" shape="octagon"/>
<pad name="4" x="-2.54" y="-2.54" drill="1.1176" shape="octagon"/>
<text x="-5.08" y="6.604" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-5.207" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="TS2">
<wire x1="0" y1="2.032" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-6.35" y1="1.905" x2="-5.08" y2="1.905" width="0.254" layer="94"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="0" width="0.254" layer="94"/>
<wire x1="-6.35" y1="-1.905" x2="-5.08" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-6.35" y1="0" x2="-4.445" y2="0" width="0.1524" layer="94"/>
<wire x1="-6.35" y1="0" x2="-6.35" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.016" y2="2.032" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="2.54" radius="0.127" width="0.4064" layer="94"/>
<text x="-6.985" y="-1.905" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-4.445" y="2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="S" x="0" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="P@1" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S@1" x="2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DT" prefix="S">
<description>&lt;b&gt;ITT SWITCH&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="TS2" x="0" y="0"/>
</gates>
<devices>
<device name="6" package="DT6">
<connects>
<connect gate="1" pin="P" pad="3"/>
<connect gate="1" pin="P@1" pad="4"/>
<connect gate="1" pin="S" pad="1"/>
<connect gate="1" pin="S@1" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E6" package="DTE6">
<connects>
<connect gate="1" pin="P" pad="3"/>
<connect gate="1" pin="P@1" pad="4"/>
<connect gate="1" pin="S" pad="1"/>
<connect gate="1" pin="S@1" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E6K" package="DTE6K">
<connects>
<connect gate="1" pin="P" pad="3"/>
<connect gate="1" pin="P@1" pad="4"/>
<connect gate="1" pin="S" pad="1"/>
<connect gate="1" pin="S@1" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="LCD1" library="lph-7366" deviceset="LPH-7366" device=""/>
<part name="U1" library="Atmel_By_element14_Batch_1-00" deviceset="ATMEGA324PA-PU" device=""/>
<part name="S1" library="switch-misc" deviceset="DT" device="E6K"/>
<part name="S2" library="switch-misc" deviceset="DT" device="E6K"/>
<part name="S3" library="switch-misc" deviceset="DT" device="E6K"/>
<part name="S4" library="switch-misc" deviceset="DT" device="E6K"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="LCD1" gate="G$1" x="114.3" y="53.34"/>
<instance part="U1" gate="A" x="20.32" y="53.34"/>
<instance part="S1" gate="1" x="129.54" y="-5.08" rot="R270"/>
<instance part="S2" gate="1" x="111.76" y="5.08" rot="R270"/>
<instance part="S3" gate="1" x="129.54" y="12.7" rot="R270"/>
<instance part="S4" gate="1" x="147.32" y="5.08" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="LCD1" gate="G$1" pin="VDD"/>
<wire x1="96.52" y1="48.26" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
<wire x1="83.82" y1="48.26" x2="83.82" y2="96.52" width="0.1524" layer="91"/>
<wire x1="83.82" y1="96.52" x2="-5.08" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="96.52" x2="-5.08" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="83.82" x2="5.08" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="5.08" y1="15.24" x2="-10.16" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="15.24" x2="-10.16" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-12.7" x2="83.82" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-12.7" x2="83.82" y2="35.56" width="0.1524" layer="91"/>
<wire x1="83.82" y1="35.56" x2="99.06" y2="35.56" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="VOUT"/>
<wire x1="96.52" y1="43.18" x2="83.82" y2="43.18" width="0.1524" layer="91"/>
<wire x1="83.82" y1="43.18" x2="83.82" y2="35.56" width="0.1524" layer="91"/>
<junction x="83.82" y="35.56"/>
<wire x1="167.64" y1="15.24" x2="167.64" y2="12.7" width="0.1524" layer="91"/>
<wire x1="167.64" y1="12.7" x2="167.64" y2="10.16" width="0.1524" layer="91"/>
<wire x1="167.64" y1="10.16" x2="167.64" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-22.86" x2="83.82" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-22.86" x2="83.82" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="S2" gate="1" pin="S"/>
<wire x1="116.84" y1="5.08" x2="119.38" y2="5.08" width="0.1524" layer="91"/>
<wire x1="119.38" y1="5.08" x2="119.38" y2="7.62" width="0.1524" layer="91"/>
<wire x1="119.38" y1="7.62" x2="142.24" y2="7.62" width="0.1524" layer="91"/>
<wire x1="142.24" y1="7.62" x2="142.24" y2="15.24" width="0.1524" layer="91"/>
<wire x1="142.24" y1="15.24" x2="167.64" y2="15.24" width="0.1524" layer="91"/>
<wire x1="167.64" y1="15.24" x2="167.64" y2="17.78" width="0.1524" layer="91"/>
<pinref part="S3" gate="1" pin="S"/>
<wire x1="134.62" y1="12.7" x2="139.7" y2="12.7" width="0.1524" layer="91"/>
<wire x1="139.7" y1="12.7" x2="139.7" y2="17.78" width="0.1524" layer="91"/>
<wire x1="139.7" y1="17.78" x2="167.64" y2="17.78" width="0.1524" layer="91"/>
<pinref part="S4" gate="1" pin="S"/>
<wire x1="152.4" y1="5.08" x2="154.94" y2="5.08" width="0.1524" layer="91"/>
<wire x1="154.94" y1="5.08" x2="154.94" y2="12.7" width="0.1524" layer="91"/>
<wire x1="154.94" y1="12.7" x2="167.64" y2="12.7" width="0.1524" layer="91"/>
<pinref part="S1" gate="1" pin="S"/>
<wire x1="134.62" y1="-5.08" x2="157.48" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-5.08" x2="157.48" y2="10.16" width="0.1524" layer="91"/>
<wire x1="157.48" y1="10.16" x2="167.64" y2="10.16" width="0.1524" layer="91"/>
<junction x="83.82" y="-12.7"/>
<junction x="167.64" y="10.16"/>
<junction x="167.64" y="12.7"/>
<junction x="167.64" y="15.24"/>
<junction x="167.64" y="17.78"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="LCD1" gate="G$1" pin="SDIN"/>
<wire x1="96.52" y1="71.12" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<wire x1="76.2" y1="71.12" x2="76.2" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB0"/>
<wire x1="76.2" y1="78.74" x2="38.1" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="LCD1" gate="G$1" pin="SCLK"/>
<wire x1="96.52" y1="68.58" x2="73.66" y2="68.58" width="0.1524" layer="91"/>
<wire x1="73.66" y1="68.58" x2="73.66" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB1"/>
<wire x1="73.66" y1="76.2" x2="38.1" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="LCD1" gate="G$1" pin="D/C"/>
<wire x1="96.52" y1="66.04" x2="71.12" y2="66.04" width="0.1524" layer="91"/>
<wire x1="71.12" y1="66.04" x2="71.12" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB2"/>
<wire x1="71.12" y1="73.66" x2="38.1" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="LCD1" gate="G$1" pin="/SCE"/>
<wire x1="96.52" y1="63.5" x2="68.58" y2="63.5" width="0.1524" layer="91"/>
<wire x1="68.58" y1="63.5" x2="68.58" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB3"/>
<wire x1="68.58" y1="71.12" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="LCD1" gate="G$1" pin="/RES"/>
<wire x1="96.52" y1="58.42" x2="66.04" y2="58.42" width="0.1524" layer="91"/>
<wire x1="66.04" y1="58.42" x2="66.04" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB4"/>
<wire x1="66.04" y1="68.58" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="LCD1" gate="G$1" pin="OSC"/>
<wire x1="96.52" y1="53.34" x2="63.5" y2="53.34" width="0.1524" layer="91"/>
<wire x1="63.5" y1="53.34" x2="63.5" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PB5"/>
<wire x1="63.5" y1="66.04" x2="38.1" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="S1" gate="1" pin="P"/>
<wire x1="124.46" y1="-5.08" x2="40.64" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-5.08" x2="40.64" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PD3"/>
<wire x1="40.64" y1="48.26" x2="38.1" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="S2" gate="1" pin="P"/>
<wire x1="106.68" y1="5.08" x2="104.14" y2="5.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="5.08" x2="104.14" y2="0" width="0.1524" layer="91"/>
<wire x1="104.14" y1="0" x2="45.72" y2="0" width="0.1524" layer="91"/>
<wire x1="45.72" y1="0" x2="45.72" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PD1"/>
<wire x1="45.72" y1="53.34" x2="38.1" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="S4" gate="1" pin="P"/>
<wire x1="142.24" y1="5.08" x2="121.92" y2="5.08" width="0.1524" layer="91"/>
<wire x1="121.92" y1="5.08" x2="121.92" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="121.92" y1="-2.54" x2="43.18" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-2.54" x2="43.18" y2="50.8" width="0.1524" layer="91"/>
<wire x1="43.18" y1="50.8" x2="35.56" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="S3" gate="1" pin="P"/>
<wire x1="124.46" y1="12.7" x2="101.6" y2="12.7" width="0.1524" layer="91"/>
<wire x1="101.6" y1="12.7" x2="101.6" y2="2.54" width="0.1524" layer="91"/>
<wire x1="101.6" y1="2.54" x2="48.26" y2="2.54" width="0.1524" layer="91"/>
<wire x1="48.26" y1="2.54" x2="48.26" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="PD0"/>
<wire x1="48.26" y1="55.88" x2="38.1" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
