## My Settings and Config Files for Polybar - Vampire: The Masquerade Style

### Requirements:

- BSPWN already installed
- Polybar requirements properly set up
- VictorMono and/or Hack Nerd fonts from NerdFonts installed

### Instructions:

1. Clone the repository, preferably in a separate folder to avoid conflicts.
(Use this as if it were code)
```bash
 git clone https://github.com/ThePunkster/vampireDotfile2.git
```

2. Provide execution permissions to setup.sh.
```bash
 chmod +x setup.sh
```
3. Run the setup as a non-privileged user
```bash
 ./setup.sh
```
4. Copy and paste the content of the 'Function' file into your .zshrc file:
```bash
 # Target function
function settarget(){
    ip_address=$1
    machine_name=$2
    echo "$ip_address $machine_name" > /home/morgan/.config/bin/target
}```

function cleartarget(){
    echo '' > /home/morgan/.config/bin/target
}
```

### SCREENSHOT
![Descripción de la imagen](https://raw.githubusercontent.com/ThePunkster/vampireDotfile2/main/image.webp)
