ipyrun
======

debian:wheezy image with pyrun and ipython[notebook]

looks for volume mounted to /notebooks

will pip install requirements.txt found in /notebooks

Basic run command.

```docker run -dP `pwd`:/notebooks srhopkins/ipyrun```

Use it a lot and want quick access? Add this to .bashrc file.

```alias notebook='docker run -dtP `pwd`:/notebooks srhopkins/ipyrun'```
