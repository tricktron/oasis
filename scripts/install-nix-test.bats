setup() {
    bats_load_library bats-support
    bats_load_library bats-assert
    bats_load_library bats-file
    PROJECT_ROOT="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$PROJECT_ROOT:$PATH"
}

setup_file() {
    export GROUP_FILE_WITHOUT_NIXBLD=$(mktemp)
    echo "created new tmp file: $GROUP_FILE_WITHOUT_NIXBLD" >&3
}

@test "should append nixbld group to group file if it does not already exist" {
    source ./install-nix.sh
    assert_file_exist $GROUP_FILE_WITHOUT_NIXBLD
    append_nixbld_group_to_file $GROUP_FILE_WITHOUT_NIXBLD
    run cat $GROUP_FILE_WITHOUT_NIXBLD
    assert_output "nixbld:x:30000:nixbld1,nixbld2,nixbld3,nixbld4,nixbld5,nixbld6,nixbld7,nixbld8,nixbld9,nixbld10,nixbld11,nixbld12,nixbld13,nixbld14,nixbld15,nixbld16,nixbld17,nixbld18,nixbld19,nixbld20,nixbld21,nixbld22,nixbld23,nixbld24,nixbld25,nixbld26,nixbld27,nixbld28,nixbld29,nixbld30,nixbld31,nixbld32"
    append_nixbld_group_to_file $GROUP_FILE_WITHOUT_NIXBLD
    run cat $GROUP_FILE_WITHOUT_NIXBLD
}

teardown_file() {
    echo "Deleting $GROUP_FILE_WITHOUT_NIXBLD" >&3
    rm -f $GROUP_FILE_WITHOUT_NIXBLD
}


