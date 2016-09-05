# Palindrome-docker-recipe
This is a recipe to easily deploy [joshhsoj1902/palindrome](https://github.com/joshhsoj1902/palindrome) with everything it needs to run.

##Quick start
###Prerequisites
The server must have docker and git installed.
###Download and run
``` bash
git clone https://github.com/joshhsoj1902/Palindrome-docker-recipe.git palindrome-docker-recipe;
cd palindrome-docker-recipe;
chmod +x launch_palindrome.sh;
./launch_palindrome.sh
```

This will download all the images needed, do any needed building and then launch everything. It will also scale up the webapp to two instances which can be changed by editing the last line of launch_palindrome.sh
```
docker-compose -f docker-compose.yml scale app=2
```
