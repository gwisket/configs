require("conform").setup({
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
  {
    formatters_by_fmt = {
      c = { "clang_format" },
      cpp = { "clang_format" },
      java = { "clang_format" },
      javascript = { "clang_format" },
      json = { "clang_format" },
      objc = { "clang_format" },
      protobuf = { "clang_format" },
      csharp = { "clang_format" },
   }
  }
})
