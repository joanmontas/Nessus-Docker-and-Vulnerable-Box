# Nessus Vulnerability Scan on VulHub

# Description
Setup vulnerable environment to practice vulnerability assesment.
# Setup
## Basic
To setup, run the vulhub_setup executable to 'setup' vulhub and 'build' and 'up' the nessus docker.
```bash
    foo@bar$: ./vulhub_setup.sh
    foo@bar$: docker-compose; docker-compose up -d
```
In order to setup an ansible user in the Vulhub machine, perform the following.
```bash
    foo@bar$: docker cp vulhub_setup_ansible_user.sh <container_id_or_name>:/root
    foo@bar$: docker exec -it <container_id_or_name> /bin/bash -c "bash /root/vulhub_setup_ansible_user.sh"
```

## Nessus agent installation in via ansible
TODO
