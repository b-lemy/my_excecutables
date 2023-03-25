ssh-keygen
## Copying the Public Key Using ssh-copy-id
ssh-copy-id username@remote_host

## Copying the Public Key Using SSH
cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && cat >> ~/.ssh/authorized_keys"

## Step 4 — Disabling Password Authentication on Your Server
sudo nano /etc/ssh/sshd_config

## uncomment
PasswordAuthentication no

## we need to restart the sshd service:
sudo systemctl restart ssh

ssh username@remote_host ## to confirm if everything is good
