launch.sh
kubectl apply -f /opt/deploy.yaml
rm /opt/deploy.yaml

echo "Waiting for 30080..."

while ! nc -z node01 30080; do   
  sleep 0.5
done

while [ ! -f /usr/local/bin/wait.sh ]; do sleep 1; done; sleep 1;  /usr/local/bin/wait.sh; /usr/local/bin/start.sh

echo "Started"
echo 'done' > /opt/katacoda-background-finished