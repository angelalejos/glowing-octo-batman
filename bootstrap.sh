#/bin/sh

# -S means use su

echo "ASSUMING YOU'VE ALREADY COPIED THE SSH KEY OVER"

ansible -i hosts all -S --ask-su-pass -vvvv -u root -m raw -a \
    'env ASSUME_ALWAYS_YES=YES pkg bootstrap; \
    env ASSUME_ALWAYS_YES=YES pkg install python'

ansible-playbook -i hosts -S --ask-su-pass -vvvv bootstrap.yml
