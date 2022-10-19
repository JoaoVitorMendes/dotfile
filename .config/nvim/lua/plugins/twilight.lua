require("twilight").setup {
  dimming = {
    alpha = 1.10, -- amount of dimming
    -- we try to get the foreground from the highlight groups or fallback color
    color = { "Insert", "#43251A" },
    term_bg = "#9B3A24", -- if guibg=NONE, this will be used to calculate text color
    inactive = true, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
  },
  context = 10, -- amount of lines we will try to show around the current line
  treesitter = true, -- use treesitter when available for the filetype
  -- treesitter is used to automatically expand the visible text,
  -- but you can further control the types of nodes that should always be fully expanded
  expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
    "function",
    "method",
    "table",
    "if_statement",
  },
  exclude = {}, -- exclude these filetypes
}

