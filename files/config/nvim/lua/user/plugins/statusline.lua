return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- Set lualine as statusline
    -- See `:help lualine.txt`
    local function custom_location()
      return [[%l|%L:%c]]
    end
		require('lualine').setup {
			options = {
				icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          "NvimTree",
        },
			},
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {custom_location}
      },
      inactive_sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename'},
        lualine_x = {'fileformat', 'filetype'},
        lualine_y = {},
        lualine_z = {custom_location}
      },
      extensions = {},
      tabline = {},
      winbar = {},
      inactive_winbar = {},
		}
	end
}

