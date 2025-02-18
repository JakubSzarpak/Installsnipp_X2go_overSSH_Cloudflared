####1. ###########

sudo dnf config-manager --set-enabled crb

sudo dnf install epel-release

sudo dnf install x2goserver x2goserver-xsession

sudo dnf groupinstall "Server with GUI" --->>>> VERIFY


##############################################################

#####3. Configure X2Go to Use GNOME:#############

######When setting up a new session in the X2Go client:#########

Session Type: Select "Custom Desktop"
Command: Enter gnome-session


##############################################################

sudo systemctl set-default graphical.target
sudo systemctl enable gdm
sudo systemctl start gdm

##############################################################

sudo firewall-cmd --add-service=ssh --permanent
sudo firewall-cmd --reload


##############MODIFY PORT IN sshd_config!!!!!!!!!!! ############
