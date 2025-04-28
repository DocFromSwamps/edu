#!/bin/bash

CSv_FILE="/opt/user.csv"
while IFS=, read -r username password group; do
samba-tool user create "$username" "$password" --home-directory="/home/$username" --uid="$username"
samba-tool group addmembers $group $username
done < "$SCV_FILE"
