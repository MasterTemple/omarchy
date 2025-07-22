sudo yay -S openssh --noconfirm
# Start the SSH Service: Start the SSH daemon using the following command:
sudo systemctl start sshd
# Enable SSH at Boot: To ensure the SSH service starts automatically on boot, enable it with:
sudo systemctl enable sshd