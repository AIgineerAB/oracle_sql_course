# Setup 

<a href="" target="_blank">
  <img src="https://github.com/kokchun/assets/blob/main/FOLDER_NAME/.png?raw=true" alt="DESCRIPTION" width="600">
</a>

This setup requires that you have already installed a RHEL based linux distribution such as oracle linux. You could have it in a virtual machine such as one inside of VirtualBox. 

## Install

Start with updating your system with this command 

```bash
sudo dnf update -y
```

Now install podman

```bash
sudo dnf install -y podman

# pulls down the image 
podman pull container-registry.oracle.com/database/free:latest
```