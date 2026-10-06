# Setup 

<a href="" target="_blank">
  <img src="https://github.com/kokchun/assets/blob/main/FOLDER_NAME/.png?raw=true" alt="DESCRIPTION" width="600">
</a>

This setup uses podman for containerbased installation as it is much simpler and works for all operating systems. We will use podman here, which is an open source container tool.

## Update system and install podman

Start with updating your system with this command 

```bash
sudo dnf update -y
```

Now install podman

```bash
sudo dnf install -y podman
```

## Pull down oracle26ai image 

```bash
# pulls down the image 
podman pull container-registry.oracle.com/database/free:latest
```

> [!NOTE]
> it takes some time for podman to pull down the image as it is huge ca 9GB 

After it is finished you can check your image with this command

```bash
podman images 
```



## Check podman



## Read more 

- [podman documentation](https://podman.io/docs)