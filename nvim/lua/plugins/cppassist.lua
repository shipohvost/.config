require('cppassist').setup {
    -- For `SwitchSourceAndHeader`, `ImplementInSource` and `ImplementOutOfClass` command
    switch_sh = {
        -- Search for target files in the following directories
        include_dirs = {'.', '..'},
        -- Exclude the following directories when searching for target files
        exclude_dirs = {'build', '.cache'},
        -- If you want other flags, see `man fd`
        -- -t: This option can be specified more than once to include multiple file types.
        -- -s: Perform a case-sensitive search.
        -- -L: Using this flag, symbolic links are also traversed.
        search_flags = '-tf -s -L'
    },
    -- For `GotoHeaderFile` command
    goto_header = {
        include_dirs = {'.', '..', '/usr/include', '/usr/local/include', '~', './inc'},
        exclude_dirs = {'build', '.cache'},
        search_flags = '-tf -s'
    }
}
