#! /bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
install_path=/fs/

# Uninstall finalspeed
uninstall_finalspeed(){
    printf "Are you sure uninstall finalspeed? (y/n) "
    printf "\n"
    read -p "(Default: n):" answer
    if [ -z $answer ]; then
        answer="n"
    fi
    if [ "$answer" = "y" ]; then
        /etc/init.d/finalspeed stop
        checkos
        if [ "$OS" == 'centos' ]; then
            chkconfig --del finalspeed
        else
            update-rc.d -f finalspeed remove
        fi
        rm -f /etc/init.d/finalspeed
        rm -rf $install_path
        echo "finalspeed uninstall success!"
    else
        echo "uninstall cancelled, Nothing to do"
    fi
}

uninstall_finalspeed
