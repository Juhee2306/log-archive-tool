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

echo "$TIMESTAMPS - Archived $LOG_DIR into $ARCHIVE_NAME" >>archive_log.txt
echo " Logs archived to : $ARCHIVE_PATH"
