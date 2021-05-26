launch.sh

echo "Verifying cluster setup....This may take a few minutes..."

while ! nc -z controlplane 30080; do   
  sleep 0.5
done

while [ ! -f /usr/local/bin/wait.sh ]; do sleep 1; done; sleep 1;  /usr/local/bin/wait.sh; /usr/local/bin/start.sh

echo "Started"
echo "done" 