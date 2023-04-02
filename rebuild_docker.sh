echo STOPPING FLAIR BOT..
docker stop FCFB-Flair-Bot
echo FLAIR BOT STOPPED!
echo
echo REMOVING OLD FLAIR BOT...
docker remove FCFB-Flair-Bot
echo OLD FLAIR BOT REMOVED!
echo
echo BUILDING NEW FLAIR BOT...
docker build -t "fcfb-flair-bot:Dockerfile" .
echo NEW FLAIR BOT BUILT!
echo
echo STARTING NEW FLAIR BOT...
docker run -d --restart=always --name FCFB-Flair-Bot fcfb-flair-bot:Dockerfile
echo NEW FLAIR BOT STARTED!
echo DONE!
