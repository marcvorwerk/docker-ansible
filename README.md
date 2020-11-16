# docker-ansible


docker run --rm -v /tmp/example-playbook:/ansible:ro marcvorwerk/docker-ansible:latest ansible-playbook hello_world.yaml


Map your Key with the following Option:
-v ~/.ssh/your-key:/root/.ssh:ro
