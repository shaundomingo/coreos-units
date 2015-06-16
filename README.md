## Synopsis

This is my collection of CoreOS unit files. As I build them and present them, I add them to this repository.

## Configuration

In some of the example units you need to configure environment variables to start the required containers. Take a look at each unit before running them.

## Motivation

I love CoreOS. Well not everything, always, but the whole concept of deploying fault-tolerent, highly scalable solutions always gets me going. CoreOS brings me a step closer to fulfilling this dream. If only my unitfiles would be created for me and everything (and everyone) could read my mind.

## Installation

Differs for each unit file, but in general:

    cd (functional unit dir)
    fleetctl destroy unitfilename@{1..n}.service (or sometimes just unitfilename.service)
    fleetctl unload unitfilename@.service
    fleetctl destroy unitfilename@.service
    fleetctl submit unitfilename@.service
    fleetctl start unitfilename@{1..n}.service

## Tests

Maybe one day!

## Contributors

I'm keen to build up this repository for training purposes. If you have more examples, feel free to add them in. Send me a PR.

## License

Pfft. Just use it. That's what it's for.