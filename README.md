## Log Archive Tool (Bash)

A simple command-line tool to archive logs using `tar.gz`, built with pure Bash.  
This tool helps automate log maintenance by compressing and storing log directories with timestamped filenames.



## Features

-  Takes a log directory as input
-  Compresses logs into `.tar.gz` format
-  Stores archives in a separate folder
-  Logs each archive action with a timestamp
-  Cron-job compatible for automation



## Real System Log Support

This script works with real Linux log directories like `/var/log`, making i>



## Usage

```bash
sudo bash log-archive.sh <log-directory>





