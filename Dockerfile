FROM debian

RUN apt-get update && apt-get install --no-install-recommends -y apt-utils git build-essential debhelper lintian