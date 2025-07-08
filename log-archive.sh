if [[ "$1" == "--help" ]]; then
  echo "Usage: ./log-archive.sh <log-directory>"
  echo ""
  echo "This tool compresses the specified log directory into a .tar.gz file,"
  echo "stores it in 'archived_logs/', logs the archive details (size, date),"
  echo "and automatically deletes archives older than 7 days."
  echo ""
  echo "Example:"
  echo "  ./log-archive.sh /var/log"
  exit 0
fi


if [ -z "$1" ]; then
  echo " no usage : ./log-archiver.sh <log-directory>"
  exit 1
fi

LOG_DIR=$1

if [ ! -d "$LOG_DIR" ]; then
  echo "ERROR! : $LOG_DIR does not exist "
  exit 1
fi

TIMESTAMP=$(date +%Y%m%d_%H%M%S)

ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="archived_logs/$ARCHIVE_NAME"

tar -czf "$ARCHIVE_PATH" "$LOG_DIR"

ARCHIVE_SIZE=$(du -h "$ARCHIVE_PATH" | cut -f1)

echo "$(date '+%Y-%m-%d %H:%M:%S') - Archived $LOG_DIR into $ARCHIVE_PATH (Size: $ARCHIVE_SIZE)" >> archive_log.txt

find archived_logs/ -name "*.tar.gz" -type f -mtime +7 -exec rm {} \;
echo "$(date '+%Y-%m-%d %H:%M:%S') - Deleted archives older than 7 days from archived_logs/" >> archive_log.txt

