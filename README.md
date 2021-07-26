<p align="center"><img src="https://ripple.com/wp-content/themes/ripple-beta/assets/img/logo/ripple-logo-color@2x.png" /></p>

# Rippled-Dev-Environment
This repository contains a set of scripts, settings and procedures helping a developer set his/her own developing environemnt.

# rippled [![Build Status]]   [![Join the chat at]]

## Overview
In this repository, the developers tried to simplify the procedure of building and testing the Rippled source code. For this reason,
they have created several scripts that automate the procedure of building and execution of the unittests Ripple provides. Also, docker 
is a simple way of having the source code and its dependencies ready without the need to reconfigure the environment the code is going to be installed.

### How it works
This development environment spawns two docker containers, one is used to build the source code and the other to run the unittests (, or a rippled node). Those containers share the same directory of the development machine as bind volumes.
* build_rippled.sh script builds the source code. ;
* run_rippled_unittests.sh script spawns a runner container that uses the executable generated in the BUILD_DIR;
* The environment variables used by the scripts are defined in common_vars.sh script. ;


## Documentation
Besides this README file, more documentation is available in the WiKi belonging to this repository.

## Docker Installation for Unit testing
1. Clone this Repositoy
2. Download or Clone Rippled Source code inside the previously cloned repository
3. Run create_docker_images.sh (./scripts/create_docker_images.sh) from which you will get 3 docker images
4. Run preconfigure_rippled.sh (./scripts/preconfigure_rippled.sh) which script will prepare your environment with the nesseary configurations
5. Run build_rippled.sh (./scripts/build_rippled.sh) which it will compile the Ripple Source Code on your machine
6. Set your working directory to build_rippled
7. Run Ripple UnitTests ( ./scripts/run_rippled_unittests.sh ) 
8. If there are no test failures, you can be fairly certain that your rippled executable compiled correctly.

## Development

To contribute to the development of the Rippled-Dev-Environment, fork the repository and create pull requests.

## Contributing

You may contribute to Rippled-Dev-Environment you should:

1. Fork [this repository](https://gitlab.com/unic-iff/ripple-research/rippled-dev-environment);
2. Work on your proposed changes, preferably through submiting [issues](https://gitlab.com/unic-iff/ripple-research/rippled-dev-environment/issues);
3. Push changes on your fork;
3. Submit a Pull Request;
4. Follow/answer related [issues](https://gitlab.com/unic-iff/ripple-research/rippled-dev-environment/issues) (see Feedback-Chanel, below).

## Lead Developers

The following lead developers are responsible for this repository and have admin rights. They can, for example, merge pull requests.
*  Antonis Inglezakis (@ainglezakis)
*  Marios Touloupou (@mtouloup)

## Feedback-Chanel
* GitLab issues

## Acknowledgements
This work is funded by the Ripple’s Impact Fund, an advised fund of Silicon Valley Community Foundation (Grant id: 2018–188546). [UBRI] (https://ubri.ripple.com/) 

