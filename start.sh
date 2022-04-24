if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/VjAutoFilterbot/Kollambot.git /Kollambot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Kollambot
fi
cd /Kollambot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
