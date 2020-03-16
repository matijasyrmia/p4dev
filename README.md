# Installing P4 Enviroment

## Installing 
`sudo ./p4install.sh`

This will download folowing repos and build them.
1. [Protobuf](https://github.com/protocolbuffers/protobuf)
2. [Behavioral Model](https://github.com/p4lang/behavioral-model)
3. [P4 compiler](https://github.com/p4lang/p4c)
4. All dependecies and libraries in C++ and Python3

## Testing
`cd p4c/build`

`sudo make -j8 check`

There are over 1400 tests all needs to pass. 413 tests is imported from behavioral model repository.
