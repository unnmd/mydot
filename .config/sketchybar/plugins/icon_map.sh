#!/bin/bash

function icon_map() {
  case "$1" in
  "Typora")
    icon_result=":text:"
    ;;
  "Orion" | "Orion RC")
    icon_result=":orion:"
    ;;
  "Grammarly Editor")
    icon_result=":grammarly:"
    ;;
  "kitty")
    icon_result=":kitty:"
    ;;
  "ClickUp")
    icon_result=":click_up:"
    ;;
  "Iris")
    icon_result=":iris:"
    ;;
  "PomoDone App")
    icon_result=":pomodone:"
    ;;
  "qutebrowser")
    icon_result=":qute_browser:"
    ;;
  "Raindrop.io")
    icon_result=":raindrop_io:"
    ;;
  "Airmail")
    icon_result=":airmail:"
    ;;
  "Affinity Publisher 2")
    icon_result=":affinity_publisher_2:"
    ;;
  "Calendar" | "日历" | "Fantastical" | "Cron" | "Amie")
    icon_result=":calendar:"
    ;;
  "Figma")
    icon_result=":figma:"
    ;;
  "Element")
    icon_result=":element:"
    ;;
  "Signal")
    icon_result=":signal:"
    ;;
  "Mattermost")
    icon_result=":mattermost:"
    ;;
  "Caprine")
    icon_result=":caprine:"
    ;;
  "Microsoft To Do" | "Things")
    icon_result=":things:"
    ;;
  "Godot")
    icon_result=":godot:"
    ;;
  "Android Messages")
    icon_result=":android_messages:"
    ;;
  "Zed")
    icon_result=":zed:"
    ;;
  "Anytype")
    icon_result=":anytype:"
    ;;
  "TeamSpeak 3")
    icon_result=":team_speak:"
    ;;
  "LibreWolf")
    icon_result=":libre_wolf:"
    ;;
  "Neovide" | "neovide")
    icon_result=":neovide:"
    ;;
  "Spotlight")
    icon_result=":spotlight:"
    ;;
  "微信")
    icon_result=":wechat:"
    ;;
  "Dropbox")
    icon_result=":dropbox:"
    ;;
  "Transmit")
    icon_result=":transmit:"
    ;;
  "TickTick")
    icon_result=":tick_tick:"
    ;;
  "Parallels Desktop")
    icon_result=":parallels:"
    ;;
  "Audacity")
    icon_result=":audacity:"
    ;;
  "Rider" | "JetBrains Rider")
    icon_result=":rider:"
    ;;
  "DEVONthink 3")
    icon_result=":devonthink3:"
    ;;
  "Docker" | "Docker Desktop")
    icon_result=":docker:"
    ;;
  "Matlab")
    icon_result=":matlab:"
    ;;
  "VLC")
    icon_result=":vlc:"
    ;;
  "Alacritty")
    icon_result=":alacritty:"
    ;;
  "Pages" | "Pages 文稿")
    icon_result=":pages:"
    ;;
  "Bear")
    icon_result=":bear:"
    ;;
  "Pine")
    icon_result=":pine:"
    ;;
  "Affinity Designer 2")
    icon_result=":affinity_designer_2:"
    ;;
  "Keyboard Maestro")
    icon_result=":keyboard_maestro:"
    ;;
  "Joplin")
    icon_result=":joplin:"
    ;;
  "mpv")
    icon_result=":mpv:"
    ;;
  "zoom.us")
    icon_result=":zoom:"
    ;;
  "Affinity Photo 2")
    icon_result=":affinity_photo_2:"
    ;;
  "Music" | "音乐")
    icon_result=":music:"
    ;;
  "League of Legends")
    icon_result=":league_of_legends:"
    ;;
  "Tor Browser")
    icon_result=":tor_browser:"
    ;;
  "Hyper")
    icon_result=":hyper:"
    ;;
  "‎WhatsApp")
    icon_result=":whats_app:"
    ;;
  "카카오톡")
    icon_result=":kakaotalk:"
    ;;
  "Discord" | "Discord Canary" | "Discord PTB")
    icon_result=":discord:"
    ;;
  "Neovide" | "MacVim" | "Vim" | "VimR")
    icon_result=":vim:"
    ;;
  "Keynote" | "Keynote 讲演")
    icon_result=":keynote:"
    ;;
  "iTerm")
    icon_result=":iterm:"
    ;;
  "IntelliJ IDEA")
    icon_result=":idea:"
    ;;
  "Finder" | "访达")
    icon_result=":finder:"
    ;;
  "Xcode")
    icon_result=":xcode:"
    ;;
  "GoLand")
    icon_result=":goland:"
    ;;
  "Android Studio")
    icon_result=":android_studio:"
    ;;
  "MoneyMoney")
    icon_result=":bank:"
    ;;
  "Spotify")
    icon_result=":spotify:"
    ;;
  "KeePassXC")
    icon_result=":kee_pass_x_c:"
    ;;
  "Alfred")
    icon_result=":alfred:"
    ;;
  "Color Picker" | "数码测色计")
    icon_result=":color_picker:"
    ;;
  "Microsoft Word")
    icon_result=":microsoft_word:"
    ;;
  "Microsoft PowerPoint")
    icon_result=":microsoft_power_point:"
    ;;
  "Notes" | "备忘录")
    icon_result=":notes:"
    ;;
  "Microsoft Edge")
    icon_result=":microsoft_edge:"
    ;;
  "Sublime Text")
    icon_result=":sublime_text:"
    ;;
  "Sequel Ace")
    icon_result=":sequel_ace:"
    ;;
  "Folx")
    icon_result=":folx:"
    ;;
  "DingTalk" | "钉钉" | "阿里钉")
    icon_result=":dingtalk:"
    ;;
  "WebStorm")
    icon_result=":web_storm:"
    ;;
  "Sequel Pro")
    icon_result=":sequel_pro:"
    ;;
  "Skype")
    icon_result=":skype:"
    ;;
  "网易云音乐")
    icon_result=":netease_music:"
    ;;
  "PyCharm")
    icon_result=":pycharm:"
    ;;
  "Canary Mail" | "HEY" | "Mail" | "Mailspring" | "MailMate" | "邮件")
    icon_result=":mail:"
    ;;
  "Default")
    icon_result=":default:"
    ;;
  "App Store")
    icon_result=":app_store:"
    ;;
  "Calibre")
    icon_result=":book:"
    ;;
  "Todoist")
    icon_result=":todoist:"
    ;;
  "Emacs")
    icon_result=":emacs:"
    ;;
  "Messenger")
    icon_result=":messenger:"
    ;;
  "Tower")
    icon_result=":tower:"
    ;;
  "VSCodium")
    icon_result=":vscodium:"
    ;;
  "Drafts")
    icon_result=":drafts:"
    ;;
  "Cypress")
    icon_result=":cypress:"
    ;;
  "GitHub Desktop")
    icon_result=":git_hub:"
    ;;
  "Telegram Lite")
    icon_result=":telegram:"
    ;;
  "Telegram")
    icon_result=":telegram:"
    ;;
  "Firefox Developer Edition" | "Firefox Nightly")
    icon_result=":firefox_developer_edition:"
    ;;
  "Min")
    icon_result=":min_browser:"
    ;;
  "Sketch")
    icon_result=":sketch:"
    ;;
  "Affinity Photo")
    icon_result=":affinity_photo:"
    ;;
  "MAMP" | "MAMP PRO")
    icon_result=":mamp:"
    ;;
  "Insomnia")
    icon_result=":insomnia:"
    ;;
  "Bitwarden")
    icon_result=":bit_warden:"
    ;;
  "Warp")
    icon_result=":warp:"
    ;;
  "System Preferences" | "System Settings" | "系统设置")
    icon_result=":gear:"
    ;;
  "Affinity Designer")
    icon_result=":affinity_designer:"
    ;;
  "Live")
    icon_result=":ableton:"
    ;;
  "Arc")
    icon_result=":arc:"
    ;;
  "Chromium" | "Google Chrome" | "Google Chrome Canary")
    icon_result=":google_chrome:"
    ;;
  "Jellyfin Media Player")
    icon_result=":jellyfin:"
    ;;
  "Zulip")
    icon_result=":zulip:"
    ;;
  "1Password")
    icon_result=":one_password:"
    ;;
  "FaceTime" | "FaceTime 通话")
    icon_result=":face_time:"
    ;;
  "Citrix Workspace" | "Citrix Viewer")
    icon_result=":citrix:"
    ;;
  "Logseq")
    icon_result=":logseq:"
    ;;
  "Reeder")
    icon_result=":reeder5:"
    ;;
  "Code" | "Code - Insiders")
    icon_result=":code:"
    ;;
  "Notion")
    icon_result=":notion:"
    ;;
  "Final Cut Pro")
    icon_result=":final_cut_pro:"
    ;;
  "Zotero")
    icon_result=":zotero:"
    ;;
  "Safari" | "Safari浏览器" | "Safari Technology Preview")
    icon_result=":safari:"
    ;;
  "Blender")
    icon_result=":blender:"
    ;;
  "Affinity Publisher")
    icon_result=":affinity_publisher:"
    ;;
  "Spark Desktop")
    icon_result=":spark:"
    ;;
  "Spark")
    icon_result=":spark:"
    ;;
  "Zeplin")
    icon_result=":zeplin:"
    ;;
  "Replit")
    icon_result=":replit:"
    ;;
  "Podcasts" | "播客")
    icon_result=":podcasts:"
    ;;
  "NordVPN")
    icon_result=":nord_vpn:"
    ;;
  "Notability")
    icon_result=":notability:"
    ;;
  "Numbers" | "Numbers 表格")
    icon_result=":numbers:"
    ;;
  "Nova")
    icon_result=":nova:"
    ;;
  "Microsoft Excel")
    icon_result=":microsoft_excel:"
    ;;
  "Trello")
    icon_result=":trello:"
    ;;
  "Pi-hole Remote")
    icon_result=":pihole:"
    ;;
  "Linear")
    icon_result=":linear:"
    ;;
  "CleanMyMac X")
    icon_result=":desktop:"
    ;;
  "GrandTotal" | "Receipts")
    icon_result=":dollar:"
    ;;
  "Evernote Legacy")
    icon_result=":evernote_legacy:"
    ;;
  "OmniFocus")
    icon_result=":omni_focus:"
    ;;
  "Terminal" | "终端")
    icon_result=":terminal:"
    ;;
  "Atom")
    icon_result=":atom:"
    ;;
  "Kakoune")
    icon_result=":kakoune:"
    ;;
  "Reminders" | "提醒事项")
    icon_result=":reminders:"
    ;;
  "Tana")
    icon_result=":tana:"
    ;;
  "OBS")
    icon_result=":obsstudio:"
    ;;
  "VMware Fusion")
    icon_result=":vmware_fusion:"
    ;;
  "Tweetbot" | "Twitter")
    icon_result=":twitter:"
    ;;
  "Microsoft Teams")
    icon_result=":microsoft_teams:"
    ;;
  "Yuque" | "语雀")
    icon_result=":yuque:"
    ;;
  "Slack")
    icon_result=":slack:"
    ;;
  "Vivaldi")
    icon_result=":vivaldi:"
    ;;
  "Setapp")
    icon_result=":setapp:"
    ;;
  "TIDAL")
    icon_result=":tidal:"
    ;;
  "Miro")
    icon_result=":miro:"
    ;;
  "Messages" | "信息" | "Nachrichten")
    icon_result=":messages:"
    ;;
  "Brave Browser")
    icon_result=":brave_browser:"
    ;;
  "Preview" | "预览" | "Skim" | "zathura")
    icon_result=":pdf:"
    ;;
  "Obsidian")
    icon_result=":obsidian:"
    ;;
  "Thunderbird")
    icon_result=":thunderbird:"
    ;;
  "Firefox")
    icon_result=":firefox:"
    ;;
  "WezTerm")
    icon_result=":wezterm:"
    ;;
  "ChatGPT")
    icon_result=":openai:"
    ;;
  "Телефон")
    icon_result="📞"
    ;;
  "Битрикс24 Мессенджер")
    icon_result=":remove:"
    ;;
  "Windows App")
    icon_result=":microsoft_remote_desktop:"
    ;;
  *)
    icon_result=":default:"
    ;;
  esac
}

icon_map "$1"
echo "$icon_result"
