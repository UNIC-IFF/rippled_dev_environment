<p align="center"><img src="https://ripple.com/wp-content/themes/ripple-beta/assets/img/logo/ripple-logo-color@2x.png" /></p>

# Rippled-Dev-Environment
This repository contains a set of scripts, settings and procedures helping a developer set his/her own developing environemnt.

# rippled [![Build Status]]   [![Join the chat at]]

## Overview
In this repository, the developes tried to simplify the procedure of having Rippled installed and test possible changes of their code. For this reason,
they have created several scripts that automate the procedure of the installation and execution of the unittests Ripple provides. Also, docker 
is a simple way of having the source code and its dependencies ready without the need of reconfigure the environment the code is going to be installed.

## Documentation
Besides this README file, more documentation is available in the WiKi belonging to this repository.

## Docker Installation for Unitesting
1. Clone this Repositoy
2. Download or Clone Rippled Source code inside the previously cloned repository
3. Run create_docker_images.sh (./scripts/create_docker_images.sh) from which you will get 3 docker images
4. Run preconfigure_rippled.sh (./scripts/preconfigure_rippled.sh) which script will prepare your environment with the nesseary configurations
5. Run build_rippled.sh (./scripts/build_rippled.sh) which it will compile the Ripple Source Code on your machine
6. Set your working directory to build_rippled
7. Run Ripple UnitTests (./rippled -u)
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

## Acknowledgment
This project is fully funded by [UBRI] (https://ubri.ripple.com/) 

