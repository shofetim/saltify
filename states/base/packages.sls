base-packages:
  pkg.installed:
    - names:
        - iotop
        - bmon
        - git
        - htop
        - tmux
        - rsync
        - tree
        - w3m
        - emacs

remove-default-packages:
  pkg.removed:
    - names:
        - rpcbind
        - nfs-common
