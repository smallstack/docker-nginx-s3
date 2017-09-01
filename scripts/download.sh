set -e
if [[ $ARCHIVE_URL ]]; then
  echo "Downloading archive..."
  cd /tmp
  curl -L -o archive.tar.gz $ARCHIVE_URL
  tar -xzf archive.tar.gz --directory $HTML_ROOT
else
  echo "=> Please provide a ARCHIVE_URL environment variable!"
fi