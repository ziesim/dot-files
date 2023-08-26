from libqtile import bar
from .widgets import *
from libqtile.config import Screen
from modules.keys import terminal
import os

screens = [
    Screen(
        top=bar.Bar([
            widget.Spacer(
                length=5,
            ),
            widget.Image(
                # filename='~/.config/qtile/eos-c.png', 
                filename='~/.svgs/arch_light.png', 
                margin=3, 
                mouse_callbacks={
                    'Button1': 
                    lambda: qtile.cmd_spawn("rofi -show combi")
                },
            ),
            widget.Sep(
                padding=4,
                linewidth=0,
            ), 
            widget.GroupBox(
                highlight_method='line',
                this_screen_border="#5294e2",
                this_current_screen_border="#5294e2",
                active="#5294e2",
                inactive="#ffffff",
                fontsize=13,
            ),
            widget.Spacer(
                length=5,
            ),
            widget.Prompt(),
            widget.Spacer(
                length=5,
            ),
            widget.WindowName(
                foreground='#5294e2',
                fmt='{}',
                fontsize=14,
                ),
            widget.Chord(
                chords_colors={
                    'launch': ("#ff0000", "#ffffff"),
                },
                name_transform=lambda name: name.upper(),
            ),
            widget.CurrentLayoutIcon(
                scale=0.5,
                foreground='#ffffff',
            ),
            widget.Spacer(
                length=10,
            ),
            widget.Systray(
                icon_size=20,
                padding=10,
            ),
            widget.Spacer(
                length=10,
            ),
            widget.CheckUpdates(
                update_interval=600,
                distro="Arch_yay",
                display_format="    {updates} "
            ),
            widget.Spacer(
                length=12,
            ),
            widget.Volume(
                fmt=' {}',
                foreground='#ffffff',
            ),
            widget.Spacer(
                length=20,
            ),
            widget.Battery(
                format=' {percent:2.0%} {char}',
                foreground='#ffffff',
                charge_char='',
                discharge_char='',
            ),
            widget.Spacer(
                length=20,
            ),
            widget.Clock(
                format=' %a %d.%m.%y - %H:%M %p',
                fontsize=13,
                foreground='#ffffff',
            ),
            widget.Spacer(
                length=10,
            ),
            widget.TextBox(
                fontsize=15,
                text='',
                mouse_callbacks= {
                    'Button1':
                    lambda: qtile.cmd_spawn(os.path.expanduser('~/.config/rofi/powermenu.sh'))
                },
                foreground='#bf616a',
            ),
            widget.Spacer(
                length=5,
            ),
        ],
        30,  # height in px
        background="#2b313c",  # background color
        ),
    ),
]
