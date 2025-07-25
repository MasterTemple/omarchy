curl -sS https://starship.rs/install.sh | sh
# echo 'eval "$(starship init bash)"' >>.bashrc

toml=$(cat <<EOF
[character] # The name of the module we are configuring is 'character'
success_symbol = '[λ](bold green)'
error_symbol = '[λ](bold red)'
EOF
)
echo "$toml" > ~/.config/starship.toml