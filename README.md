# docker-ansible

Simple Docker Container to use ansible. In my case i would like to use it for CI/CD Pipelines such as drone.io or Jenkins.

## Example

```docker run --rm -v /tmp/example-playbook:/ansible:ro marcvorwerk/docker-ansible:latest ansible-playbook hello_world.yaml´´´


Map your Key with the following Option:
-v ~/.ssh/your-key:/root/.ssh:ro
