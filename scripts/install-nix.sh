#!/usr/bin/env ksh

append_nixbld_group_to_file() {
    local NIXBLD=$(cat $1 | grep nixbld)
    if ([[ -f "$1" ]] && [[ -z "$NIXBLD" ]])
    then
        local NIXBLD_GROUP="nixbld:x:30000:nixbld1"
        local NIXBLD_USERS=$(for i in {2..32}; do echo -n ",nixbld$i"; done)
        echo "$NIXBLD_GROUP$NIXBLD_USERS" >> "$1"
    fi
}

create_build_users() {
    print "abc"
}

create_directories() {
    print "abc"
}

place_channel_configuration() {
    print "abc"
}

install_from_extracted_nix() {
    print "abc"
}

configure_shell_profile() {
    print "abc"
}

setup_default_profile() {
    print "abc"
}

place_nix_configuration() {
    print "abc"
}

poly_configure_nix_daemon_service() {
    print "abc"
}