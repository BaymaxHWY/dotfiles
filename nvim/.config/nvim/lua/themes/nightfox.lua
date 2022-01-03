local status_ok, nightfox = pcall(require, "nightfox")
if not status_ok then
  return
end

nightfox.setup({
    fox = 'nordfox', -- change the colorscheme
    styles = {
        comments = 'italic',
        functions = 'italic',
    },
})

-- load the configurations
nightfox.load()
