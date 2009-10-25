-- Standard awesome library
require("awful")
-- Theme handling library
require("beautiful")
-- Notification library
require("naughty")

require("shifty")
-- Load Debian menu entries
require("debian.menu")

-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
-- The default is a dark theme
--theme_path = "/usr/share/awesome/themes/default/theme.lua"
theme_path = "/home/ash/.config/awesome/theme.lua"
-- Uncommment this for a lighter theme
-- theme_path = "/usr/share/awesome/themes/sky/theme.lua"

-- Actually load theme
beautiful.init(theme_path)

-- This is used later as the default terminal and editor to run.
terminal = "urxvt -name defurxvt"
editor = os.getenv("EDITOR") or "editor"
editor_cmd = terminal .. " -e " .. editor

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
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier,
    awful.layout.suit.floating
}

-- Table of clients that should be set floating. The index may be either
-- the application class or instance. The instance is useful when running
-- a console app in a terminal like (Music on Console)
--    x-terminal-emulator -name mocp -e mocp
floatapps =
{
    -- by class
    ["MPlayer"] = true,
    ["pinentry"] = true,
    ["gimp"] = true,
    -- by instance
    ["mocp"] = true
}

-- Applications to be moved to a pre-defined tag by class or instance.
-- Use the screen and tags indices.
--[[apptags =
{
    --["Seamonkey"] = { screen = 1, tag = 3 },
    -- ["Firefox"] = { screen = 1, tag = 2 },
    -- ["mocp"] = { screen = 2, tag = 4 },
}
]]--
-- Define if we want to use titlebar on all applications.
use_titlebar = true
-- }}}

-- {{{ Wibox
-- Create a textbox widget
mytextbox = widget({ type = "textbox", align = "right" })
-- Set the default text in textbox
mytextbox.text = "<b><small> " .. awesome.release .. " </small></b>"

-- Create a laucher widget and a main menu
myawesomemenu = {
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua" },
   { "restart", awesome.restart },
   { "quit", awesome.quit }
}

mymainmenu = awful.menu.new({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                        { "open terminal", terminal },
                                        { "Debian", debian.menu.Debian_menu.Debian }
                                      }
                            })

mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
                                     menu = mymainmenu })

-- Create a systray
mysystray = widget({ type = "systray", align = "right" })

-- Create a wibox for each screen and add it
mywibox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1, awful.client.movetotag),
                    awful.button({ }, 3, function (tag) tag.selected = not tag.selected end),
                    awful.button({ modkey }, 3, awful.client.toggletag),
                    awful.button({ }, 4, awful.tag.viewnext),
                    awful.button({ }, 5, awful.tag.viewprev)
                    )
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
    mypromptbox[s] = awful.widget.prompt({ align = "left" })
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    mylayoutbox[s] = widget({ type = "imagebox", align = "right" })
    mylayoutbox[s]:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                           awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    -- Create a taglist widget
    --mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all, mytaglist.buttons)
    mytaglist[s] = awful.widget.taglist.new(s, awful.widget.taglist.label.all, mytaglist.buttons)

    -- Create a tasklist widget
    mytasklist[s] = awful.widget.tasklist(function(c)
                                              return awful.widget.tasklist.label.currenttags(c, s)
                                          end, mytasklist.buttons)

    -- Create the wibox
    mywibox[s] = wibox({ position = "bottom", fg = beautiful.fg_normal, bg = beautiful.bg_normal })
    -- Add widgets to the wibox - order matters
    mywibox[s].widgets = { mylayoutbox[s],
                           mytaglist[s],
                           mytasklist[s],
                           mypromptbox[s],
                           mytextbox,
                           s == 1 and mysystray or nil }
    mywibox[s].screen = s
end
-- }}}

shifty.taglist = mytaglist

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
    awful.key({ amodkey,          }, "q",      awful.tag.viewprev       ),
    awful.key({ amodkey,          }, "e",      awful.tag.viewnext       ),
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
    awful.key({ modkey,           }, "w", function () mymainmenu:show(true)        end),

    -- Layout manipulation
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1) end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1) end),
    awful.key({ amodkey,          }, "e", function () awful.client.swap.byidx(  1) end),
    awful.key({ amodkey,          }, "q", function () awful.client.swap.byidx( -1) end),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus( 1)       end),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus(-1)       end),
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto),
    awful.key({ modkey,           }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end),

    -- Standard program
    awful.key({ "Control", "Alt" }, "Delete", function () awful.util.spawn(terminal) end),
    awful.key({ modkey,           }, "F2", function () awful.util.spawn(terminal) end),
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
    awful.key({ modkey },            "F3",     function () mypromptbox[mouse.screen]:run() end),

    awful.key({ modkey }, "x",
              function ()
                  awful.prompt.run({ prompt = "Run Lua code: " },
                  mypromptbox[mouse.screen].widget,
                  awful.util.eval, nil,
                  awful.util.getdir("cache") .. "/history_eval")
              end)
)

-- Client awful tagging: this is useful to tag some clients and then do stuff like move to tag on them
clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ amodkey,          }, "space",  function (c) c:focus(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey, "Shift"   }, "r",      function (c) c:redraw()                       end),
    awful.key({ modkey }, "t", awful.client.togglemarked),
    awful.key({ modkey,}, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end)
)

-- Compute the maximum number of digit we need, limited to 9
keynumber = 0
--[[
for s = 1, screen.count() do
   keynumber = math.min(9, math.max(#tags[s], keynumber));
end

for i = 1, keynumber do
    globalkeys = awful.util.table.join(globalkeys,
        awful.key({ modkey }, i,
                  function ()
                        local screen = mouse.screen
                        if tags[screen][i] then
                            awful.tag.viewonly(tags[screen][i])
                        end
                  end),
        awful.key({ modkey, "Control" }, i,
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          tags[screen][i].selected = not tags[screen][i].selected
                      end
                  end),
        awful.key({ modkey, "Shift" }, i,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.movetotag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Control", "Shift" }, i,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.toggletag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Shift" }, "F" .. i,
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          for k, c in pairs(awful.client.getmarked()) do
                              awful.client.movetotag(tags[screen][i], c)
                          end
                      end
                   end))
end
]]--

-- Set keys
-- }}}

-- {{{ Hooks
-- Hook function to execute when focusing a client.
awful.hooks.focus.register(function (c)
    if not awful.client.ismarked(c) then
        c.border_color = beautiful.border_focus
    end
end)

-- Hook function to execute when unfocusing a client.
awful.hooks.unfocus.register(function (c)
    if not awful.client.ismarked(c) then
        c.border_color = beautiful.border_normal
    end
end)

-- Hook function to execute when marking a client
awful.hooks.marked.register(function (c)
    c.border_color = beautiful.border_marked
end)

-- Hook function to execute when unmarking a client.
awful.hooks.unmarked.register(function (c)
    c.border_color = beautiful.border_focus
end)

-- Hook function to execute when the mouse enters a client.
awful.hooks.mouse_enter.register(function (c)
    -- Sloppy focus, but disabled for magnifier layout
    if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
        and awful.client.focus.filter(c) then
        client.focus = c
    end
end)

-- shifty
shifty.config.tags = {
	["1:chat"] = {
		persist = true,
		position = 1,
		screen = 1,
		nmaster = 3,
		layout = awful.layout.suit.tile.left,
		mwfact = 0.6
	},
	["2:www"]  = {
		exclusive = true,
		screen = 1,
		position = 2,
		spawn = "iceweasel",
		layout = awful.layout.suit.tile.left,
		mwfact = 0.80
	},
	["3:work"] = {
		persist = true,
		position = 3,
		screen = 2,
		layout = awful.layout.suit.tile,
		mwfact = 0.68
	},
	["4:scr"] = {
		layout = awful.layout.suit.max,
		screen = 2,
		position = 4
	},
	["5:vim"] = {
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
		layout = awful.layout.suit.tile.bottom
	},
	["7:test"] = {
		init = true,
		position = 7,
		screen = 1,
		mwfact = 0.80,
		layout = awful.layout.suit.tile.bottom
	},
	["p2p"] = { icon = "/usr/share/pixmaps/p2p.png", icon_only = true,               },
	["gimp"] = { layout = "tile", mwfact = 0.18, icon="/usr/share/pixmaps/gimp.png",  },
	["fs"] = { rel_index = 1,                                                       },
}

shifty.config.apps = {
        { match = { "htop", "urxvt", "jackctl" }, tag = { "6:misc", "3:work" },        screen = 1,     },
        { match = {"Iceweasel.*", "Firefox.*", "SeaMonkey.*"}, tag = "2:www",              },
        { match = {"Links.*", "links.*" }, tag = "7:test",              },
	{ match = {"XClock", "XOsview", "xconsole" }, tag = { "6:misc", "1:chat", "2:www" }, nofocus = 1, },
        { match = {"defurxvt"                       }, tag = "3:work",       screen = 1,     },
        { match = {"chaturxvt", "gobby", ".*jabber", ".*mutt", "Irssi:.*" }, tag = "1:chat",       screen = 1,     },
        { match = {"minicom"                      }, tag = "4:scr",       screen = 1,     },
        { match = {"gvim"                      }, tag = "5:vim",       screen = 1,     },
--[[        { match = {"foobar2000.exe",                }, tag = "fb",           nopopup = true, },
        { match = {"Ardour.*", "Jamin",             }, tag = "ardour",                       },
        { match = {"Live.*",                        }, tag = "live",         nopopup = true, },
        { match = {"Deluge","nicotine"              }, tag = "p2p",                          },
        { match = {"Gimp","Ufraw"                   }, tag = { "graph", "gimp" }             },
        { match = {"gimp-image-window"              }, slave = true,                         },
        { match = {"gqview"                         }, tag = { "graph", "gqview" }           },
        { match = { "Pcmanfm"                       }, tag = "fs",                           },
        { match = {"gcolor2", "xmag"                }, intrusive = true,                     },
        { match = {"gcolor2"                        }, geometry = { 100,100,nil,nil },       },
        { match = {"recordMyDesktop", "MPlayer", "xmag", 
                                                    }, float = true,                         },]]--
        { match = { "" }, buttons = {
                             button({ }, 1, function (c) client.focus = c; c:raise() end),
                             button({ modkey }, 1, function (c) awful.mouse.client.move() end),
                             button({ modkey }, 3, awful.mouse.client.resize ), }, },
}

shifty.config.defaults = {
  layout = "max", 
  run = function(tag) naughty.notify({ text = tag.name }) end,
}

shifty.init()

for i=1,9 do
  
  globalkeys = awful.util.table.join(globalkeys, awful.key({ modkey }, i,
  function ()
    local t = awful.tag.viewonly(shifty.getpos(i))
  end))
  globalkeys = awful.util.table.join(globalkeys, awful.key({ modkey, "Control" }, i,
  function ()
    local t = shifty.getpos(i)
    t.selected = not t.selected
  end))
  globalkeys = awful.util.table.join(globalkeys, awful.key({ modkey, "Control", "Shift" }, i,
  function ()
    if client.focus then
      awful.client.toggletag(shifty.getpos(i))
    end
  end))
  -- move clients to other tags
  globalkeys = awful.util.table.join(globalkeys, awful.key({ modkey, "Shift" }, i,
    function ()
      if client.focus then
        local t = shifty.getpos(i)
        awful.client.movetotag(t)
        awful.tag.viewonly(t)
      end
    end))
end

root.keys(globalkeys)
shifty.config.globalkeys = globalkeys
shifty.config.clientkeys = clientkeys

-- Hook function to execute when a new client appears.
awful.hooks.manage.register(function (c, startup)
    awful.titlebar.add(c, { modkey = modkey, height = 14 })
    if true then return end
    c.border_width = beautiful.border_width
    c.border_color = beautiful.border_normal
    -- If we are not managing this application at startup,
    -- move it to the screen where the mouse is.
    -- We only do it for filtered windows (i.e. no dock, etc).
    if not startup and awful.client.focus.filter(c) then
        c.screen = mouse.screen
    end

    if use_titlebar then
        -- Add a titlebar
        awful.titlebar.add(c, { modkey = modkey })
    end
    -- Add mouse bindings
    c:buttons(awful.util.table.join(
        awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
        awful.button({ modkey }, 1, awful.mouse.client.move),
        awful.button({ modkey }, 3, awful.mouse.client.resize)
    ))
    -- New client may not receive focus
    -- if they're not focusable, so set border anyway.
    c.border_width = beautiful.border_width
    c.border_color = beautiful.border_normal

    -- Check if the application should be floating.
    local cls = c.class
    local inst = c.instance
    if floatapps[cls] ~= nil then
        awful.client.floating.set(c, floatapps[cls])
    elseif floatapps[inst] ~= nil then
        awful.client.floating.set(c, floatapps[inst])
    end

    -- Check application->screen/tag mappings.
    local target
    if apptags[cls] then
        target = apptags[cls]
    elseif apptags[inst] then
        target = apptags[inst]
    end
    if target then
        c.screen = target.screen
        awful.client.movetotag(tags[target.screen][target.tag], c)
    end

    -- Do this after tag mapping, so you don't see it on the wrong tag for a split second.
    client.focus = c

    -- Set key bindings
    c:keys(clientkeys)

    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    -- awful.client.setslave(c)

    -- Honor size hints: if you want to drop the gaps between windows, set this to false.
    -- c.size_hints_honor = false
end)

-- Hook function to execute when arranging the screen.
-- (tag switch, new client, etc)
awful.hooks.arrange.register(function (screen)
    local layout = awful.layout.getname(awful.layout.get(screen))
    if layout and beautiful["layout_" ..layout] then
        mylayoutbox[screen].image = image(beautiful["layout_" .. layout])
    else
        mylayoutbox[screen].image = nil
    end

    -- Give focus to the latest client in history if no window has focus
    -- or if the current window is a desktop or a dock one.
    if not client.focus then
        local c = awful.client.focus.history.get(screen, 0)
        if c then client.focus = c end
    end
end)

-- Hook called every minute
awful.hooks.timer.register(60, function ()
    mytextbox.text = os.date(" %a %b %d, %H:%M ")
end)
-- }}}
