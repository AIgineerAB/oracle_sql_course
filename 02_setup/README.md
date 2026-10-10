# Setup podman and oracle26ai 

**Part 1 - setup oracle26ai with podman**

<a href="https://youtu.be/BG19v6LHVNc" target="_blank">
  <img src="https://github.com/kokchun/assets/blob/main/oracledb/setup_oracle.png?raw=true" alt="setup oracl" width="600">
</a>

**Part 2 - setup sqlcl**

<a href="https://youtu.be/9JIvpiZU3OE" target="_blank">
  <img src="https://github.com/kokchun/assets/blob/main/oracledb/setup_sqlcl.png?raw=true" alt="setup sqlcl command line" width="600">
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
sudo dnf install -y podman-compose
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

## Now spin up a container from your downloaded image

We will spin up a container using podman-compose. Create a compose.yaml file and place it in the root of your repo and copy the code from compose.yaml in this repo.

Then create a .env file which contains the variable 

```env
ORACLE_PWD=supah_secret_passw0rd0
```

Also change permission of you .env file to 600 so that only you can read and write to it 

```bash
chmod 600 .env
```

> [!IMPORTANT]
> make sure that your gitignore has .env so that it is not included in version control

Now run 

```bash
podman compose up -d
```

to spin up the container.

## Run a hello world PL/SQL script

Now it's time to create a PL/SQL script that outputs a text. Create a hello.pls script and type in the code in this repo section.

Use the following command to run the script. Note that you need to source your .env first so that environment variable ORACLE_PWD is not empty. 

```bash
podman exec -i oracle-free sqlplus -s system/"$ORACLE_PWD@FREEPDB1" < hello.pls
```

## Create a script to simplify this run 

Type in the code from `orac` and make a symlink so that it is available from anywhere 

```bash
ln -s "$PWD/orac" ~/.local/bin/orac
```

Then you can basically run 

```bash
orac <script_name>
```


## Few useful podman commands

Here are a few other useful podman commands

```bash
# check which images you have
podman images

# check running containers
podman ps

# check all containers, even closed ones
podman ps -a

# check volumes
podman volume ls

# shutdown container
podman compose down
```

> [!NOTE]
> you need to be in the folder where compose.yaml live in order to do podman compose up and podman compose down 

## Read more 

- [podman documentation](https://podman.io/docs)