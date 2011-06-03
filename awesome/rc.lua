-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")
-- Theme handling library
require("beautiful")
-- Notification library
require("naughty")
require("shifty")
require("wicked")
require("obvious.popup_run_prompt")
require("vicious")

-- Load Debian menu entries
require("debian.menu")

-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
beautiful.init("/home/ash/.config/awesome/theme.lua")

-- This is used later as the default terminal and editor to run.
terminal = "urxvt -name defurxvt" -- XXX
editor = os.getenv("EDITOR") or "editor"
editor_cmd = terminal .. " -e " .. editor
lock = "xlock -mode life"

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"
amodkey = "Mod5"

-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
{
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.spiral,
    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier,
    awful.layout.suit.floating,
}
-- }}}

--use_titlebar = true

-- {{{ Tags
-- Define a tag table which hold all screen tags.
--[[ shifty takes care of those
tags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag({ 1, 2, 3, 4, 5, 6, 7, 8, 9 }, s, layouts[1])
end
-- }}}
]]--

-- {{{ Menu
-- Create a laucher widget and a main menu
myawesomemenu = {
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua" },
   { "restart", awesome.restart },
   { "quit", awesome.quit }
}

mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "Debian", debian.menu.Debian_menu.Debian },
                                    { "open terminal", terminal }
                                  }
                        })

mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
                                     menu = mymainmenu })
-- }}}

-- {{{ Wibox
-- Create a textclock widget
mytextclock = awful.widget.textclock({ align = "right" })

-- Create a systray
mysystray = widget({ type = "systray", align = "right" })

mycpu = widget({
		       type = 'textbox',
		       name = 'cpuwidget',
	       })
wicked.register(mycpu, wicked.widgets.cpu, ' <span>CPU:</span> $1%')

mybat = widget({
		       type = 'textbox',
		       name = 'batwidget',
	       })
vicious.register(mybat, vicious.widgets.bat, '<span>[BAT $2% $3 left $1]</span>', 10, "BAT1")

mocp = widget({ type = 'textbox', name = 'mocp' })
wicked.register(mocp, wicked.widgets.mocp, '<span>MOC:</span> $1')

obvious.popup_run_prompt.set_position("top")
obvious.popup_run_prompt.set_prompt_string("Run: ")
obvious.popup_run_prompt.set_slide(true)
obvious.popup_run_prompt.set_prompt_font("Droid Sans Mono 14")
obvious.popup_run_prompt.set_border_width(4)
obvious.popup_run_prompt.set_height(30)

-- Create a wibox for each screen and add it
mywibox = {}
mywiboxx = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1, awful.client.movetotag),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, awful.client.toggletag),
                    awful.button({ }, 4, awful.tag.viewnext),
                    awful.button({ }, 5, awful.tag.viewprev)
                    )
shifty.taglist = mytaglist
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
                     awful.button({ }, 1, function (c)
                                              if not c:isvisible() then
                                                  awful.tag.viewonly(c:tags()[1])
                                              end
                                              client.focus = c
                                              c:raise()
                                          end),
                     awful.button({ }, 3, function ()
                                              if instance then
                                                  instance:hide()
                                                  instance = nil
                                              else
                                                  instance = awful.menu.clients({ width=250 })
                                              end
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                              if client.focus then client.focus:raise() end
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                              if client.focus then client.focus:raise() end
                                          end))

for s = 1, screen.count() do
    -- Create a promptbox for each screen
    mypromptbox[s] = awful.widget.prompt({ layout = awful.widget.layout.horizontal.leftright })
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                           awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    -- Create a taglist widget
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all, mytaglist.buttons)

    -- Create a tasklist widget
    mytasklist[s] = awful.widget.tasklist(function(c)
                                              return awful.widget.tasklist.label.currenttags(c, s)
                                          end, mytasklist.buttons)

    -- Create the wibox
    mywibox[s] = awful.wibox({ position = "top", screen = s })
    mywiboxx[s] = awful.wibox({ position = "bottom", screen = s })
    -- Add widgets to the wibox - order matters
    mywibox[s].widgets = {
        {
            mylauncher,
            layout = awful.widget.layout.horizontal.leftright
        },
        mylayoutbox[s],
        mytasklist[s],
        layout = awful.widget.layout.horizontal.rightleft,
    }
    mywiboxx[s].widgets = {
	    mytaglist[s],
            mypromptbox[s],
	    {
		    mytextclock,
		    mycpu,
		    mybat,
		    s == 1 and mysystray or nil,
		    s == 1 and mocp or nil,
		    layout = awful.widget.layout.horizontal.rightleft
	    },
	    layout = awful.widget.layout.horizontal.leftright,
    }
end
-- }}}

-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Key bindings
globalkeys = awful.util.table.join(
    awful.key({ modkey,           }, "Left",   awful.tag.viewprev       ),
    awful.key({ modkey,           }, "Right",  awful.tag.viewnext       ),
    awful.key({ amodkey,          }, ",",      awful.tag.viewprev       ),
    awful.key({ amodkey,          }, ".",      awful.tag.viewnext       ),
    awful.key({ modkey,           }, "Escape", awful.tag.history.restore),

    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ amodkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ amodkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "w", function () mymainmenu:show(true)        end),

    -- Layout manipulation
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end),
    awful.key({ amodkey, }, "'", function () awful.client.swap.byidx(  1)    end),
    awful.key({ amodkey, }, "a", function () awful.client.swap.byidx( -1)    end),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto),
    awful.key({ modkey,           }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end),

    -- Standard program
    awful.key({ amodkey           }, "Delete", function () awful.util.spawn(lock) end),
    awful.key({ modkey,           }, "F2", function () awful.util.spawn(terminal) end),
    awful.key({ modkey,           }, "F11", function () awful.util.spawn(terminal .. " -e alsamixer") end),
    awful.key({ modkey,           }, "F12", function () awful.util.spawn(terminal .. " -e htop") end),
    awful.key({                   }, "XF86AudioPlay", function () awful.util.spawn("mocp -G") end),
    awful.key({                   }, "XF86Forward", function () awful.util.spawn("mocp -f") end),
    awful.key({                   }, "XF86Back", function () awful.util.spawn("mocp -r") end),
    awful.key({                   }, "XF86AudioRaiseVolume", function () awful.util.spawn("mocp -v +5") end),
    awful.key({                   }, "XF86AudioLowerVolume", function () awful.util.spawn("mocp -v -5") end),
    awful.key({ "Shift"           }, "XF86AudioRaiseVolume", function () awful.util.spawn("mocp -v +10") end),
    awful.key({ "Shift"           }, "XF86AudioLowerVolume", function () awful.util.spawn("mocp -v -10") end),
    awful.key({ modkey, "Control" }, "r", awesome.restart),
    awful.key({ modkey, "Shift"   }, "q", awesome.quit),

    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)    end),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)    end),
    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1)      end),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1)      end),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1)         end),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1)         end),
    awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(layouts, -1) end),

    -- Prompt
    --awful.key({ modkey },            "F3",     function () mypromptbox[mouse.screen]:run() end),
    awful.key({ modkey },            "F3",     obvious.popup_run_prompt.run_prompt),

    awful.key({ modkey }, "x",
              function ()
                  awful.prompt.run({ prompt = "Run Lua code: " },
                  mypromptbox[mouse.screen].widget,
                  awful.util.eval, nil,
                  awful.util.getdir("cache") .. "/history_eval")
              end)
)

clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ amodkey,          }, "t",      function (c) c.ontop = not c.ontop end),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
    awful.key({ amodkey, "Control" }, "space",  awful.client.floating.delete                    ),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ amodkey,          }, "space",  function (c) c:focus(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey, "Shift"   }, "r",      function (c) c:redraw()                       end),
    awful.key({ modkey,           }, "n",      function (c) c.minimized = not c.minimized    end),
    awful.key({ modkey            }, "t", awful.client.togglemarked),
    awful.key({ modkey,           }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end)
)

clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize))

shifty.config.tags = {
       ["1:chat"] = {
               persist = true,
               position = 1,
               screen = 1,
               nmaster = 3,
               layout = awful.layout.suit.tile.bottom,
               mwfact = 0.6
       },
       ["2:www"]  = {
               exclusive = true,
               screen = 1,
               position = 2,
               spawn = "iceweasel",
               layout = awful.layout.suit.tile.max,
       },
       ["3:work"] = {
               persist = true,
               position = 3,
               screen = 2,
               layout = awful.layout.suit.tile.bottom,
               nmaster = 2,
               ncol = 2,
               mwfact = 0.58
       },
       ["4:scr"] = {
               layout = awful.layout.suit.max,
               screen = 1,
               position = 4
       },
       ["5:miscfs"] = {
               layout = awful.layout.suit.max,
               screen = 2,
               position = 5,
               leave_kills = true
       },
       ["6:misc"] = {
               init = true,
               position = 6,
               screen = 1,
               mwfact = 0.80,
               layout = awful.layout.suit.tile.bottom,
               leave_kills = true
       },
       ["7:test"] = {
               init = true,
               position = 7,
               screen = 1,
               mwfact = 0.80,
               layout = awful.layout.suit.max
       },
       ["p2p"] = { icon = "/usr/share/pixmaps/p2p.png", icon_only = true,               },
       ["gimp"] = { layout = "tile", mwfact = 0.18, icon="/usr/share/pixmaps/gimp.png",  },
}

shifty.config.apps = {
        {
		match = {
			"htop",
			"alsamixer",
		},
		--tag = { "6:misc" },
		ontop = true,
		float = true,
		geometry = { 40, 40, 900, 600, },
	},
	{
		match = { "gkrellm" },
		tag = "1:chat",
		skip_taskbar = true,
		float = true,
		ontop = true,
		sticky = true,
		nofocus = true,
		focusable = false,
		slave = true,
		opacity = 0.3,
	},
        {
		match = {
			"Iceweasel.*",
			"Firefox.*",
			"SeaMonkey.*",
			"acroread.*",
			"Minefield.*",
		},
		tag = "2:www",
	},
        { match = {"Links.*", "links.*" }, tag = "7:test", },
	{
		match = {
			"XClock",
			"XOsview",
			"xconsole"
		},
		tag = { "6:misc", "1:chat", "2:www" },
		nofocus = true,
		slave = yes,
	},
	{
		match = {
			"Evince.*",
			"acroread.*",
			"screen: serial.*"
		},
		tag = "4:scr",
	},
	{
		match = { "qjackctl", },
		tag = "6:misc",
		float = true,
	},
        { match = {"defurxvt" }, tag = "3:work", },
	{
		match = { "ncmpc.*", "MOC.*" },
		tag = "6:misc",
	},
        { match = {"MPlayer" }, tag = "3:work", float = true },
        {
		match = {
			"chaturxvt",
			"gobby",
			".*jabber",
			".*mutt",
			"Irssi:.*",
			--"[screen: mutt.*",
		},
		tag = "1:chat",
	},
        { match = { "MOC.*" }, tag = "6:misc", },
        { match = { ".*rtorrent.*" }, tag = "p2p", },
        { match = { "minicom" }, tag = "4:scr", },
        { match = {"emacs@.*" }, tag = "3:work", },
        { match = { "Hydrogen.*", "Audacity.*" }, tag = "5:miscfs", },
        { match = {"Gimp","Ufraw"                   }, tag = { "graph", "gimp" }             },
        { match = {"gimp-image-window"              }, slave = true,                         },
        { match = { "" }, buttons = clientbuttons,
	  size_hints_honor = false, },
}

shifty.config.defaults = {
  layout = awful.layout.suit.tile.left,
  run = function(tag) naughty.notify({ text = tag.name }) end,
}

shifty.init()

for i = 1, ( shifty.config.maxtags or 9 ) do
    globalkeys = awful.util.table.join(globalkeys,
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
			  awful.tag.viewonly(shifty.getpos(i))
                  end),
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                          awful.tag.viewtoggle(shifty.getpos(i))
                  end),
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
			      local t = shifty.getpos(i)
			      awful.client.movetotag(t)
			      awful.tag.viewonly(t)
                      end
                  end),
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
			      awful.client.toggletag(shifty.getpos(i))
                      end
                  end))
end

-- Set keys
root.keys(globalkeys)
shifty.config.globalkeys = globalkeys
shifty.config.clientkeys = clientkeys

-- {{{ Signals
-- Signal function to execute when a new client appears.
client.add_signal("manage", function (c, startup)
    -- Add a titlebar
    --awful.titlebar.add(c, { modkey = modkey, height = 15, position = "" })

    -- Enable sloppy focus
    c:add_signal("mouse::enter", function(c)
        if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and awful.client.focus.filter(c) then
            client.focus = c
        end
    end)

    if true then return end
    if not startup then
        -- Set the windows at the slave,
        -- i.e. put it at the end of others instead of setting it master.
        -- awful.client.setslave(c)

        -- Put windows in a smart way, only if they does not set an initial position.
        if not c.size_hints.user_position and not c.size_hints.program_position then
            awful.placement.no_overlap(c)
            awful.placement.no_offscreen(c)
        end
    end
end)

client.add_signal("focus", function(c)
	--
	c.border_color = beautiful.border_focus

	-- mouse cursor should follow focus
	-- this prevents losing focus history on dual screen
	-- and is nice otherwise
	if awful.mouse.client_under_pointer() ~= c then
		mouse.coords(c:geometry(), true)
	end
end)
client.add_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
-- }}}
