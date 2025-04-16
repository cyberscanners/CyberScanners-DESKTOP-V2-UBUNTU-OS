#!/data/data/com.termux/files/usr/bin/bash

clear

# Colors
y="\e[1;33m"
r="\e[1;31m"
b="\e[1;34m"
pink='\033[1;35m'
GREEN='\033[0;32m8'
NC='\033[0m' # No Color

# Banner
echo -e "${y}"
echo "  ██████╗██╗   ██╗██████╗ ███████╗██████╗ "
echo " ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"
echo " ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"
echo " ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"
echo " ╚██████╗   ██║   ██████╔╝███████╗██║  ██║"
echo "  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo -e "${y}"
echo " ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ ███████╗"
echo " ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗██╔════╝"
echo " ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝███████╗"
echo " ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗╚════██║"
echo " ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║███████║"
echo " ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝"

echo -e "${b}"
echo " ██╗   ██╗██████╗ ██╗   ██╗███╗   ██╗████████╗██╗   ██╗"
echo " ██║   ██║██╔══██╗██║   ██║████╗  ██║╚══██╔══╝██║   ██║"
echo " ██║   ██║██████╔╝██║   ██║██╔██╗ ██║   ██║   ██║   ██║"
echo " ██║   ██║██╔══██╗██║   ██║██║╚██╗██║   ██║   ██║   ██║"
echo " ╚██████╔╝██████╔╝╚██████╔╝██║ ╚████║   ██║   ╚██████╔╝"
echo "  ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝    ╚═════╝ "

echo -e "${b}"
echo " ██████╗ ███████╗███████╗██╗  ██╗████████╗ ██████╗ ██████╗ "
echo " ██╔══██╗██╔════╝██╔════╝██║ ██╔╝╚══██╔══╝██╔═══██╗██╔══██╗"
echo " ██║  ██║█████╗  ███████╗█████╔╝    ██║   ██║   ██║██████╔╝"
echo " ██║  ██║██╔══╝  ╚════██║██╔═██╗    ██║   ██║   ██║██╔═══╝ "
echo " ██████╔╝███████╗███████║██║  ██╗   ██║   ╚██████╔╝██║     "
echo " ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝     "

echo -e "${GREEN}                                > DEVALOPER CYBER BLACK LION! <<${NC}"

termux-open-url https://chat.whatsapp.com/Cz5cMCMKXpFKCHE2q6yRG3

#!/bin/bash

# Set password
PASSWORD="cyber2002"

# Ask for password
echo -n "Enter password: "
read -s user_input
echo ""

# Check password
if [ "$user_input" == "$PASSWORD" ]; then
    echo "Access granted."
    
    # Place your tool code here
    echo "Running your Termux tool..."
    
    # Example: echo "Hello from your tool!"
    
else
    echo "Access denied. Incorrect password."
    exit 1
fi


echo -e "${GREEN}== Ubuntu GUI Desktop Setup for Termux ==${NC}"
echo -e "${GREEN}[*] Updating Termux...${NC}"
pkg update -y && pkg upgrade -y

echo -e "${GREEN}[*] Installing dependencies...${NC}"
pkg install proot-distro dialog -y

echo -e "${GREEN}[*] Installing Ubuntu 22.04...${NC}"
proot-distro install ubuntu

echo -e "${GREEN}[*] Configuring Ubuntu environment...${NC}"
PROOT_DIR="$PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu"

# Create post-install desktop setup script
cat > "$PROOT_DIR/root/gui-setup.sh" << 'EOF'
#!/bin/bash
apt update && apt upgrade -y

echo "Installing XFCE4 Desktop and TigerVNC..."
DEBIAN_FRONTEND=noninteractive apt install -y xfce4 xfce4-goodies tightvncserver

echo "Setting up VNC server..."
mkdir -p /root/.vnc
echo "#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &" > /root/.vnc/xstartup
chmod +x /root/.vnc/xstartup

# Set default password (you can change later with vncpasswd inside Ubuntu)
echo "vncpassword" | vncpasswd -f > /root/.vnc/passwd
chmod 600 /root/.vnc/passwd

echo "Setup complete. To start GUI:"
echo "vncserver :1 -geometry 1280x720 -depth 24"
EOF

chmod +x "$PROOT_DIR/root/gui-setup.sh"

# Add message to bashrc
cat >> "$PROOT_DIR/root/.bashrc" << 'EOF'

if [ -f /root/gui-setup.sh ]; then
  echo -e "\e[32mTo complete your CYBER SCANNERS GUI Desktop setup, run.\e[0m"
fi
EOF

# Final output
echo -e "${GREEN}\nUbuntu installation complete!${NC}"
echo -e "${GREEN}To start Ubuntu: ${NC}proot-distro login ubuntu"
echo -e "${GREEN}Inside Ubuntu, run: ${NC}bash ~/gui-setup.sh"
echo -e "${GREEN}Then start the GUI with: ${NC}vncserver :1"
echo -e "${GREEN}Use a VNC viewer app (like RealVNC) and connect to: ${NC}127.0.0.1:5901"
