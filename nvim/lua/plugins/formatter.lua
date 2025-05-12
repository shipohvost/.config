require('formatter').setup {
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
        lua = {
            function()
                -- if util.get_current_buffer_file_name() == "special.lua" then
                --     return nil
                -- end
                return {
                    exe = 'lua-format',
                    args = {
                        '--indent-width=4', -- *
                        '--tab-width=4', -- *
                        '--continuation-indent-width=4', -- *
                        '--column-limit=100', -- *
                        '--no-use-tab', -- *
                        '--double-quote-to-single-quote', -- *
                        '--no-keep-simple-function-one-line' -- *
                    },
                    stdin = true
                }
            end
        },
        cpp = {
            function()
                return {
                    exe = 'clang-format',
                    args = {'--style=file', '--assume-filename=.clang-format'},
                    stdin = true
                }
            end
        },
        cmake = {
            function()
                return {
                    exe = 'cmake-format',
                    args = {'--tab-size=4', '--line-width=100', '-'},
                    stdin = true
                }
            end
        }
    }
}

vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = {'*.lua', '*.cpp', '*.hpp', '*.h', 'CMakeLists.txt', '*.cmake'},
    command = 'FormatWrite'
})
