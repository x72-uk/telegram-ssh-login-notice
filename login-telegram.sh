#!/bin/bash

login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%d/%m/%y, %T")"
login_name="$(whoami)"
login_server="$(hostname -I)"
login_server_friendly="$(hostname)"

message="["$login_date"] "$'\n'" New login on: "$login_server" ("$login_server_friendly") "$'\n'" Client IP = "$login_ip" "$'\n'" Username = "$login_name""

chat_id=<replace with chat id>
telegram_bot_token=<replace with bot token>

curl -s --data "text=$1" --data "chat_id=$chat_id" 'https://api.telegram.org/bot'$telegram_bot_token'/sendMessage' > /dev/null
