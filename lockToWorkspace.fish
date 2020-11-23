#!/usr/bin/env fish
set i3Config ~/.config/i3/config
#set i3Config ./testConfig
set appClassname (xprop | grep "WM_CLASS(STRING)" | cut -d" " -f4)
set insertLineNum (grep -n "#AddedByScript" $i3Config | cut -d : -f 1)
set searchLine "assign \[class="$appClassname"\]"
set existsLine (grep -n "$searchLine" $i3Config | cut -d : -f 1)
set existsLine (echo $existsLine | cut -d" " -f1)
if test -n "$existsLine"
    set existsLine (echo $existsLine)d
    sed -i "$existsLine" $i3Config
    notify-send Unpinning $appClassname
    i3-msg restart
    exit
end
set insertLineNum (math $insertLineNum + 1)i
set workspaceName (i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2)
set insertLineContent "assign [class="$appClassname"] \"$workspaceName\""
sed -i "$insertLineNum $insertLineContent" $i3Config

notify-send "Pinning $appClassname to workspace $workspaceName"
i3-msg restart
