local dap_breakpoint_color = {
    breakpoint = {
        ctermbg = 0,
        -- fg = '#993939',
        bg = '#31353f'
    },
    logpoing = {ctermbg = 0, fg = '#61afef', bg = '#31353f'},
    stopped = {ctermbg = 0, fg = '#98c379', bg = '#31353f'}
}

vim.api.nvim_set_hl(0, 'DapBreakpoint', dap_breakpoint_color.breakpoint)
vim.api.nvim_set_hl(0, 'DapLogPoint', dap_breakpoint_color.logpoing)
vim.api.nvim_set_hl(0, 'DapStopped', dap_breakpoint_color.stopped)

local dap_breakpoint = {
    error = {
        text = '📌',
        texthl = 'DapBreakpoint',
        linehl = 'DapBreakpoint',
        numhl = 'DapBreakpoint'
    },
    condition = {
        text = '🔷',
        texthl = 'DapBreakpoint',
        linehl = 'DapBreakpoint',
        numhl = 'DapBreakpoint'
    },
    rejected = {
        text = '🔒',
        texthl = 'DapBreakpint',
        linehl = 'DapBreakpoint',
        numhl = 'DapBreakpoint'
    },
    logpoint = {
        text = '📖',
        texthl = 'DapLogPoint',
        linehl = 'DapLogPoint',
        numhl = 'DapLogPoint'
    },
    stopped = {text = '🔥', texthl = 'DapStopped', linehl = 'DapStopped', numhl = 'DapStopped'}
}

vim.fn.sign_define('DapBreakpoint', dap_breakpoint.error)
vim.fn.sign_define('DapBreakpointCondition', dap_breakpoint.condition)
vim.fn.sign_define('DapBreakpointRejected', dap_breakpoint.rejected)
vim.fn.sign_define('DapLogPoint', dap_breakpoint.logpoint)
vim.fn.sign_define('DapStopped', dap_breakpoint.stopped)

require('dapui').setup()

require('nvim-dap-virtual-text').setup({
    enabled = true, -- Включить плагин (по умолчанию true)
    highlight_new_as_changed = true, -- Подсвечивать новые значения как изменённые
    show_stop_reason = true, -- Показывать причину остановки (например, breakpoint)
    commented = false, -- Отображать текст как комментарий (зависит от цветовой схемы)
    only_first_definition = false -- Показывать значения только для первого определения переменной
})
