
# Dobby playgound

The repo lets you create a dockerized Dobby service and generate a Python
client. All artifacts are initial prototypes.

# Before you begin

The Makefile assumes that you have swagger-codegen-cli.jar file in ~/bin. The
file can be downloaded [here](https://mvnrepository.com/artifact/io.swagger/swagger-codegen-cli/2.2.3)

# How to run

  make dobby-image
  make dobby-swagger

  docker run -it --net=host dobby   # one terminal
  ./basic_test.py                   # another terminal

The test create two identifiers - 'foo' and 'bar', creates a link between them,
and search the graph.

