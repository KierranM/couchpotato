#kierranm/couchpotato
<i>A docker image for creating Couch Potato Server docker containers</i>

This sets up a couch potato server running on port 5050. It is preconfigured to use the following directories:

 * ```/couchpotato-data/config``` -> Where the database and logs etc are stored
 * ```/couchpotato-data/movies``` -> Where your movie library resides
 * ```/couchpotato-data/downloads``` -> Where your torrent software places completed downloads
 * ```/couchpotato-data/blackhole``` -> Where your torrent software watches for .torrent files

I recommend creating a single mount point for the /couchpotato-data directory

#Installation

Each time the container is run it will update to the latest version of CouchPotatoServer.

To run the container simple run:
``` bash
  docker run -d --net="host" --name="couchpotato" \
    -v /path/to/couchpotato/data:/couchpotato-data \
    -p 5050:5050 \
    kierranm/couchpotato
```
