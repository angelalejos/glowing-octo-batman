#/bin/sh

# -S means use su

ansible -i hosts all -S --ask-su-pass -u root -m raw -a \
    'env ASSUME_ALWAYS_YES=YES pkg bootstrap; \
    env ASSUME_ALWAYS_YES=YES pkg install python'

ansible-playbook -i hosts site.yml -S --ask-su-pass -vvvv
