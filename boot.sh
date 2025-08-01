# ascii_art=' ▄██████▄    ▄▄▄▄███▄▄▄▄      ▄████████    ▄████████  ▄████████    ▄█    █▄    ▄██   ▄
# ███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███   ███    ███ ███    ███   ███    ███   ███   ██▄
# ███    ███ ███   ███   ███   ███    ███   ███    ███ ███    █▀    ███    ███   ███▄▄▄███
# ███    ███ ███   ███   ███   ███    ███  ▄███▄▄▄▄██▀ ███         ▄███▄▄▄▄███▄▄ ▀▀▀▀▀▀███
# ███    ███ ███   ███   ███ ▀███████████ ▀▀███▀▀▀▀▀   ███        ▀▀███▀▀▀▀███▀  ▄██   ███
# ███    ███ ███   ███   ███   ███    ███ ▀███████████ ███    █▄    ███    ███   ███   ███
# ███    ███ ███   ███   ███   ███    ███   ███    ███ ███    ███   ███    ███   ███   ███
#  ▀██████▀   ▀█   ███   █▀    ███    █▀    ███    ███ ████████▀    ███    █▀     ▀█████▀
#                                           ███    ███                                    '

ascii_art='          _            _                       _
                    | |          | |                     | |
 _ __ ___   __ _ ___| |_ ___ _ __| |_ ___ _ __ ___  _ __ | | ___
| '_ ` _ \ / _` / __| __/ _ \ '__| __/ _ \ '_ ` _ \| '_ \| |/ _ \
| | | | | | (_| \__ \ ||  __/ |  | ||  __/ | | | | | |_) | |  __/
|_| |_| |_|\__,_|___/\__\___|_|   \__\___|_| |_| |_| .__/|_|\___|
                                                   | |
                                                   |_|           '


echo -e "\n$ascii_art\n"

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning Omarchy..."
rm -rf ~/.local/share/omarchy/
git clone https://github.com/basecamp/omarchy.git ~/.local/share/omarchy >/dev/null

# Use custom branch if instructed
if [[ -n "$OMARCHY_REF" ]]; then
  echo -e "\eUsing branch: $OMARCHY_REF"
  cd ~/.local/share/omarchy
  git fetch origin "${OMARCHY_REF}" && git checkout "${OMARCHY_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/omarchy/install.sh
