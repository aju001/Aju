if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Aju001/Aju.git /Aju
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Aju
fi
cd /Aju
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
