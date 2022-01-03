require'nvim-tree'.setup {
    auto_close = true,
    diagnostics = {
        enable = true,
    },
    view = {
        auto_resize = true
    },
    update_focused_file = {
      enable      = true,
      update_cwd  = true,
      ignore_list = {}
    },
}
