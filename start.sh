echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/MrSnapPro/MusicBot /MusicBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/MrSnapPro/MusicBot -b $BRANCH /MusicBot
fi
cd /MusicBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
