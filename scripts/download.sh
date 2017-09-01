set -e
if [[ $ARCHIVE_URL ]]; then
  echo "Downloading archive..."
  curl -L -o archive.tar.gz $ARCHIVE_URL
  echo "Download completed, extracting archive to $HTML_ROOT..."
  tar -xzf archive.tar.gz --directory $HTML_ROOT
  echo "Done extracting... HTML Directory Content:"
  ls -la $HTML_ROOT
  nginx;
else
  echo "=> Please provide a ARCHIVE_URL environment variable!"
fi