#kierranm/couchpotato
<i>A docker image for creating Couch Potato Server docker containers</i>

This sets up a couch potato server running on port 5050. It is preconfigured to use the following directories:

 * ```/config``` -> Where the database and logs etc are stored
 * ```/movies``` -> Where your movie library resides
 * ```/downloads``` -> Where your torrent software places completed downloads
 * ```/blackhole``` -> Where your torrent software watches for .torrent files

 By default the WebUI has a login of ```couchpotato-user``` with the password ```couchpotato-password```,
 but I highly recommend changing these using the environment variables seen in the command below

#Installation

Each time the container is run it will update to the latest version of CouchPotatoServer.

To run the container simple run:
``` bash
  docker run -d --net="host" --name="couchpotato" \
    -v /path/to/config:/config \
    -v /path/to/movies:/movies \
    -v /path/to/downloads:/downloads \
    -v /path/to/blackhole:/blackhole \
    -p 5050:5050 \
    kierranm/couchpotato
```
