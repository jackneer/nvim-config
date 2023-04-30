local status, toggleterm = pcall(require, 'toggleterm')

if not status then
  return
end

toggleterm.setup({
  size = function(term)
    if term.direction == 'horizontal' then
      return 8
    elseif term.direction == 'vertical' then
      return vim.o.column * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
  direction = 'horizontal',
  close_on_exit = true,
})
