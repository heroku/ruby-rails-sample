# rails-pg-fig-sample

This repository is a fork of [heroku/ruby-rails-sample][] that aims to provide a
sample application that uses Docker (through [Fig][]) to setup a simple Rails
Development Environment: a web application and a PostgreSQL database.

## Installation
### Docker
Before proceeding to install [Fig][], first you must have Docker installed on
your system. Since the installation instructions may change over time, please
refer to [Docker Documentation: Installation][] for your OS specific
instructions.

[Docker Documentation: Installation]: https://docs.docker.com/installation/

**Note**: Because the Docker Engine uses Linux-specific kernel features, you'll
need to use a lightweight virtual machine (VM) to run it on OS X. The VM that
was chosen to be supported by our internal development process is `boot2docker`,
even though there are other alternatives. Please use the installation
instructions that are specific of that VM.

### Fig
Installation instructions for [Fig][] may be found in [Installing Fig][].

[Installing Fig]: http://www.fig.sh/install.html

## Usage
Before we can run the dev env, we must first setup the database. This is only
needed when running for the first time. After doing so, we'll be able to run
both applications simultaneously.

```
fig up -d db              # starts the database detached from the current window
fig run web rake db:setup # setups the database by running a one-off command
fig up                    # starts the web application attached to the window
```

The app should now be running on [localhost:3000](http://localhost:3000/).

**Note**: The first time you run `fig up` will _pull_ (download) the necessary
Docker images. This may take a while.

Since the database has been setup, from now on it is possible to start both
applications simply by running `fig up`. For stopping the applications, you may
run `fig stop`. For removing the containers, you may run `fig rm`. Run
`fig help` for more options or refer to the [Fig CLI Documentation][]. For
customizing the `fig.yml`, refer to [fig.yml Documentation][].

[Fig CLI Documentation]: http://www.fig.sh/cli.html
[fig.yml Documentation]: http://www.fig.sh/yml.html

## Documentation
For more information about using Docker, `boot2docker` or Fig, please refer to:

- [Docker](https://docs.docker.com/)
- [boot2docker](https://github.com/boot2docker/boot2docker) (Mac OS X only)
- [Fig][]

[heroku/ruby-rails-sample]: https://github.com/heroku/ruby-rails-sample
[Fig]: http://fig.sh/
