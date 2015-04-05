# Mediocre - A media library for heroku and s3

We recently launched a static blog and need a way to easily upload photos and pull from a media library.

This was hacked together using our media gem assetable.

PRs welcome.

## Getting started

Click deploy to heroku below.

Fill out your s3 credentials and bucket name as config variables on heroku.

Login with seed_username / seed_password listed in your heroku config.


*Create additional users*

`heroku run rake create_user`

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/j-mcnally/mediocre)