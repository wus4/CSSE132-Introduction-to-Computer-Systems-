<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_12" />
        <signal name="XLXN_2" />
        <signal name="XLXN_1" />
        <signal name="a" />
        <signal name="b" />
        <signal name="ci" />
        <signal name="XLXN_42" />
        <signal name="r" />
        <signal name="co" />
        <signal name="XLXN_73" />
        <signal name="XLXN_75" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="ci" />
        <port polarity="Output" name="r" />
        <port polarity="Output" name="co" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and3" name="XLXI_13">
            <blockpin signalname="XLXN_75" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="ci" name="I2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_14">
            <blockpin signalname="XLXN_75" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_73" name="I2" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_15">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="XLXN_73" name="I2" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_16">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="ci" name="I2" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_20">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="co" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_21">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="XLXN_1" name="I3" />
            <blockpin signalname="r" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_40">
            <blockpin signalname="a" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_41">
            <blockpin signalname="b" name="I" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_42">
            <blockpin signalname="ci" name="I" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_43">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="ci" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_44">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_45">
            <blockpin signalname="a" name="I0" />
            <blockpin signalname="ci" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_4">
            <wire x2="1008" y1="960" y2="960" x1="960" />
            <wire x2="1008" y1="800" y2="960" x1="1008" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="992" y1="1152" y2="1152" x1="960" />
            <wire x2="992" y1="1152" y2="1264" x1="992" />
        </branch>
        <instance x="704" y="560" name="XLXI_13" orien="R0" />
        <instance x="704" y="736" name="XLXI_14" orien="R0" />
        <instance x="704" y="912" name="XLXI_15" orien="R0" />
        <instance x="704" y="1088" name="XLXI_16" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="992" y1="1328" y2="1328" x1="960" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="992" y1="1504" y2="1504" x1="960" />
            <wire x2="992" y1="1392" y2="1504" x1="992" />
        </branch>
        <instance x="992" y="1456" name="XLXI_20" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="976" y1="784" y2="784" x1="960" />
            <wire x2="976" y1="736" y2="784" x1="976" />
            <wire x2="1008" y1="736" y2="736" x1="976" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="976" y1="608" y2="608" x1="960" />
            <wire x2="976" y1="608" y2="672" x1="976" />
            <wire x2="1008" y1="672" y2="672" x1="976" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="1008" y1="432" y2="432" x1="960" />
            <wire x2="1008" y1="432" y2="608" x1="1008" />
        </branch>
        <instance x="1008" y="864" name="XLXI_21" orien="R0" />
        <branch name="a">
            <wire x2="64" y1="176" y2="384" x1="64" />
            <wire x2="64" y1="384" y2="608" x1="64" />
            <wire x2="64" y1="608" y2="1184" x1="64" />
            <wire x2="64" y1="1184" y2="1472" x1="64" />
            <wire x2="704" y1="1472" y2="1472" x1="64" />
            <wire x2="704" y1="1184" y2="1184" x1="64" />
            <wire x2="656" y1="608" y2="608" x1="64" />
            <wire x2="704" y1="608" y2="608" x1="656" />
            <wire x2="656" y1="608" y2="960" x1="656" />
            <wire x2="704" y1="960" y2="960" x1="656" />
            <wire x2="320" y1="384" y2="384" x1="64" />
        </branch>
        <branch name="b">
            <wire x2="144" y1="176" y2="656" x1="144" />
            <wire x2="144" y1="656" y2="768" x1="144" />
            <wire x2="144" y1="768" y2="1024" x1="144" />
            <wire x2="144" y1="1024" y2="1360" x1="144" />
            <wire x2="144" y1="1360" y2="1536" x1="144" />
            <wire x2="704" y1="1536" y2="1536" x1="144" />
            <wire x2="704" y1="1360" y2="1360" x1="144" />
            <wire x2="704" y1="1024" y2="1024" x1="144" />
            <wire x2="672" y1="768" y2="768" x1="144" />
            <wire x2="672" y1="768" y2="848" x1="672" />
            <wire x2="704" y1="848" y2="848" x1="672" />
            <wire x2="320" y1="656" y2="656" x1="144" />
        </branch>
        <branch name="ci">
            <wire x2="272" y1="192" y2="320" x1="272" />
            <wire x2="704" y1="320" y2="320" x1="272" />
            <wire x2="704" y1="320" y2="368" x1="704" />
            <wire x2="272" y1="320" y2="816" x1="272" />
            <wire x2="272" y1="816" y2="896" x1="272" />
            <wire x2="704" y1="896" y2="896" x1="272" />
            <wire x2="272" y1="896" y2="1120" x1="272" />
            <wire x2="704" y1="1120" y2="1120" x1="272" />
            <wire x2="272" y1="1120" y2="1296" x1="272" />
            <wire x2="704" y1="1296" y2="1296" x1="272" />
            <wire x2="320" y1="816" y2="816" x1="272" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="640" y1="384" y2="384" x1="544" />
            <wire x2="688" y1="384" y2="384" x1="640" />
            <wire x2="688" y1="384" y2="432" x1="688" />
            <wire x2="704" y1="432" y2="432" x1="688" />
            <wire x2="640" y1="384" y2="784" x1="640" />
            <wire x2="704" y1="784" y2="784" x1="640" />
        </branch>
        <instance x="704" y="1424" name="XLXI_43" orien="R0" />
        <instance x="704" y="1600" name="XLXI_44" orien="R0" />
        <instance x="704" y="1248" name="XLXI_45" orien="R0" />
        <branch name="r">
            <wire x2="1424" y1="704" y2="704" x1="1264" />
        </branch>
        <branch name="co">
            <wire x2="1424" y1="1328" y2="1328" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1424" y="704" name="r" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1328" name="co" orien="R0" />
        <instance x="320" y="688" name="XLXI_41" orien="R0" />
        <branch name="XLXN_73">
            <wire x2="576" y1="816" y2="816" x1="544" />
            <wire x2="576" y1="544" y2="720" x1="576" />
            <wire x2="576" y1="720" y2="816" x1="576" />
            <wire x2="704" y1="720" y2="720" x1="576" />
            <wire x2="704" y1="544" y2="544" x1="576" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="624" y1="656" y2="656" x1="544" />
            <wire x2="624" y1="656" y2="672" x1="624" />
            <wire x2="704" y1="672" y2="672" x1="624" />
            <wire x2="624" y1="496" y2="656" x1="624" />
            <wire x2="704" y1="496" y2="496" x1="624" />
        </branch>
        <iomarker fontsize="28" x="144" y="176" name="b" orien="R270" />
        <iomarker fontsize="28" x="272" y="192" name="ci" orien="R270" />
        <iomarker fontsize="28" x="64" y="176" name="a" orien="R270" />
        <instance x="320" y="848" name="XLXI_42" orien="R0" />
        <instance x="320" y="416" name="XLXI_40" orien="R0" />
    </sheet>
</drawing>