local Path = require('plenary.path')
local dap = require('dap')
local ui = require('dapui')

require('tasks').setup({
    default_params = {
        cmake = {
            cmd = 'cmake',
            build_dir = tostring(Path:new('{cwd}', 'build', '{build_type}')),
            build_type = 'Debug',
            dap_name = 'lldb',
            args = {
                configure = {
                    '-D', 'CMAKE_EXPORT_COMPILE_COMMANDS=1', '-G', 'Ninja',
                    -- '-DCMAKE_C_COMPILER=clang',
                    '-DCMAKE_CXX_COMPILER=clang++'
                }
            }
        },
        cargo = {dap_name = 'lldb'}
    },
    save_before_run = true,
    params_file = 'neovim-tasks.json',
    quickfix = {pos = 'botright', height = 12, only_on_error = false},
    dap_open_command = function()
        return {ui.open(), dap.continue()}
    end
})
