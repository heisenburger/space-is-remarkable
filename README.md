# Space is remarkable

A lil' script that replaces the sleep screen on a reMarkable tablet to a photo from NASA's Astronomy image of the day. Or at least, that's the intent so far. I've never written something like this before so hopefully this goes well!

## Dependencies

`brew install imagemagick` or `sudo port install ImageMagick` for converting jpgs to pngs

`brew install jq` for json querying

## TODO

- [x] ~~Access the NASA API and download a nice image~~
- [ ] Create an overlay image to display custom contact information (opt)
- [x] ~~SSH into the tablet~~
- [ ] Backup current sleep image (only if it's not a space photo already)
- [ ] Load the space photo onto the tablet 
