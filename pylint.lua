require("lint.linters.pylint").setup({
  sources = {
    null_ls.builtins.diagnostics.pylint.with({
      diagnostic_config = { underline = false, virtual_text = false, signs = false },
      method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
    }),
  },
})
