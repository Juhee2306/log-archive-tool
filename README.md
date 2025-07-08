## Log Archive CLI Tool (Bash)

A lightweight, command-line tool built in pure Bash to automate log maintenance on Linux systems.
It compresses log directories into .tar.gz archives, stores them with timestamped filenames, logs each action, and cleans up old backups automatically.





## Features

-  Takes a log directory as input.
-  Compresses logs into `.tar.gz` format.
-  Stores archives in a separate folder.
-  Logs each archive action with date, time and file size.
-  Automatically deletes archives older than 7 days.
-  Cron-job compatible for automation and hands-free scheduling.
-  Supports real system paths like /var/log.



## Usage

```bash
sudo bash log-archive.sh <log-directory>
```

###Example

``` bash
sudo bash log-archive.sh /var/log
```

## Help Flag 

- To display usage instructions and script behavior overview. 

```bash
./log-archive.sh --help
```

## Log Output Format 

- All archive actions are logged in archive_log.txt in this format:

```bash 
2025-06-26 19:45:30 - Archived /var/log into archived_logs/logs_archive_20250626_194530.tar.gz (Size: 12M)
2025-06-26 19:45:30 - Deleted archives older than 7 days from archived_logs/
```

## Cron Job Friendly
You can automate with the `crontab`: 
```bash
0 3 * * * /home/juhee/log-archive-tool/log-archive.sh /var/log
```
## Permission Note

System log directories like /var/log require sudo access to archive.
Make sure to run the script with sudo if accessing protected system paths 
