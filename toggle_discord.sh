#!/bin/bash

WID=$(xdotool search --onlyvisible --class "discord")
if xprop -id $WID WM_STATE | grep "Iconic"; then
  wmctrl -i -R $WID; wmctrl -i -r $WID -b add,maximized_vert,maximized_horz
else
   xdotool windowminimize $WID
fi