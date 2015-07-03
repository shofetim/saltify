docker:
  cmd:
    - run
    - name: curl -sL https://get.docker.io/ | sh
    - unless: test -e /usr/bin/docker

/usr/local/bin/docker-compose:
  file.managed:
    - user: ubuntu
    - group: ubuntu
    - mode:  755
    - source: salt://docker/files/docker-compose

fig:
  cmd:
    - run
    - name: curl -L https://github.com/docker/fig/releases/download/1.0.1/fig-`uname -s`-`uname -m` > /usr/local/bin/fig; chmod +x /usr/local/bin/fig
    - unless: test -e /usr/local/bin/fig

ubuntu:
  group:
    - present
  user.present:
    - groups:
      - ubuntu
      - adm
      - dialout
      - cdrom
      - sudo
      - floppy
      - audio
      - dip
      - video
      - plugdev
      - netdev
      - docker
