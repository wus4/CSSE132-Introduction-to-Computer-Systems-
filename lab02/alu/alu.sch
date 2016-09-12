<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="op(2:0)" />
        <signal name="a(3:0)" />
        <signal name="b(3:0)" />
        <signal name="XLXN_4" />
        <signal name="b(0)" />
        <signal name="a(0)" />
        <signal name="b(1)" />
        <signal name="a(1)" />
        <signal name="r(3:0)" />
        <signal name="XLXN_23" />
        <signal name="overflow" />
        <signal name="op(2)" />
        <signal name="gd" />
        <signal name="XLXN_30" />
        <signal name="r(0)" />
        <signal name="r(1)" />
        <signal name="r(3)" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="r(2)" />
        <signal name="XLXN_37" />
        <signal name="b(2)" />
        <signal name="a(2)" />
        <signal name="a(3)" />
        <signal name="b(3)" />
        <signal name="zo" />
        <port polarity="Input" name="op(2:0)" />
        <port polarity="Input" name="a(3:0)" />
        <port polarity="Input" name="b(3:0)" />
        <port polarity="Output" name="r(3:0)" />
        <port polarity="Output" name="overflow" />
        <port polarity="Output" name="zo" />
        <blockdef name="alu1b">
            <timestamp>2016-3-22T15:42:2</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="alu1b" name="XLXI_1">
            <blockpin signalname="op(2:0)" name="op(2:0)" />
            <blockpin signalname="op(2)" name="ci" />
            <blockpin signalname="b(0)" name="b" />
            <blockpin signalname="a(0)" name="a" />
            <blockpin signalname="XLXN_4" name="co" />
            <blockpin signalname="r(0)" name="r" />
            <blockpin signalname="XLXN_30" name="slt" />
            <blockpin name="less" />
        </block>
        <block symbolname="alu1b" name="XLXI_2">
            <blockpin signalname="op(2:0)" name="op(2:0)" />
            <blockpin signalname="XLXN_4" name="ci" />
            <blockpin signalname="b(1)" name="b" />
            <blockpin signalname="a(1)" name="a" />
            <blockpin signalname="XLXN_37" name="co" />
            <blockpin signalname="r(1)" name="r" />
            <blockpin signalname="gd" name="slt" />
            <blockpin name="less" />
        </block>
        <block symbolname="alu1b" name="XLXI_3">
            <blockpin signalname="op(2:0)" name="op(2:0)" />
            <blockpin signalname="XLXN_37" name="ci" />
            <blockpin signalname="b(2)" name="b" />
            <blockpin signalname="a(2)" name="a" />
            <blockpin signalname="XLXN_33" name="co" />
            <blockpin signalname="r(2)" name="r" />
            <blockpin signalname="gd" name="slt" />
            <blockpin name="less" />
        </block>
        <block symbolname="alu1b" name="XLXI_4">
            <blockpin signalname="op(2:0)" name="op(2:0)" />
            <blockpin signalname="XLXN_33" name="ci" />
            <blockpin signalname="b(3)" name="b" />
            <blockpin signalname="a(3)" name="a" />
            <blockpin signalname="XLXN_23" name="co" />
            <blockpin signalname="r(3)" name="r" />
            <blockpin signalname="gd" name="slt" />
            <blockpin signalname="XLXN_30" name="less" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="overflow" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="gd" name="G" />
        </block>
        <block symbolname="or4" name="XLXI_6">
            <blockpin signalname="r(2)" name="I0" />
            <blockpin signalname="r(1)" name="I1" />
            <blockpin signalname="r(3)" name="I2" />
            <blockpin signalname="r(0)" name="I3" />
            <blockpin signalname="zo" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="op(2:0)">
            <wire x2="1312" y1="192" y2="192" x1="896" />
            <wire x2="1312" y1="192" y2="592" x1="1312" />
            <wire x2="1456" y1="592" y2="592" x1="1312" />
            <wire x2="1312" y1="592" y2="1104" x1="1312" />
            <wire x2="1456" y1="1104" y2="1104" x1="1312" />
            <wire x2="1312" y1="1104" y2="1632" x1="1312" />
            <wire x2="1312" y1="1632" y2="2176" x1="1312" />
            <wire x2="1456" y1="2176" y2="2176" x1="1312" />
            <wire x2="1456" y1="1632" y2="1632" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="896" y="192" name="op(2:0)" orien="R180" />
        <branch name="a(3:0)">
            <wire x2="1232" y1="288" y2="288" x1="912" />
        </branch>
        <iomarker fontsize="28" x="912" y="288" name="a(3:0)" orien="R180" />
        <branch name="b(3:0)">
            <wire x2="1232" y1="400" y2="400" x1="912" />
        </branch>
        <iomarker fontsize="28" x="912" y="400" name="b(3:0)" orien="R180" />
        <instance x="1456" y="880" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1456" y="1392" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1920" y1="960" y2="960" x1="1360" />
            <wire x2="1360" y1="960" y2="1168" x1="1360" />
            <wire x2="1456" y1="1168" y2="1168" x1="1360" />
            <wire x2="1920" y1="592" y2="592" x1="1840" />
            <wire x2="1920" y1="592" y2="960" x1="1920" />
        </branch>
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="784" type="branch" />
            <wire x2="1456" y1="784" y2="784" x1="1424" />
        </branch>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="848" type="branch" />
            <wire x2="1456" y1="848" y2="848" x1="1424" />
        </branch>
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1296" type="branch" />
            <wire x2="1456" y1="1296" y2="1296" x1="1424" />
        </branch>
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1360" type="branch" />
            <wire x2="1456" y1="1360" y2="1360" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="2352" y="240" name="r(3:0)" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="2368" y1="2176" y2="2176" x1="1840" />
            <wire x2="2384" y1="1968" y2="1968" x1="2368" />
            <wire x2="2368" y1="1968" y2="2176" x1="2368" />
        </branch>
        <branch name="overflow">
            <wire x2="2800" y1="1936" y2="1936" x1="2640" />
        </branch>
        <branch name="op(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="656" type="branch" />
            <wire x2="1456" y1="656" y2="656" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1936" name="overflow" orien="R0" />
        <instance x="2384" y="2032" name="XLXI_5" orien="R0" />
        <branch name="r(3:0)">
            <wire x2="2352" y1="240" y2="240" x1="2240" />
        </branch>
        <instance x="1872" y="496" name="XLXI_12" orien="R0" />
        <branch name="gd">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="352" type="branch" />
            <wire x2="2000" y1="352" y2="352" x1="1936" />
            <wire x2="1936" y1="352" y2="368" x1="1936" />
        </branch>
        <instance x="1456" y="2464" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_30">
            <wire x2="1184" y1="896" y2="896" x1="1168" />
            <wire x2="1184" y1="896" y2="912" x1="1184" />
            <wire x2="1456" y1="912" y2="912" x1="1184" />
            <wire x2="1168" y1="896" y2="2608" x1="1168" />
            <wire x2="1840" y1="2608" y2="2608" x1="1168" />
            <wire x2="1840" y1="2608" y2="2624" x1="1840" />
            <wire x2="1856" y1="2624" y2="2624" x1="1840" />
            <wire x2="1856" y1="2496" y2="2496" x1="1840" />
            <wire x2="1856" y1="2496" y2="2624" x1="1856" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1440" y1="2064" y2="2240" x1="1440" />
            <wire x2="1456" y1="2240" y2="2240" x1="1440" />
            <wire x2="2320" y1="2064" y2="2064" x1="1440" />
            <wire x2="2320" y1="1632" y2="1632" x1="1840" />
            <wire x2="2320" y1="1632" y2="1904" x1="2320" />
            <wire x2="2384" y1="1904" y2="1904" x1="2320" />
            <wire x2="2320" y1="1904" y2="2064" x1="2320" />
        </branch>
        <instance x="1456" y="1920" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_37">
            <wire x2="2032" y1="1488" y2="1488" x1="1360" />
            <wire x2="2048" y1="1488" y2="1488" x1="2032" />
            <wire x2="1360" y1="1488" y2="1696" x1="1360" />
            <wire x2="1456" y1="1696" y2="1696" x1="1360" />
            <wire x2="2048" y1="1104" y2="1104" x1="1840" />
            <wire x2="2048" y1="1104" y2="1488" x1="2048" />
        </branch>
        <branch name="b(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1824" type="branch" />
            <wire x2="1456" y1="1824" y2="1824" x1="1280" />
        </branch>
        <branch name="a(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1888" type="branch" />
            <wire x2="1456" y1="1888" y2="1888" x1="1280" />
        </branch>
        <branch name="gd">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1952" type="branch" />
            <wire x2="1456" y1="1952" y2="1952" x1="1280" />
        </branch>
        <branch name="b(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="2368" type="branch" />
            <wire x2="1360" y1="2368" y2="2368" x1="1344" />
            <wire x2="1456" y1="2368" y2="2368" x1="1360" />
        </branch>
        <branch name="a(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2432" type="branch" />
            <wire x2="1456" y1="2432" y2="2432" x1="1344" />
        </branch>
        <branch name="gd">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2496" type="branch" />
            <wire x2="1456" y1="2496" y2="2496" x1="1344" />
        </branch>
        <branch name="gd">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1408" type="branch" />
            <wire x2="1248" y1="1408" y2="1424" x1="1248" />
            <wire x2="1456" y1="1424" y2="1424" x1="1248" />
        </branch>
        <branch name="r(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="2432" type="branch" />
            <wire x2="1968" y1="2432" y2="2432" x1="1840" />
        </branch>
        <branch name="r(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="848" type="branch" />
            <wire x2="2016" y1="848" y2="848" x1="1840" />
        </branch>
        <branch name="r(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1360" type="branch" />
            <wire x2="2128" y1="1360" y2="1360" x1="1840" />
        </branch>
        <branch name="r(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1888" type="branch" />
            <wire x2="2080" y1="1888" y2="1888" x1="1840" />
        </branch>
        <branch name="zo">
            <wire x2="2704" y1="1440" y2="1440" x1="2624" />
        </branch>
        <instance x="2368" y="1600" name="XLXI_6" orien="R0" />
        <branch name="r(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1344" type="branch" />
            <wire x2="2368" y1="1344" y2="1344" x1="2336" />
        </branch>
        <branch name="r(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1408" type="branch" />
            <wire x2="2368" y1="1408" y2="1408" x1="2352" />
        </branch>
        <branch name="r(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1472" type="branch" />
            <wire x2="2368" y1="1472" y2="1472" x1="2336" />
        </branch>
        <branch name="r(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1536" type="branch" />
            <wire x2="2368" y1="1536" y2="1536" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2704" y="1440" name="zo" orien="R0" />
    </sheet>
</drawing>