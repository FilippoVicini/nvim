return {
  {
    "lervag/vimtex",
    config = function()
      -- Enable filetype plugins and indentation
      vim.cmd("filetype plugin indent on")

      -- Enable syntax-related features
      vim.cmd("syntax enable")

      -- Configure PDF viewer options
      vim.g.vimtex_view_method = "zathura" -- Use Zathura as PDF viewer

      -- If you want to use Okular instead, comment the above and uncomment these:
      -- vim.g.vimtex_view_general_viewer = "okular"
      -- vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"

      -- Optionally, set up a callback to ensure compilation starts automatically
      vim.g.vimtex_compiler_latexrun_engines = {
        _ = "-pdflatex", -- PDFLaTeX as the default engine
      }
    end,
  },
}
