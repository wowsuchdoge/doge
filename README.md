Doge

# Features
- Look at your games collection from any browser in your home
- See how it changes over time
- See what's installed on your Switch
- Showcase your collection
- Heavily uses Nut (https://github.com/blawar/nut)

# Setup
- Install Python 3 and Nut's dependencies
  - Make sure you are at least running Python 3.6
  - `pip3 install colorama pyopenssl requests tqdm unidecode image bs4 urllib3 flask`
  - You may need to update pip to latest version if the above command fails
- Install NodeJS LTS / 10 from https://nodejs.org/en/ (or `brew install node@10` on Mac) and restart your computer
  - Node 10, not 8, not 11
- Set your games folder root in `/nut/conf/nut.conf` (paths.scan, use / instead of \ even on Windows, ex: C:/games)
- If not on Windows, change the `PYTHON_CMD` to `python3` or whatever your python alias is
- Run start.bat (Windows) or start.sh (Mac/Linux)
- Visit the url you see in your web browser

# Docker
- Unofficial Docker image is available at https://github.com/krptg0/doge
- Contact krptg over Github for assistance, or open an issue directly on his repo

# Credits
- Doge
- Thanks to blawar, morrison22, krptg, Bob, DBZTrunks, and more!
- krptg for the Docker stuff

# How To
- If you're having trouble, make sure Nut runs fine on it's own (don't run it without any params because it will rename your files)
  -  `nut.py -s` (in nut folder)
- Update checking is powered by using a db url that has update info
  - Add any db urls you want to `titleUrls` in `nut/conf/nut.conf`
- To see which Switch games you have installed, run digableinc/tinfoil (dz) on your Switch, from https://github.com/digableinc/tinfoil
  - Make sure it's configured to connect to the nut server on your computer
- To see pictures in the Grid View mode, you must enable eShop scraping / `SCRAPE_ESHOP` in `doge.config.json`
  - This will take a while, so be patient
- To change your login:
  - For the Nut server login, change `/nut/conf/users.conf` (and make sure to add a valid admin login into `doge.config.json`'s `NUT_USER`/`NUT_PASS`)
  - For Doge, see `doge.config.json`'s USERS section
- If you have a URL that you can make send you a notification, set it into `URL_NOTIFY_NEW_FILES`
  - `%msg` will be replaced with a message about which games were found (up to a few at once)
  - Pushbullet/etc gives you a URL like this so you can get notifications on your phone
- Rename your Switches that show up in the dropdown:
  - See `SWITCH_ALIASES` in the config to get from serial to alias
- Auto Unlocking just runs `nut.py --unlock-all`, so if it's not working, run that yourself from the command line and check for errors
  - You will need a populated `keys.txt`, which is not included
  - Make sure you set where you want files to go in nut.conf's "paths", by default they will be moved into sub-folders)

# Changelog
## v2.1.2 [Doge]
- No longer showing games with future release dates in missing.txt/keyless.txt
- Fixed new games/dlc without a key getting tagged as "Key Changed"
- Fixed &s in game names breaking notifications
- Updated Nut

## v2.1.1 [Doge]
- Support for Bob's VersionDB, now part of doge.conf.default.json (go update your doge.config.json!)
- Only Admin users can set games as Wanted (you have to re-login to be seen as an Admin!)
- Blacklist.txt support is back (read only, just add title IDs to the file in the nut folder)
- /api/keyless.txt export
- Fixed bug where game details wouldn't popup if you navigated directly to History page
- Updated Nut

## v2.1.0 [Doge]
- Full game details screen
- Like/Dislike games, per user
- Sort games by when you liked them, and by most liked (on your server, across users)
- Disabling Show Keyless hides keyless DLC now, too
- If you have no keys in the DBs, key-related options don't show
- Config to auto-run nut's --unlock-all
- History for files shows game ID now if that's all that was known
- Fixed games with no update in titles.json but an update in the local library not showing any ver in column
- Optional Size column
- Notification message now breaks down found items by type
- Updated Nut

## v2.0.2 [Doge]
- Updated Nut

## v2.0.1 [Doge]
- New Filter: Required Languages
- New Column: Languages count (hover to see which ones)
- UI touch ups

## v2.0.0 [Doge]
- Showcase Mode: Goes through your games library automatically, showcasing one at a time
- Installed: Now shows status as DLC-Needed for installed games that are missing DLC
- History: can now filter types; button to trim history to latest entry per type
- No longer auto marking games with only updates/dlc as wanted (only those with base game)
- Fixed Google search being broken by game names with & etc

## v2.0.0 PRE3 [Doge]
- Ability to filter to no/only demos
- Can un/want games by clicking the Library column
- See what's missing in missing.txt at /api/missing.txt
- OS X: Fixed Games folder not finding anything if path ended with slash
- Fixed white area at button of page [Shadowhand]
- Config format change: USERS/PASSWORD is now also all caps

## v2.0.0 PRE2 [Doge]
- Multi Switch Support (need latest DZ/Tinfoil)
- Switch aliases: show what you want in the dropdown (see SWITCH_ALIASES in Doge conf)
- Updated Nut; Fixes every Switch reporting as placeholder serial; delete your nut/switch/XAJ70002712345 folder, if you have it
- Region filtering
- History shows if a key was removed (used to show as Changed)
- Fixed error when no Notification URL Set

## v2.0.0 PRE1 [Doge]
- Doge Server runs in parallel to nut server to bring you the Doge WebUI. Look at your collection from any web browser in your home!
