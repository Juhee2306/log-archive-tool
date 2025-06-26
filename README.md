## Log Archive Tool (Bash)

A simple command-line tool to archive logs using `tar.gz`, built with pure Bash.  
This tool helps automate log maintenance by compressing and storing log directories with timestamped filenames.



## Features

-  Takes a log directory as input
-  Compresses logs into `.tar.gz` format
-  Stores archives in a separate folder
-  Logs each archive action with a timestamp
-  Cron-job compatible for automation



## Usage

```bash
sudo bash log-archive.sh <log-directory>


## Real System Log Support

This script works with real Linux log directories like `/var/log`, making it useful for DevOps and system maintenance automation. Just pass the full path as an argument with `sudo`.

