-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Applications_Accessibility"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Applications_Editors"] = {
	{"Gobby","/usr/bin/gobby","/usr/share/pixmaps/gobby.xpm"},
	{"GVIM","/usr/bin/vim.gnome -g -f","/usr/share/pixmaps/vim-32.xpm"},
	{"Nano", "x-terminal-emulator -e ".."/bin/nano","/usr/share/nano/nano-menu.xpm"},
}
Debian_menu["Debian_Applications_File_Management"] = {
	{"mc", "x-terminal-emulator -e ".."/usr/bin/mc","/usr/share/pixmaps/mc.xpm"},
}
Debian_menu["Debian_Applications_Graphics"] = {
	{"ImageMagick","/usr/bin/display logo:"},
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Applications_Network_Communication"] = {
	{"Mutt", "x-terminal-emulator -e ".."/usr/bin/mutt","/usr/share/pixmaps/mutt.xpm"},
	{"Pidgin","/usr/bin/pidgin","/usr/share/pixmaps/pidgin-menu.xpm"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet"},
	{"Xbiff","xbiff"},
}
Debian_menu["Debian_Applications_Network_Iceape_Components"] = {
	{"Iceape Browser","/usr/bin/iceape","/usr/share/pixmaps/iceape.xpm"},
	{"Iceape Composer","/usr/bin/iceape -edit","/usr/share/pixmaps/iceape-composer.xpm"},
}
Debian_menu["Debian_Applications_Network_Monitoring"] = {
	{"IPTraf", "x-terminal-emulator -e ".."/usr/bin/su-to-root -c /usr/sbin/iptraf"},
}
Debian_menu["Debian_Applications_Network"] = {
	{ "Communication", Debian_menu["Debian_Applications_Network_Communication"] },
	{ "Iceape Components", Debian_menu["Debian_Applications_Network_Iceape_Components"] },
	{"Iceape Navigator","/usr/bin/iceape","/usr/share/pixmaps/iceape.xpm"},
	{ "Monitoring", Debian_menu["Debian_Applications_Network_Monitoring"] },
}
Debian_menu["Debian_Applications_Programming"] = {
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
	{"Sun Java 6 Web Start","/usr/lib/jvm/java-6-sun-1.6.0.07/bin/javaws -viewer","/usr/share/pixmaps/sun-java6.xpm"},
	{"Tclsh8.4", "x-terminal-emulator -e ".."/usr/bin/tclsh8.4"},
}
Debian_menu["Debian_Applications_Science_Engineering"] = {
	{"Dia","/usr/bin/dia-normal","/usr/share/pixmaps/dia_menu.xpm"},
}
Debian_menu["Debian_Applications_Science_Mathematics"] = {
	{"GCalcTool","/usr/bin/gcalctool","/usr/share/pixmaps/gcalctool.xpm"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Applications_Science"] = {
	{ "Engineering", Debian_menu["Debian_Applications_Science_Engineering"] },
	{ "Mathematics", Debian_menu["Debian_Applications_Science_Mathematics"] },
}
Debian_menu["Debian_Applications_Shells"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Python (v2.5)", "x-terminal-emulator -e ".."/usr/bin/python2.5","/usr/share/pixmaps/python2.5.xpm"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
	{"Zsh", "x-terminal-emulator -e ".."/bin/zsh4"},
	{"Zsh (snapshot)", "x-terminal-emulator -e ".."/bin/zsh-beta"},
}
Debian_menu["Debian_Applications_Sound"] = {
	{"Hydrogen","/usr/bin/hydrogen","/usr/share/pixmaps/hydrogen.xpm"},
}
Debian_menu["Debian_Applications_System_Administration"] = {
	{"alsaconf", "x-terminal-emulator -e ".."su-to-root -p root -c /usr/sbin/alsaconf"},
	{"Aptitude", "x-terminal-emulator -e ".."/usr/bin/aptitude"},
	{"Debian Task selector", "x-terminal-emulator -e ".."su-to-root -c tasksel"},
	{"Editres","editres"},
	{"GDM flexiserver","gdmflexiserver","/usr/share/pixmaps/gdm.xpm"},
	{"GDM flexiserver in Xnest","gdmflexiserver -n","/usr/share/pixmaps/gdm.xpm"},
	{"GDM Photo Setup","gdmphotosetup","/usr/share/pixmaps/gdm.xpm"},
	{"GDM Setup","su-to-root -X -p root -c /usr/sbin/gdmsetup","/usr/share/pixmaps/gdm.xpm"},
	{"pppconfig", "x-terminal-emulator -e ".."su-to-root -p root -c /usr/sbin/pppconfig"},
	{"Sun Java 6 Plugin Control Panel","/usr/lib/jvm/java-6-sun-1.6.0.07/bin/ControlPanel","/usr/share/pixmaps/sun-java6.xpm"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Applications_System_Hardware"] = {
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Applications_System_Monitoring"] = {
	{"GKrellM","/usr/bin/gkrellm","/usr/share/pixmaps/gkrellm.xpm"},
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Applications_System_Security"] = {
	{"Sun Java 6 Policy Tool","/usr/lib/jvm/java-6-sun-1.6.0.07/bin/policytool","/usr/share/pixmaps/sun-java6.xpm"},
}
Debian_menu["Debian_Applications_System"] = {
	{ "Administration", Debian_menu["Debian_Applications_System_Administration"] },
	{ "Hardware", Debian_menu["Debian_Applications_System_Hardware"] },
	{ "Monitoring", Debian_menu["Debian_Applications_System_Monitoring"] },
	{ "Security", Debian_menu["Debian_Applications_System_Security"] },
}
Debian_menu["Debian_Applications_Terminal_Emulators"] = {
	{"Eterm","/usr/bin/Eterm"},
	{"Rxvt-Unicode","urxvt","/usr/share/pixmaps/urxvt.xpm"},
	{"Rxvt-Unicode (Black,Xft)","urxvt -fn \"xft:Courier New\" -rv","/usr/share/pixmaps/urxvt.xpm"},
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"X-Terminal as root (GKsu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu-debian.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
}
Debian_menu["Debian_Applications_Tools"] = {
	{"USB View","/usr/bin/usbview"},
}
Debian_menu["Debian_Applications_Video"] = {
	{"luvcview","/usr/bin/luvcview"},
}
Debian_menu["Debian_Applications_Viewers"] = {
	{"Adobe Reader","/usr/bin/acroread","/usr/share/pixmaps/acroread.xpm"},
	{"GQview","/usr/bin/gqview","/usr/share/pixmaps/gqview.xpm"},
	{"MPlayer","/usr/bin/gmplayer","/usr/share/pixmaps/mplayer.xpm"},
	{"Xditview","xditview"},
}
Debian_menu["Debian_Applications"] = {
	{ "Accessibility", Debian_menu["Debian_Applications_Accessibility"] },
	{ "Editors", Debian_menu["Debian_Applications_Editors"] },
	{ "File Management", Debian_menu["Debian_Applications_File_Management"] },
	{ "Graphics", Debian_menu["Debian_Applications_Graphics"] },
	{ "Network", Debian_menu["Debian_Applications_Network"] },
	{ "Programming", Debian_menu["Debian_Applications_Programming"] },
	{ "Science", Debian_menu["Debian_Applications_Science"] },
	{ "Shells", Debian_menu["Debian_Applications_Shells"] },
	{ "Sound", Debian_menu["Debian_Applications_Sound"] },
	{ "System", Debian_menu["Debian_Applications_System"] },
	{ "Terminal Emulators", Debian_menu["Debian_Applications_Terminal_Emulators"] },
	{ "Tools", Debian_menu["Debian_Applications_Tools"] },
	{ "Video", Debian_menu["Debian_Applications_Video"] },
	{ "Viewers", Debian_menu["Debian_Applications_Viewers"] },
}
Debian_menu["Debian_Games_Blocks"] = {
	{"Frozen-Bubble","/usr/games/frozen-bubble","/usr/share/pixmaps/frozen-bubble.xpm"},
}
Debian_menu["Debian_Games_Board_Chess"] = {
	{"Crafty","/usr/games/xboard -fcp /usr/games/crafty"},
}
Debian_menu["Debian_Games_Board_XBoard-ICS"] = {
	{"Chess Net", "x-terminal-emulator -e ".."/usr/games/xboard -ics -icshost chess.net"},
	{"Default", "x-terminal-emulator -e ".."/usr/games/xboard -ics"},
	{"Free I.C.S.", "x-terminal-emulator -e ".."/usr/games/xboard -ics -icshost freechess.org"},
	{"Internet Chess Club", "x-terminal-emulator -e ".."/usr/games/xboard -ics -icshost chessclub.com"},
}
Debian_menu["Debian_Games_Board"] = {
	{ "Chess", Debian_menu["Debian_Games_Board_Chess"] },
	{"XBoard","/usr/games/xboard -xncp"},
	{ "XBoard-ICS", Debian_menu["Debian_Games_Board_XBoard-ICS"] },
	{"XBoard (passive chessboard)","/usr/games/xboard -ncp"},
}
Debian_menu["Debian_Games_Strategy"] = {
	{"FreeCraft","/usr/games/freecraft"},
}
Debian_menu["Debian_Games_Toys"] = {
	{"Oclock","oclock"},
	{"wmMatrix","/usr/bin/wmmatrix","/usr/share/icons/mini/wmMatrix.xpm"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Games"] = {
	{ "Blocks", Debian_menu["Debian_Games_Blocks"] },
	{ "Board", Debian_menu["Debian_Games_Board"] },
	{ "Strategy", Debian_menu["Debian_Games_Strategy"] },
	{ "Toys", Debian_menu["Debian_Games_Toys"] },
}
Debian_menu["Debian_Help"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
	{"Xman","xman"},
}
Debian_menu["Debian_Screen_Lock_Assorted"] = {
	{"Anemone","/usr/bin/xlock -remote -nice 19 -mode anemone"},
	{"Ball","/usr/bin/xlock -remote -nice 19 -mode ball"},
	{"Blot","/usr/bin/xlock -remote -nice 19 -mode blot"},
	{"Bounce","/usr/bin/xlock -remote -nice 19 -mode bounce"},
	{"Bubble","/usr/bin/xlock -remote -nice 19 -mode bubble"},
	{"Clock","/usr/bin/xlock -remote -nice 19 -mode clock"},
	{"Crystal","/usr/bin/xlock -remote -nice 19 -mode crystal"},
	{"Daisy","/usr/bin/xlock -remote -nice 19 -mode daisy"},
	{"Dclock","/usr/bin/xlock -remote -nice 19 -mode dclock"},
	{"Decay","/usr/bin/xlock -remote -nice 19 -mode decay"},
	{"Deco","/usr/bin/xlock -remote -nice 19 -mode deco"},
	{"Deluxe","/usr/bin/xlock -remote -nice 19 -mode deluxe"},
	{"Eyes","/usr/bin/xlock -remote -nice 19 -mode eyes +trackmouse"},
	{"Eyesptr","/usr/bin/xlock -remote -nice 19 -mode eyes -trackmouse"},
	{"Fiberlamp","/usr/bin/xlock -remote -nice 19 -mode fiberlamp"},
	{"Fzort","/usr/bin/xlock -remote -nice 19 -mode fzort"},
	{"Goop","/usr/bin/xlock -remote -nice 19 -mode goop"},
	{"Juggle","/usr/bin/xlock -remote -nice 19 -mode juggle"},
	{"Marquee","/usr/bin/xlock -remote -nice 19 -mode marquee"},
	{"Matrix","/usr/bin/xlock -remote -nice 19 -mode matrix"},
	{"Munch","/usr/bin/xlock -remote -nice 19 -mode munch"},
	{"Nose","/usr/bin/xlock -remote -nice 19 -mode nose"},
	{"Pacman","/usr/bin/xlock -remote -nice 19 -mode pacman"},
	{"Pyro","/usr/bin/xlock -remote -nice 19 -mode pyro +use3d"},
	{"Pyro3d","/usr/bin/xlock -remote -nice 19 -mode pyro -use3d"},
	{"Roll","/usr/bin/xlock -remote -nice 19 -mode roll"},
	{"Slip","/usr/bin/xlock -remote -nice 19 -mode slip"},
	{"Solitare","/usr/bin/xlock -remote -nice 19 -mode solitare +trackmouse"},
	{"Solitareptr","/usr/bin/xlock -remote -nice 19 -mode solitare -trackmouse"},
	{"Starfish","/usr/bin/xlock -remote -nice 19 -mode starfish -install"},
	{"Swarm","/usr/bin/xlock -remote -nice 19 -mode swarm +trackmouse"},
	{"Swarmptr","/usr/bin/xlock -remote -nice 19 -mode swarm -trackmouse"},
	{"Swirl","/usr/bin/xlock -remote -nice 19 -mode swirl -install"},
	{"T3d","/usr/bin/xlock -remote -nice 19 -mode t3d"},
	{"Tetris","/usr/bin/xlock -remote -nice 19 -mode tetris"},
	{"Tube","/usr/bin/xlock -remote -nice 19 -mode tube -install"},
	{"Worm","/usr/bin/xlock -remote -nice 19 -mode worm +use3d"},
	{"Worm3d","/usr/bin/xlock -remote -nice 19 -mode worm -use3d"},
	{"Xcl","/usr/bin/xlock -remote -nice 19 -mode xcl"},
	{"Xjack","/usr/bin/xlock -remote -nice 19 -mode xjack"},
}
Debian_menu["Debian_Screen_Lock_Automata"] = {
	{"Ant","/usr/bin/xlock -remote -nice 19 -mode ant -neighbors 4 +truchet"},
	{"Ant3d","/usr/bin/xlock -remote -nice 19 -mode ant3d"},
	{"Ant Truchet","/usr/bin/xlock -remote -nice 19 -mode ant -neighbors 4 -truchet"},
	{"Bee","/usr/bin/xlock -remote -nice 19 -mode ant -neighbors 6 +truchet"},
	{"Bee Truchet","/usr/bin/xlock -remote -nice 19 -mode ant -neighbors 6 -truchet"},
	{"Bug","/usr/bin/xlock -remote -nice 19 -mode bug"},
	{"Demon","/usr/bin/xlock -remote -nice 19 -mode demon"},
	{"Dilemma","/usr/bin/xlock -remote -nice 19 -mode dilemma"},
	{"Life","/usr/bin/xlock -remote -nice 19 -mode life"},
	{"Life1d","/usr/bin/xlock -remote -nice 19 -mode life1d"},
	{"Life3d","/usr/bin/xlock -remote -nice 19 -mode life3d"},
	{"Life Callahan","/usr/bin/xlock -remote -nice 19 -mode life -callahan -size 7"},
	{"Loop","/usr/bin/xlock -remote -nice 19 -mode loop"},
	{"Petri","/usr/bin/xlock -remote -nice 19 -mode petri"},
	{"Random","/usr/bin/xlock -remote -nice 19 -mode random -modelist allautomata -fullrandom -neighbors 0"},
	{"Voters","/usr/bin/xlock -remote -nice 19 -mode voters"},
	{"Wator","/usr/bin/xlock -remote -nice 19 -mode wator"},
	{"Wire","/usr/bin/xlock -remote -nice 19 -mode wire"},
}
Debian_menu["Debian_Screen_Lock_Fractal"] = {
	{"Coral","/usr/bin/xlock -remote -nice 19 -mode coral"},
	{"Discrete","/usr/bin/xlock -remote -nice 19 -mode discrete"},
	{"Dragon","/usr/bin/xlock -remote -nice 19 -mode dragon"},
	{"Drift","/usr/bin/xlock -remote -nice 19 -mode drift -fullrandom"},
	{"Euler2d","/usr/bin/xlock -remote -nice 19 -mode euler2d"},
	{"Flame","/usr/bin/xlock -remote -nice 19 -mode flame"},
	{"Flow","/usr/bin/xlock -remote -nice 19 -mode flow"},
	{"Forest","/usr/bin/xlock -remote -nice 19 -mode forest"},
	{"Hop","/usr/bin/xlock -remote -nice 19 -mode hop -fullrandom"},
	{"IFS","/usr/bin/xlock -remote -nice 19 -mode ifs"},
	{"Julia","/usr/bin/xlock -remote -nice 19 -mode julia +trackmouse"},
	{"Juliaptr","/usr/bin/xlock -remote -nice 19 -mode julia -trackmouse"},
	{"Kumppa","/usr/bin/xlock -remote -nice 19 -mode kumppa"},
	{"Lightning","/usr/bin/xlock -remote -nice 19 -mode lightning"},
	{"Lyapunov","/usr/bin/xlock -remote -nice 19 -mode lyapunov -install"},
	{"Mandelbrot","/usr/bin/xlock -remote -nice 19 -mode mandelbrot -install"},
	{"Mountain","/usr/bin/xlock -remote -nice 19 -mode mountain"},
	{"Random","/usr/bin/xlock -remote -nice 19 -mode random -modelist allfractal -fullrandom"},
	{"Sierpinski","/usr/bin/xlock -remote -nice 19 -mode sierpinski"},
	{"Strange","/usr/bin/xlock -remote -nice 19 -mode strange"},
	{"Thornbird","/usr/bin/xlock -remote -nice 19 -mode thornbird"},
	{"Triangle","/usr/bin/xlock -remote -nice 19 -mode triangle"},
	{"Turtle","/usr/bin/xlock -remote -nice 19 -mode turtle"},
	{"Vines","/usr/bin/xlock -remote -nice 19 -mode vines"},
}
Debian_menu["Debian_Screen_Lock_Geometry"] = {
	{"Apollonian","/usr/bin/xlock -remote -nice 19 -mode apollonian"},
	{"Braid","/usr/bin/xlock -remote -nice 19 -mode braid"},
	{"Fadeplot","/usr/bin/xlock -remote -nice 19 -mode fadeplot"},
	{"Helix","/usr/bin/xlock -remote -nice 19 -mode helix -fullrandom"},
	{"Hyper","/usr/bin/xlock -remote -nice 19 -mode hyper"},
	{"Ico","/usr/bin/xlock -remote -nice 19 -mode ico"},
	{"Kaleid","/usr/bin/xlock -remote -nice 19 -mode kaleid"},
	{"Laser","/usr/bin/xlock -remote -nice 19 -mode laser"},
	{"Lisa","/usr/bin/xlock -remote -nice 19 -mode lisa"},
	{"Lissie","/usr/bin/xlock -remote -nice 19 -mode lissie"},
	{"Penrose","/usr/bin/xlock -remote -nice 19 -mode penrose +ammann"},
	{"Penrose Ammann","/usr/bin/xlock -remote -nice 19 -mode penrose -ammann"},
	{"Petal","/usr/bin/xlock -remote -nice 19 -mode petal"},
	{"Polyominoes","/usr/bin/xlock -remote -nice 19 -mode polyominoes"},
	{"Qix","/usr/bin/xlock -remote -nice 19 -mode qix +complete"},
	{"Qix complete","/usr/bin/xlock -remote -nice 19 -mode qix -complete"},
	{"Random","/usr/bin/xlock -remote -nice 19 -mode random -modelist allgeometry -fullrandom"},
	{"Rotor","/usr/bin/xlock -remote -nice 19 -mode rotor"},
	{"Shape","/usr/bin/xlock -remote -nice 19 -mode shape"},
	{"Sphere","/usr/bin/xlock -remote -nice 19 -mode sphere"},
	{"Spiral","/usr/bin/xlock -remote -nice 19 -mode spiral"},
	{"Spline","/usr/bin/xlock -remote -nice 19 -mode spline"},
	{"Tik_Tak","/usr/bin/xlock -remote -nice 19 -mode tik_tak"},
	{"Toneclock","/usr/bin/xlock -remote -nice 19 -mode toneclock"},
}
Debian_menu["Debian_Screen_Lock_GLmodes"] = {
	{"Atlantis","/usr/bin/xlock -remote -nice 19 -mode atlantis"},
	{"Atunnels","/usr/bin/xlock -remote -nice 19 -mode atunnels"},
	{"Biof","/usr/bin/xlock -remote -nice 19 -mode biof"},
	{"Bubble3d","/usr/bin/xlock -remote -nice 19 -mode bubble3d"},
	{"Cage","/usr/bin/xlock -remote -nice 19 -mode cage"},
	{"Fire","/usr/bin/xlock -remote -nice 19 -mode fire"},
	{"Gears","/usr/bin/xlock -remote -nice 19 -mode gears"},
	{"GL-Planet","/usr/bin/xlock -remote -nice 19 -mode glplanet"},
	{"Invert","/usr/bin/xlock -remote -nice 19 -mode invert"},
	{"Lament","/usr/bin/xlock -remote -nice 19 -mode lament"},
	{"Moebius","/usr/bin/xlock -remote -nice 19 -mode moebius"},
	{"Molecule","/usr/bin/xlock -remote -nice 19 -mode molecule"},
	{"Morph3d","/usr/bin/xlock -remote -nice 19 -mode morph3d"},
	{"Noof","/usr/bin/xlock -remote -nice 19 -mode noof"},
	{"Pipes","/usr/bin/xlock -remote -nice 19 -mode pipes"},
	{"Random","/usr/bin/xlock -remote -nice 19 -mode random -modelist allgl -fullrandom"},
	{"Rubik","/usr/bin/xlock -remote -nice 19 -mode rubik"},
	{"Sballs","/usr/bin/xlock -remote -nice 19 -mode sballs"},
	{"Sierpinski3d","/usr/bin/xlock -remote -nice 19 -mode sierpinski3d"},
	{"Sproingies","/usr/bin/xlock -remote -nice 19 -mode sproingies"},
	{"Stairs","/usr/bin/xlock -remote -nice 19 -mode stairs"},
	{"Superquadrics","/usr/bin/xlock -remote -nice 19 -mode superquadrics"},
	{"Text3d","/usr/bin/xlock -remote -nice 19 -mode text3d -message \"$LOGNAME\""},
}
Debian_menu["Debian_Screen_Lock_MarqueeMessage"] = {
	{"Back Soon","/usr/bin/xlock -remote -nice 19 -mode marquee -message \"$LOGNAME will be back soon.\""},
	{"Overnight","/usr/bin/xlock -remote -nice 19 -mode marquee -message \"$LOGNAME will be back in the morning.\""},
	{"Rude","/usr/bin/xlock -remote -nice 19 -mode marquee -message \"$LOGNAME not here, please go away!\""},
}
Debian_menu["Debian_Screen_Lock_NoseMessage"] = {
	{"Back Soon","/usr/bin/xlock -remote -nice 19 -mode nose -message \"$LOGNAME will be back soon.\""},
	{"Overnight","/usr/bin/xlock -remote -nice 19 -mode nose -message \"$LOGNAME will be back in the morning.\""},
	{"Rude","/usr/bin/xlock -remote -nice 19 -mode nose -message \"$LOGNAME not here, please go away!\""},
}
Debian_menu["Debian_Screen_Lock_Space"] = {
	{"Bouboule","/usr/bin/xlock -remote -nice 19 -mode bouboule +use3d"},
	{"Bouboule3d","/usr/bin/xlock -remote -nice 19 -mode bouboule -use3d"},
	{"Galaxy","/usr/bin/xlock -remote -nice 19 -mode galaxy"},
	{"Grav","/usr/bin/xlock -remote -nice 19 -mode grav +trail +decay"},
	{"Grav Decay","/usr/bin/xlock -remote -nice 19 -mode grav -decay"},
	{"Grav Trail","/usr/bin/xlock -remote -nice 19 -mode grav -trail"},
	{"Random Space","/usr/bin/xlock -remote -nice 19 -mode random -modelist allspace"},
	{"Rock","/usr/bin/xlock -remote -nice 19 -mode star -rock"},
	{"Space","/usr/bin/xlock -remote -nice 19 -mode space"},
	{"Star","/usr/bin/xlock -remote -nice 19 -mode star +rock +use3d +trek 0"},
	{"Star3d","/usr/bin/xlock -remote -nice 19 -mode star -use3d"},
	{"Star Trek","/usr/bin/xlock -remote -nice 19 -mode star -trek 100"},
	{"World","/usr/bin/xlock -remote -nice 19 -mode world"},
}
Debian_menu["Debian_Screen_Lock_Special"] = {
	{"Blank","/usr/bin/xlock -remote -nice 19 -mode blank"},
	{"Bomb","/usr/bin/xlock -remote -nice 19 -mode bomb"},
	{"Random 3d","/usr/bin/xlock -remote -nice 19 -mode random -modelist all3d -use3d -fullrandom"},
	{"Random all","/usr/bin/xlock -remote -nice 19 -mode random -modelist all -fullrandom -neighbors 0"},
	{"Random nice","/usr/bin/xlock -remote -nice 19 -mode random -modelist allnice -fullrandom -neighbors 0"},
	{"Random ptr","/usr/bin/xlock -remote -nice 19 -mode random -modelist allmouse -trackmouse -fullrandom"},
	{"Random standard","/usr/bin/xlock -remote -nice 19 -mode random -modelist all-allgl -fullrandom -neighbors 0"},
	{"Random write","/usr/bin/xlock -remote -nice 19 -mode random -modelist allwrite -install -fullrandom"},
	{"Transparent","/usr/bin/xlock -remote -nice 19 -mode blank -geometry 1x1 -enablesaver"},
}
Debian_menu["Debian_Screen_Lock_XjackMessage"] = {
	{"Crazy Boy","/usr/bin/xlock -remote -nice 19 -mode xjack -message \"All work and no play makes $LOGNAME a dull boy.\""},
	{"Crazy Girl","/usr/bin/xlock -remote -nice 19 -mode xjack -message \"All work and no play makes $LOGNAME a dull girl.\""},
}
Debian_menu["Debian_Screen_Lock_XPM"] = {
	{"Bat","/usr/bin/xlock -remote -nice 19 -mode bat"},
	{"Flag","/usr/bin/xlock -remote -nice 19 -mode flag"},
	{"Image","/usr/bin/xlock -remote -nice 19 -mode image"},
	{"Life","/usr/bin/xlock -remote -nice 19 -mode life"},
	{"Life1d","/usr/bin/xlock -remote -nice 19 -mode life1d"},
	{"Maze","/usr/bin/xlock -remote -nice 19 -mode maze"},
	{"Puzzle","/usr/bin/xlock -remote -nice 19 -mode puzzle"},
	{"Random","/usr/bin/xlock -remote -nice 19 -mode random -modelist allxpm -fullrandom"},
}
Debian_menu["Debian_Screen_Lock"] = {
	{ "Assorted", Debian_menu["Debian_Screen_Lock_Assorted"] },
	{ "Automata", Debian_menu["Debian_Screen_Lock_Automata"] },
	{ "Fractal", Debian_menu["Debian_Screen_Lock_Fractal"] },
	{ "Geometry", Debian_menu["Debian_Screen_Lock_Geometry"] },
	{ "GLmodes", Debian_menu["Debian_Screen_Lock_GLmodes"] },
	{ "MarqueeMessage", Debian_menu["Debian_Screen_Lock_MarqueeMessage"] },
	{ "NoseMessage", Debian_menu["Debian_Screen_Lock_NoseMessage"] },
	{ "Space", Debian_menu["Debian_Screen_Lock_Space"] },
	{ "Special", Debian_menu["Debian_Screen_Lock_Special"] },
	{ "XjackMessage", Debian_menu["Debian_Screen_Lock_XjackMessage"] },
	{ "XPM", Debian_menu["Debian_Screen_Lock_XPM"] },
}
Debian_menu["Debian_Screen_Save_Assorted"] = {
	{"Anemone","/usr/bin/xlock -remote -nice 19 -nolock -mode anemone"},
	{"Ball","/usr/bin/xlock -remote -nice 19 -nolock -mode ball"},
	{"Blot","/usr/bin/xlock -remote -nice 19 -nolock -mode blot"},
	{"Bounce","/usr/bin/xlock -remote -nice 19 -nolock -mode bounce"},
	{"Bubble","/usr/bin/xlock -remote -nice 19 -nolock -mode bubble"},
	{"Clock","/usr/bin/xlock -remote -nice 19 -nolock -mode clock"},
	{"Crystal","/usr/bin/xlock -remote -nice 19 -nolock -mode crystal"},
	{"Daisy","/usr/bin/xlock -remote -nice 19 -nolock -mode daisy"},
	{"Dclock","/usr/bin/xlock -remote -nice 19 -nolock -mode dclock"},
	{"Decay","/usr/bin/xlock -remote -nice 19 -nolock -mode decay"},
	{"Deco","/usr/bin/xlock -remote -nice 19 -nolock -mode deco"},
	{"Deluxe","/usr/bin/xlock -remote -nice 19 -nolock -mode deluxe"},
	{"Eyes","/usr/bin/xlock -remote -nice 19 -nolock -mode eyes +trackmouse"},
	{"Eyesptr","/usr/bin/xlock -remote -nice 19 -nolock -mode eyes -trackmouse"},
	{"Fiberlamp","/usr/bin/xlock -remote -nice 19 -nolock -mode fiberlamp"},
	{"Fzort","/usr/bin/xlock -remote -nice 19 -nolock -mode fzort"},
	{"Goop","/usr/bin/xlock -remote -nice 19 -nolock -mode goop"},
	{"Juggle","/usr/bin/xlock -remote -nice 19 -nolock -mode juggle"},
	{"Marquee","/usr/bin/xlock -remote -nice 19 -nolock -mode marquee"},
	{"Matrix","/usr/bin/xlock -remote -nice 19 -nolock -mode matrix"},
	{"Munch","/usr/bin/xlock -remote -nice 19 -nolock -mode munch"},
	{"Nose","/usr/bin/xlock -remote -nice 19 -nolock -mode nose"},
	{"Pacman","/usr/bin/xlock -remote -nice 19 -nolock -mode pacman"},
	{"Pyro","/usr/bin/xlock -remote -nice 19 -nolock -mode pyro +use3d"},
	{"Pyro3d","/usr/bin/xlock -remote -nice 19 -nolock -mode pyro -use3d"},
	{"Roll","/usr/bin/xlock -remote -nice 19 -nolock -mode roll"},
	{"Slip","/usr/bin/xlock -remote -nice 19 -nolock -mode slip"},
	{"Solitare","/usr/bin/xlock -remote -nice 19 -nolock -mode solitare +trackmouse"},
	{"Solitareptr","/usr/bin/xlock -remote -nice 19 -nolock -mode solitare -trackmouse"},
	{"Starfish","/usr/bin/xlock -remote -nice 19 -nolock -mode starfish -install"},
	{"Swarm","/usr/bin/xlock -remote -nice 19 -nolock -mode swarm +trackmouse"},
	{"Swarmptr","/usr/bin/xlock -remote -nice 19 -nolock -mode swarm -trackmouse"},
	{"Swirl","/usr/bin/xlock -remote -nice 19 -nolock -mode swirl -install"},
	{"T3d","/usr/bin/xlock -remote -nice 19 -nolock -mode t3d"},
	{"Tetris","/usr/bin/xlock -remote -nice 19 -nolock -mode tetris"},
	{"Tube","/usr/bin/xlock -remote -nice 19 -nolock -mode tube -install"},
	{"Worm","/usr/bin/xlock -remote -nice 19 -nolock -mode worm +use3d"},
	{"Worm3d","/usr/bin/xlock -remote -nice 19 -nolock -mode worm -use3d"},
	{"Xcl","/usr/bin/xlock -remote -nice 19 -nolock -mode xcl"},
	{"Xjack","/usr/bin/xlock -remote -nice 19 -nolock -mode xjack"},
}
Debian_menu["Debian_Screen_Save_Automata"] = {
	{"Ant","/usr/bin/xlock -remote -nice 19 -nolock -mode ant -neighbors 4 +truchet"},
	{"Ant3d","/usr/bin/xlock -remote -nice 19 -nolock -mode ant3d"},
	{"Ant Truchet","/usr/bin/xlock -remote -nice 19 -nolock -mode ant -neighbors 4 -truchet"},
	{"Bee","/usr/bin/xlock -remote -nice 19 -nolock -mode ant -neighbors 6 +truchet"},
	{"Bee Truchet","/usr/bin/xlock -remote -nice 19 -nolock -mode ant -neighbors 6 -truchet"},
	{"Bug","/usr/bin/xlock -remote -nice 19 -nolock -mode bug"},
	{"Demon","/usr/bin/xlock -remote -nice 19 -nolock -mode demon"},
	{"Dilemma","/usr/bin/xlock -remote -nice 19 -nolock -mode dilemma"},
	{"Life","/usr/bin/xlock -remote -nice 19 -nolock -mode life"},
	{"Life1d","/usr/bin/xlock -remote -nice 19 -nolock -mode life1d"},
	{"Life3d","/usr/bin/xlock -remote -nice 19 -nolock -mode life3d"},
	{"Life Callahan","/usr/bin/xlock -remote -nice 19 -nolock -mode life -callahan -size 7"},
	{"Loop","/usr/bin/xlock -remote -nice 19 -nolock -mode loop"},
	{"Petri","/usr/bin/xlock -remote -nice 19 -nolock -mode petri"},
	{"Random","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist allautomata -fullrandom -neighbors 0"},
	{"Voters","/usr/bin/xlock -remote -nice 19 -nolock -mode voters"},
	{"Wator","/usr/bin/xlock -remote -nice 19 -nolock -mode wator"},
	{"Wire","/usr/bin/xlock -remote -nice 19 -nolock -mode wire"},
}
Debian_menu["Debian_Screen_Save_Fractal"] = {
	{"Coral","/usr/bin/xlock -remote -nice 19 -nolock -mode coral"},
	{"Discrete","/usr/bin/xlock -remote -nice 19 -nolock -mode discrete"},
	{"Dragon","/usr/bin/xlock -remote -nice 19 -nolock -mode dragon"},
	{"Drift","/usr/bin/xlock -remote -nice 19 -nolock -mode drift -fullrandom"},
	{"Euler2d","/usr/bin/xlock -remote -nice 19 -nolock -mode euler2d"},
	{"Flame","/usr/bin/xlock -remote -nice 19 -nolock -mode flame"},
	{"Flow","/usr/bin/xlock -remote -nice 19 -nolock -mode flow"},
	{"Forest","/usr/bin/xlock -remote -nice 19 -nolock -mode forest"},
	{"Hop","/usr/bin/xlock -remote -nice 19 -nolock -mode hop -fullrandom"},
	{"IFS","/usr/bin/xlock -remote -nice 19 -nolock -mode ifs"},
	{"Julia","/usr/bin/xlock -remote -nice 19 -nolock -mode julia +trackmouse"},
	{"Juliaptr","/usr/bin/xlock -remote -nice 19 -nolock -mode julia -trackmouse"},
	{"Kumppa","/usr/bin/xlock -remote -nice 19 -nolock -mode kumppa"},
	{"Lightning","/usr/bin/xlock -remote -nice 19 -nolock -mode lightning"},
	{"Lyapunov","/usr/bin/xlock -remote -nice 19 -nolock -mode lyapunov -install"},
	{"Mandelbrot","/usr/bin/xlock -remote -nice 19 -nolock -mode mandelbrot -install"},
	{"Mountain","/usr/bin/xlock -remote -nice 19 -nolock -mode mountain"},
	{"Random","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist allfractal -fullrandom"},
	{"Sierpinski","/usr/bin/xlock -remote -nice 19 -nolock -mode sierpinski"},
	{"Strange","/usr/bin/xlock -remote -nice 19 -nolock -mode strange"},
	{"Thornbird","/usr/bin/xlock -remote -nice 19 -nolock -mode thornbird"},
	{"Triangle","/usr/bin/xlock -remote -nice 19 -nolock -mode triangle"},
	{"Turtle","/usr/bin/xlock -remote -nice 19 -nolock -mode turtle"},
	{"Vines","/usr/bin/xlock -remote -nice 19 -nolock -mode vines"},
}
Debian_menu["Debian_Screen_Save_Geometry"] = {
	{"Apollonian","/usr/bin/xlock -remote -nice 19 -nolock -mode apollonian"},
	{"Braid","/usr/bin/xlock -remote -nice 19 -nolock -mode braid"},
	{"Fadeplot","/usr/bin/xlock -remote -nice 19 -nolock -mode fadeplot"},
	{"Helix","/usr/bin/xlock -remote -nice 19 -nolock -mode helix -fullrandom"},
	{"Hyper","/usr/bin/xlock -remote -nice 19 -nolock -mode hyper"},
	{"Ico","/usr/bin/xlock -remote -nice 19 -nolock -mode ico"},
	{"Kaleid","/usr/bin/xlock -remote -nice 19 -nolock -mode kaleid"},
	{"Laser","/usr/bin/xlock -remote -nice 19 -nolock -mode laser"},
	{"Lisa","/usr/bin/xlock -remote -nice 19 -nolock -mode lisa"},
	{"Lissie","/usr/bin/xlock -remote -nice 19 -nolock -mode lissie"},
	{"Penrose","/usr/bin/xlock -remote -nice 19 -nolock -mode penrose +ammann"},
	{"Penrose Ammann","/usr/bin/xlock -remote -nice 19 -nolock -mode penrose -ammann"},
	{"Petal","/usr/bin/xlock -remote -nice 19 -nolock -mode petal"},
	{"Polyominoes","/usr/bin/xlock -remote -nice 19 -nolock -mode polyominoes"},
	{"Qix","/usr/bin/xlock -remote -nice 19 -nolock -mode qix +complete"},
	{"Qix complete","/usr/bin/xlock -remote -nice 19 -nolock -mode qix -complete"},
	{"Random","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist allgeometry"},
	{"Rotor","/usr/bin/xlock -remote -nice 19 -nolock -mode rotor"},
	{"Shape","/usr/bin/xlock -remote -nice 19 -nolock -mode shape"},
	{"Sphere","/usr/bin/xlock -remote -nice 19 -nolock -mode sphere"},
	{"Spiral","/usr/bin/xlock -remote -nice 19 -nolock -mode spiral"},
	{"Spline","/usr/bin/xlock -remote -nice 19 -nolock -mode spline"},
	{"Tik_Tak","/usr/bin/xlock -remote -nice 19 -nolock -mode tik_tak"},
	{"Toneclock","/usr/bin/xlock -remote -nice 19 -nolock -mode toneclock"},
}
Debian_menu["Debian_Screen_Save_GLmodes"] = {
	{"Atlantis","/usr/bin/xlock -remote -nice 19 -nolock -mode atlantis"},
	{"Atunnels","/usr/bin/xlock -remote -nice 19 -nolock -mode atunnels"},
	{"Biof","/usr/bin/xlock -remote -nice 19 -nolock -mode biof"},
	{"Bubble3d","/usr/bin/xlock -remote -nice 19 -nolock -mode bubble3d"},
	{"Cage","/usr/bin/xlock -remote -nice 19 -nolock -mode cage"},
	{"Fire","/usr/bin/xlock -remote -nice 19 -nolock -mode fire"},
	{"Gears","/usr/bin/xlock -remote -nice 19 -nolock -mode gears"},
	{"GL-Planet","/usr/bin/xlock -remote -nice 19 -nolock -mode glplanet"},
	{"Lament","/usr/bin/xlock -remote -nice 19 -nolock -mode lament"},
	{"Moebius","/usr/bin/xlock -remote -nice 19 -nolock -mode moebius"},
	{"Molecule","/usr/bin/xlock -remote -nice 19 -nolock -mode molecule"},
	{"Morph3d","/usr/bin/xlock -remote -nice 19 -nolock -mode morph3d"},
	{"Noof","/usr/bin/xlock -remote -nice 19 -nolock -mode noof"},
	{"Pipes","/usr/bin/xlock -remote -nice 19 -nolock -mode pipes"},
	{"Random","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist allgl -fullrandom"},
	{"Rubik","/usr/bin/xlock -remote -nice 19 -nolock -mode rubik"},
	{"Sballs","/usr/bin/xlock -remote -nice 19 -nolock -mode sballs"},
	{"Sierpinski3d","/usr/bin/xlock -remote -nice 19 -nolock -mode sierpinski3d"},
	{"Sproingies","/usr/bin/xlock -remote -nice 19 -nolock -mode sproingies"},
	{"Stairs","/usr/bin/xlock -remote -nice 19 -nolock -mode stairs"},
	{"Superquadrics","/usr/bin/xlock -remote -nice 19 -nolock -mode superquadrics"},
	{"Text3d","/usr/bin/xlock -remote -nice 19 -nolock -mode text3d -message \"$LOGNAME\""},
}
Debian_menu["Debian_Screen_Save_MarqueeMessage"] = {
	{"Available","/usr/bin/xlock -remote -nice 19 -nolock -mode marquee -message \"Hey, I'm available now!\""},
	{"Brilliant!","/usr/bin/xlock -remote -nice 19 -nolock -mode marquee -message \"WOW! $LOGNAME, You're Brilliant!\""},
	{"Love You","/usr/bin/xlock -remote -nice 19 -nolock -mode marquee -message \"You know, I Love You $LOGNAME.\""},
}
Debian_menu["Debian_Screen_Save_NoseMessage"] = {
	{"Available","/usr/bin/xlock -remote -nice 19 -nolock -mode nose -message \"Hey, I'm available now!\""},
	{"Brilliant!","/usr/bin/xlock -remote -nice 19 -nolock -mode nose -message \"WOW! $LOGNAME, You're Brilliant!\""},
	{"Love You","/usr/bin/xlock -remote -nice 19 -nolock -mode nose -message \"You know, I Love You $LOGNAME.\""},
}
Debian_menu["Debian_Screen_Save_Space"] = {
	{"Bouboule","/usr/bin/xlock -remote -nice 19 -nolock -mode bouboule +use3d"},
	{"Bouboule3d","/usr/bin/xlock -remote -nice 19 -nolock -mode bouboule -use3d"},
	{"Galaxy","/usr/bin/xlock -remote -nice 19 -nolock -mode galaxy"},
	{"Grav","/usr/bin/xlock -remote -nice 19 -nolock -mode grav +trail +decay"},
	{"Grav Decay","/usr/bin/xlock -remote -nice 19 -nolock -mode grav -decay"},
	{"Grav Trail","/usr/bin/xlock -remote -nice 19 -nolock -mode grav -trail"},
	{"Random Space","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist allspace"},
	{"Rock","/usr/bin/xlock -remote -nice 19 -nolock -mode star -rock"},
	{"Scooter","/usr/bin/xlock -remote -nice 19 -nolock -mode scooter"},
	{"Space","/usr/bin/xlock -remote -nice 19 -nolock -mode space"},
	{"Star","/usr/bin/xlock -remote -nice 19 -nolock -mode star +rock +use3d +trek 0"},
	{"Star3d","/usr/bin/xlock -remote -nice 19 -nolock -mode star -use3d"},
	{"Star Trek","/usr/bin/xlock -remote -nice 19 -nolock -mode star -trek 100"},
	{"World","/usr/bin/xlock -remote -nice 19 -nolock -mode world"},
}
Debian_menu["Debian_Screen_Save_Special"] = {
	{"Blank","/usr/bin/xlock -remote -nice 19 -nolock -mode blank"},
	{"Bomb","/usr/bin/xlock -remote -nice 19 -nolock -mode bomb"},
	{"Random 3d","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist all3d -use3d -fullrandom"},
	{"Random all","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist all -fullrandom -neighbors 0"},
	{"Random nice","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist allnice -fullrandom -neighbors 0"},
	{"Random ptr","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist allmouse -trackmouse -fullrandom"},
	{"Random standard","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist all-allgl -fullrandom -neighbors 0"},
	{"Random write","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist allwrite -fullrandom"},
}
Debian_menu["Debian_Screen_Save_XPM"] = {
	{"Bat","/usr/bin/xlock -remote -nice 19 -nolock -mode bat"},
	{"Flag","/usr/bin/xlock -remote -nice 19 -nolock -mode flag"},
	{"Image","/usr/bin/xlock -remote -nice 19 -nolock -mode image"},
	{"Life","/usr/bin/xlock -remote -nice 19 -nolock -mode life"},
	{"Life1d","/usr/bin/xlock -remote -nice 19 -nolock -mode life1d"},
	{"Maze","/usr/bin/xlock -remote -nice 19 -nolock -mode maze"},
	{"Puzzle","/usr/bin/xlock -remote -nice 19 -nolock -mode puzzle"},
	{"Random","/usr/bin/xlock -remote -nice 19 -nolock -mode random -modelist allxpm -fullrandom"},
}
Debian_menu["Debian_Screen_Save"] = {
	{ "Assorted", Debian_menu["Debian_Screen_Save_Assorted"] },
	{ "Automata", Debian_menu["Debian_Screen_Save_Automata"] },
	{ "Fractal", Debian_menu["Debian_Screen_Save_Fractal"] },
	{ "Geometry", Debian_menu["Debian_Screen_Save_Geometry"] },
	{ "GLmodes", Debian_menu["Debian_Screen_Save_GLmodes"] },
	{ "MarqueeMessage", Debian_menu["Debian_Screen_Save_MarqueeMessage"] },
	{ "NoseMessage", Debian_menu["Debian_Screen_Save_NoseMessage"] },
	{ "Space", Debian_menu["Debian_Screen_Save_Space"] },
	{ "Special", Debian_menu["Debian_Screen_Save_Special"] },
	{ "XPM", Debian_menu["Debian_Screen_Save_XPM"] },
}
Debian_menu["Debian_Screen"] = {
	{ "Lock", Debian_menu["Debian_Screen_Lock"] },
	{ "Save", Debian_menu["Debian_Screen_Save"] },
}
Debian_menu["Debian"] = {
	{ "Applications", Debian_menu["Debian_Applications"] },
	{ "Games", Debian_menu["Debian_Games"] },
	{ "Help", Debian_menu["Debian_Help"] },
	{ "Screen", Debian_menu["Debian_Screen"] },
}
