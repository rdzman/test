MATPOWER Docker Image
=====================

A complete [MATPOWER][1] environment is available in a [Docker][2]
container by using the [matpower/matpower][3] image on [Docker Hub][4].
This image essentially just adds [MATPOWER][5] and the [MATPOWER
Extras][6] to the [matpower/octave][7] image, which is simply the
corresponding official [GNU Octave][9] image ([gnuoctave/octave][8])
with several optimization packages pre-installed.

This image supports both a simple command-line mode and, with an X11
server running on the host, the full Octave GUI.


System Requirements
-------------------

You will need working installations of:
- [Docker][10], and
- an X11 server _(optional, required for use of the GUI)_


Quick Start
-----------

### 1. Get the MATPOWER Docker image
```
docker pull docker.io/matpower/matpower:latest
```

### 2. Start Octave in the container

**_command line only_**
```
docker run -it --rm matpower/matpower:latest octave-cli
```

**_graphical user interface_**  
_(requires X11 server to be running and `DISPLAY` environment variable
to be set properly)_
```
docker run -it --rm --network=host --env="DISPLAY" \
  --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
  matpower/matpower:latest octave --force-gui
```

This runs [Octave][9] in your newly launched Docker container, with
[MATPOWER][1] and the [MATPOWER Extras][6] already installed in the
Octave path.


### 3. Exectute MATPOWER commands

For example ...
```
mpver
test_matpower
runpf('case9');
mpopt = mpoption('verbose', 2);
runopf('case2383wp', mpopt);
```


Additional Notes
----------------

- To run a different version of [MATPOWER][1] or [Octave][9], replace
  the `latest` tag with the appropriate tag from the table in the Versions
  section below.

- You can also replace `octave-cli` or `octave --force-gui` in the
  `docker run` command with `bash` to start your container at the shell
  prompt. From there you can, for example, start multiple GUI instances of
  [Octave][9] in the same container. Two useful aliases defined in the shell
  are `ot` and `otg` to start command-line and GUI versions of [Octave][9],
  respectively.

- You can also access [Octave][9] and [MATPOWER][1] in your running container
  from the command-line on your host machine via `docker exec` where the
  `<container-name>` can be found via `docker container ls --all`.
  ```
  docker exec -it <container-name> octave-cli
  ```


Versions
--------

Several images are available with different combinations of
[MATPOWER][1] and [GNU Octave][9] versions, with the following tags and
naming conventions:

|       tag          |  MATPOWER version  |  Octave version   |
| ------------------ | :----------------: | :---------------: |
| **_development versions_** |            |                   |
| `dev-latest`       | _latest_ `master`  | _current release_ |
| `dev-latest-5.2.0` | _latest_ `master`  |       5.2.0       |
| `dev-YYYY-MM-DD`   | `master` _on date_ | _current release_ |
|                    |                    |                   |
| **_release versions_** |                |                   |
| `latest`           | _current release_  | _current release_ |
| `7.1c`             |        7.1         | _current release_ |
| `7.1`              |        7.1         |       5.2.0       |
| `7.0c`             |        7.0         | _current release_ |
| `7.0`              |        7.0         |       5.1.0       |
| `6.0c`             |        6.0         | _current release_ |
| `6.0`              |        6.0         |       4.2.2       |
| `5.1c`             |        5.1         | _current release_ |
| `5.1`              |        5.1         |       4.0.3       |
| `5.0c`             |        5.0         | _current release_ |
| `5.0`              |        5.0         |       4.0.3       |
| `4.1c`             |        4.1         | _current release_ |
| `4.1`              |        4.1         |       4.0.3       |
| `4.0c`             |        4.0         | _current release_ |
| `4.0`              |        4.0         |       4.0.3       |

Here _current release_ means the most recent numbered release (currently
7.1 for [MATPOWER][1], and 6.4.0 for [Octave][9]) and _latest_ `master`
refers to the most recent build from the `master` branch of the
[MATPOWER][5] and [MATPOWER Extras][6] (and possibly [MP-Element][11]
GitHub repositories.


---

[1]: https://matpower.org
[2]: https://www.docker.com
[3]: https://hub.docker.com/r/matpower/matpower
[4]: https://hub.docker.com/
[5]: https://github.com/MATPOWER/matpower
[6]: https://github.com/MATPOWER/matpower-extras
[7]: https://hub.docker.com/r/matpower/octave
[8]: https://hub.docker.com/r/gnuoctave/octave
[9]: https://octave.org
[10]: https://www.docker.com/products/docker-desktop
[11]: https://github.com/MATPOWER/mp-element
