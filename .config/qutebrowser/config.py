import os
import sys

config.load_autoconfig(False)

config_path = os.path.expanduser('~/.config/qutebrowser/lackluster.py')
if os.path.exists(config_path):
    with open(config_path) as f:
        exec(f.read())

c.downloads.location.directory = '~/downloads'
c.downloads.location.prompt = False

c.auto_save.session = True

c.input.insert_mode.auto_enter = False
c.input.insert_mode.auto_leave = False
c.input.insert_mode.auto_load = False
c.input.insert_mode.leave_on_load = False
c.input.insert_mode.plugins = False

config.bind('<Ctrl+v>', 'nop', mode='normal')

c.colors.webpage.darkmode.enabled = False
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
c.colors.webpage.darkmode.policy.images = 'never'
c.colors.webpage.darkmode.policy.page = 'smart'
c.colors.webpage.darkmode.threshold.background = 128
c.colors.webpage.darkmode.threshold.foreground = 128
c.colors.webpage.preferred_color_scheme = 'dark'

c.fonts.default_family = "Gallant12"
c.fonts.default_size = "12px"

c.tabs.title.alignment = "center"
c.tabs.favicons.show = "never"
c.tabs.indicator.width = 0
c.tabs.padding = {
    'top': 7,
    'bottom': 7,
    'left': 6,
    'right': 6
}
c.statusbar.show = "in-mode"
c.statusbar.padding = {
    'top': 7,
    'bottom': 7,
    'left': 4,
    'right': 4
}

c.url.searchengines = {'DEFAULT': 'https://4get.ca/web?s={}'}

c.content.headers.accept_language = "en-US,en;q=0.5"
c.content.javascript.clipboard = 'access-paste'
c.content.local_content_can_access_remote_urls = True
c.content.webrtc_ip_handling_policy = "disable-non-proxied-udp"

c.content.blocking.enabled = True
c.content.blocking.method = 'both'

config.bind(';', 'cmd-set-text :')

c.content.user_stylesheets = [
        '~/.config/qutebrowser/styles/unrounding.css'
]

c.scrolling.smooth = True
