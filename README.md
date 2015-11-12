Firefox Builds for Snippet Development
======================================

Tools and Dockerfiles to build Docker Images of Firefox for snippet
developement. It's linked to
[dockerhub](https://hub.docker.com/r/giorgos/fx-docker/) as an
automated so you can always get up to date images from there.

For example to launch firefox 41:

> docker run -t -i -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY firefox-41.0

or Firefox 4:

> docker run -t -i -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY firefox-4.0

You can also define a custom Snippets provider with SNIPPET_HOST env variable.

> docker run -t -i -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e SNIPPET_HOST=http://localhost:8000 firefox-4.0

  *note:*

  http://localhost refers to containers internal ip, so if you run a
  development instance on your laptop you probably want to change
  localhost to the laptop's hostname.


## Testing snippets fast

0. Setup your local [snippets server](https://github.com/mozilla/snippets-service/)
1. Setup the snippet template and snippet
2. Copy `./bin/local_variables.sh-dist` to `./bin/local_variables.sh`
and update SNIPPET_HOST to your host.
3. Run `./bin/test.sh`

The final step will sequentially start Firefox browsers from version
15.0 to the latest version. The browser gets auto-configured to fetch
snippets from your server thus you only have to check that the snippet
is OK and then close the browser window. In a moment the next Firefox
version will appear.

You can avoid setting SNIPPET_HOST and test the production snippets
against multiple versions of Firefox.
