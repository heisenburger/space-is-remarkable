echo "Hello world!"

# Set defaults
NASA_API_KEY=DEMO_KEY

# Import secret variables
source secrets.sh

# Get NASA Astronomy Image of the Day
wget `curl https://api.nasa.gov/planetary/apod?api_key=$NASA_API_KEY | jq .url | tr -d '"'`