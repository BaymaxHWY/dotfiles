local gps = require("nvim-gps")
require'lualine'.setup({
    options = {
        section_separators = { left = '', right = ''}, 
        component_separators = ''
    },
    sections = {
        lualine_c = {
          { gps.get_location, cond = gps.is_available },
        }
    },
})
