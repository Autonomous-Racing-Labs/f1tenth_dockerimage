# Docker Container to run ros2 with all dependencies required to run google cartographer, and rplidar for f1tenth.

to build the docker image, invoke the following command:
`sudo docker build -t f1tenth`.

after that, the docker image should be known to docker. 

Verify this by invoking: `sudo docker image list`

should return the following:
```
REPOSITORY   TAG             IMAGE ID       CREATED       SIZE
f1tenth      latest          bf3c5986cea9   3 days ago    3.09GB
```

the image can now be run in a container with

`sudo docker run -it --rm --device /dev/ttyUSB0:/dev/ttyUSB0 -v /home/itse:/root f1tenth bash`
