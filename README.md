# CyberScanners-DESKTOP-V2-UBUNTU-OS

# 𝐂𝐘𝐁𝐄𝐑 𝐒𝐂𝐀𝐍𝐍𝐄𝐑𝐒 𝐇𝐀𝐂𝐊𝐈𝐍𝐆 𝐓𝐄𝐑𝐌𝐔𝐗 𝐔𝐁𝐔𝐍𝐓𝐔 22.04 𝐎𝐒 𝐃𝐄𝐒𝐊𝐓𝐎𝐏.

TERMUX INSTALL.

$ pkg update && pkg upgrade

$ pkg install git

$ pkg install x11-repo -y

$ pkg install xfce4 xfce4-terminal xrdp tigervnc -y

$ git clone https://github.com/cyberscanners/CyberScanners-DESKTOP-V2-UBUNTU-OS.git

$ cd CyberScanners-DESKTOP-V2-UBUNTU-OS

$ bash ubuntu-install.sh

$ bash login-ubuntu.sh

$ bash gui-setup.sh

$ vncserver :1

1. Termux තුළ Ubuntu install කරනවා.


2. Ubuntu එකට xfce4 වැනි lightweight desktop environment එකක් install කරනවා.


3. GUI එක run කරන්න VNC server install කරනවා.


4. Android එකෙන් VNC client app (e.g., VNC Viewer) එකක් වලින් GUI එකට connect වෙන්න පුළුවන්.


# විශේශත්වය.

• ඔයාට Python, Node.js, Bot scripts, Telegram bots, Discord bots, CLI tools හැම එකම run කරන්න පුළුවන්.

# VNC PASSWORD

vncpassword


# මෙම Termux Ubuntu GUI desktop setup එක සාර්ථකව ක්‍රියාත්මක වීමට අවශ්‍ය වන RAM සහ Storage අවශ්‍යතා:

1. RAM අවශ්‍යතා:

• Ubuntu GUI සහ XFCE Desktop යන දෙකම ධාවනය කිරීමට අවම RAM අවශ්‍යතාවය:

අවම: 2 GB

තවත් ස්ථාවරව (Recommended): 3 GB හෝ වැඩි RAM


• Low-end devices වල 1.5 GB RAM ක් තියෙනවා නම්, GUI lag සහ crash වීමේ හැකියාව තියෙනවා.

2. Storage (Internal Storage) අවශ්‍යතා:

• Ubuntu root filesystem (~2.5 GB)

• XFCE4 Desktop + VNC (~1.5–2 GB)

• Extra packages, caches, logs, configs


3. සම්පූර්ණ අවශ්‍ය storage එක:

අවම: 5 GB

නිවැරදිව වැඩ කරන්න: 6–8 GB+

# Extra Tips:

• Termux storage permission (termux-setup-storage) දාන්න, files manage කරන්න.

• GUI එන විට performance වැඩි කරන්න නම් animations disable කරන්න.

• Internal storage free space එක always 1GB+ තියන එක හොඳයි temporary files වලට.


ඔයාගේ device එකේ:

RAM: 2 GB

Storage: 16 GB

Run වෙයිද?

ඇතිවෙන්න පුළුවන් ගැටලු:

• RAM 2 GB නිසා heavy multitasking වලදි slow වෙනවා.

• GUI animations හෝ multiple apps open කරාම lag වීම.

• Storage 16 GB තියෙනත්, Android system files already use ~6–10 GB, so Ubuntu+XFCE+updates වලට අවශ්‍ය free space ~6–8 GB තිබිය යුතුයි.



