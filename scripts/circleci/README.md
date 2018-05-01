project structure:
```
stupidservices/
              |-- scripts/circleci/sscontainer.sh
              |-- scripts/circleci/deploy.sh
              |
              |-- <someservice>/scripts/container/
                                                 |-- build.sh
                                                 |-- test.sh
                                                 |-- publish.sh
```

sshcontainer.sh calls into the service scripts to handle container builds
example:
```
./sscontainer.sh build echo
```
will result in running the echo services build script at:
```
stupidservices/echo/scripts/container/build.sh
```
