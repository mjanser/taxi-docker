# What is taxi?

Taxi is a new interface for Zebra, based on TKS. Its main advantages are:

- Easy to install
- Written in Python (yes, that's an advantage!)
- Quite extensible
- More complete

Basically, Taxi allows you to do the following:

- Parse timesheets and have a summary for each day
- Create new timesheets
- Search for projects and their activities
- Record time spent on an activity

> [https://github.com/sephii/taxi](https://github.com/sephii/taxi)

# How to use this image

## Run the taxi docker image

    docker run \
        --rm \
        -i \
        -t \
        -v $HOME/.tksrc:/root/.tksrc \
        -v $HOME/.taxi:/root/.taxi \
        -v /path/to/zebra/files:/path/to/zebra/files \
        mjanser/taxi

This runs taxi and passes all parameters to it. You have to mount the data directory of the Zebra files in docker as shown above.

## Install script

For simplicity you can install a script inside you PATH, for example in `/usr/local/bin/taxi`, which executes the above command.
You can use the script at [https://github.com/mjanser/taxi-docker/taxi.sh](https://github.com/mjanser/taxi-docker/taxi.sh) for this.
This script extracts the data directory from your `~/.tksrc` for mounting it in the docker image. For that, the data directory has to be defined as an absolute path.

# User Feedback

## Issues

If you have any problems with or questions about this image, please create a [GitHub issue](https://github.com/mjanser/taxi-docker/issues).

## Contributing

You are invited to contribute new features, fixes, or updates. Just fork the repository and create a pull request.
