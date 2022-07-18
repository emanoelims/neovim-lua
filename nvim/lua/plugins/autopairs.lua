local status_ok, autopairs = pcall(require, 'nvim-autopairs')
if not status_ok then
  return
end

autopairs.setup {}

local cmp_autopairs_ok, cmp_autopairs = pcall(require, 'nvim-autopairs.completion.cmp')
local cmp_ok, cmp = pcall(require, 'cmp')
if not cmp_ok or not cmp_autopairs_ok then
  return
end

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done {map_char = { tex = '' }})
