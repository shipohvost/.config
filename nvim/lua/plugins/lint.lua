local lint = require('lint')

lint.linters_by_ft = {
    lua = {'luacheck'},
    c = {'cppcheck'},
    cpp = {'cppcheck'},
    cmake = {'cmakelang'}
}

lint.linters.luacheck = {
    cmd = 'luacheck',
    stdin = true,
    args = {'--formatter', 'plain', '--codes', '-'},
    stream = 'stdout',
    -- ignore_exitcode = true,
    parser = require('lint.parser').from_pattern('^[^:]+:(%d+):(%d+): %((%w+)%) (.+)$',
                                                 {'lnum', 'col', 'code', 'message'}, {
        source = 'luacheck',
        severity = function(code)
            local first = code:sub(1, 1)
            if first == 'E' then return vim.diagnostic.severity.ERROR end
            if first == 'W' then return vim.diagnostic.severity.WARN end
            return vim.diagnostic.severity.INFO
        end
    })
}

lint.linters.cppcheck = {
    cmd = 'cppcheck',
    args = {
        '--enable=all', '--library=linter.cfg', '--suppress=unknownMacro', '--std=c++20',
        '--template=clang', '--project=' .. vim.fn.getcwd() .. '/compile_commands.json',
        '--include=' .. vim.fn.expand('%:p')
    },
    stream = 'stdout',
    ignore_exitcode = true,
    parser = require('lint.parser').from_errorformat('%f:%l:%c: %trror: %m')
}

lint.linters.cmakelang = {
    cmd = 'cmake-lint',
    stdin = false,
    args = {'--quiet', '--filter=-whitespace/indent'},
    stream = 'stdout',
    ignore_exitcode = true, -- не падать, если lint вернул ошибку
    parser = require('lint.parser').from_pattern([[:(%d+):(%d+):%s+%[(%w+)%]%s+(.*)]],
                                                 {'lnum', 'col', 'code', 'message'},
                                                 {['source'] = 'cmake-lint'})
}

vim.api.nvim_create_autocmd({'BufWritePost', 'BufReadPost'}, {
    callback = function()
        lint.try_lint()
    end
})
