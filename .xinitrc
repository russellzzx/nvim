#!/bin/bash

# enable fcitx
export XIM=fcitx
export GTK_IM_MODULE=fcitx

export QT_IM_MODULE=fcitx

export QT4_IM_MODULE=fcitx

export CLUTTER_IM_MODULE=fcitx

export XMODIFIERS="@im=fcitx"

fcitx &
