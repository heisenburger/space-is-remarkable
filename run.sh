echo "Hello world!"

# Set defaults
NASA_API_KEY=DEMO_KEY
REMARKABLE_SSH_IP=10.11.99.1 # this won't necessarily work

# Import secret variables
source secrets.sh

# Get NASA Astronomy Image of the Day
# wget `curl https://api.nasa.gov/planetary/apod?api_key=$NASA_API_KEY | jq .url | tr -d '"'`

read -p "Do you need to set up paswordless ssh on this tablet? (y/N) : " SSH_SETUP

if [ $SSH_SETUP = y ]
then
  echo "You will need your tablet's password. You can find it by going into rM / About"
  echo "Setting up ssh..."
  # Make an authorised keys file on the tablet, copy your public key on it
  ssh root@$REMARKABLE_SSH_IP "mkdir -p ~/.ssh && \
        touch .ssh/authorized_keys && \
        chmod -R u=rwX,g=,o= ~/.ssh && \
        cat >> .ssh/authorized_keys" < ~/.ssh/id_rsa.pub
  # Set up your ssh config so that you can just go "ssh remarkable"
  echo -e "\nHost remarkable\n  Hostname 10.11.99.1\n  User root" >> ~/.ssh/config
  echo "Done! You can now type ssh remarkable to connect"
fi

ssh remarkable "cd /usr/share/remarkable/ && \
      
      "