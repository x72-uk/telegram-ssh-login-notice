# telegram-ssh-login-notice
Bash script to send a telegram message to your phone every time an SSH connection is started.

Script was needed for a local server of mine, small script.

# Installation
1) Start a new bot (Go to telegram & search for 'BotFather'),
2) Type '/start',
3) Type '/newbot',
4) Follow prompts until it gives you a HTTP APi key (Note this down!),
5) On Telegram, search for your bot using the bot's username & start a new chat,
6) Type 'Hello World' & hit enter,
7) Get the chatid:

    `curl https://api.telegram.org/bot<your HTTP api token here>/getUpdates`
8) Look in the JSON api response for chat id and note it down:

    `"chat":{"id":0000000000,.... (Your response wont be 0s)`
9) Download sh script,
10) Ensure file can execute, if not:

    `chmod +x login-telegram.sh`
11) Move script to `profile.d`:
    
    `mv login-telegram.sh /etc/profile.d/login-telegram.sh`
12) Edit the script using vim, vi...
13) Place your HTTP APi & Chatid tokens (Remove '<' + '>'):

    ```
    ...
    chat_id=<replace with chat id>
    telegram_bot_token=<replace with bot token>
    ...
    ```
14) Save and exit,
15) Terminate your SSH session and login, you should get a message!
## Screenshots
Telegram message sent:
![Screenshot](https://imgur.com/CBruoJD.jpg "Telegram Message")
