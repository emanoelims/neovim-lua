local project_nvim_ok, project_nvim = pcall(require, 'project_nvim')
local telescope_ok, telescope = pcall(require, 'telescope')
if not project_nvim_ok or not telescope_ok then
  return
end

project_nvim.setup {}
telescope.load_extension 'projects'
