#!/bin/bash

echo "Creating system users..."

useradd guest10 -c "Guest user" -s /bin/bash -m -p $(openssl passwd -crypt <password_here>)
passwd guest10 -e

useradd guest11 -c "Guest user" -s /bin/bash -m -p $(openssl passwd -crypt <password_here>)
passwd guest11 -e

useradd guest12 -c "Guest user" -s /bin/bash -m -p $(openssl passwd -crypt <password_here>)
passwd guest12 -e

useradd guest13 -c "Guest user" -s /bin/bash -m -p $(openssl passwd -crypt <password_here>)
passwd guest13 -e

echo "Done!"
