return {
  "lervag/vimtex",
  lazy = false,
  config = function ()
    vim.g.vimtex_syntax = "enable"
    vim.g.vim_tex_view_method = "general"
    vim.g.vimtex_view_general_viewer = "okular"
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk_engines = {
      _ = '-xelatex'
    }
  end,
  keys = {
    {"<localLeader>,", "", desc="+vimtext"},
  },
  ft = 'tex'
}
