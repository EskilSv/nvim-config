return {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '|',
    section_separators = '',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {
      'encoding',
      {
        'fileformat',
        symbols = {
          unix = 'unix', -- e712
          dos = 'dos',  -- e70f
          mac = '',  -- e711
  	  },
      },
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}
