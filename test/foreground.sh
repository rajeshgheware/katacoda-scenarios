launch.sh

echo "Verifying cluster setup....This may take a few minutes..."

while ! nc -z controlplane 30080; do   
  sleep 0.5
done

echo "Started"
echo "done" 