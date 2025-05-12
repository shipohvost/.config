local bufferline = require('bufferline')
bufferline.setup {
    options = {
        mode = 'buffers', -- set to "tabs" to only show tabpages instead
        themable = true,
        truncate_names = true, -- whether or not tab names should be truncated
        separator_style = 'slant',
        pick = {alphabet = 'asdfghjkl'}
    }
}
