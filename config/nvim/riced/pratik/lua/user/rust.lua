--- ================ Rust settings ==================

-- turn on the basic conceal support
vim.g.rust_conceal = 1
-- turn on conceal for the path connecting token "::"
vim.g.rust_conceal_mod_path = 1
-- turn on conceal for the "pub" token
vim.g.rust_conceal_pub = 1
-- preserve the leader on multi-line doc comments using the /*! syntax
vim.g.rust_bang_comment_leader = 1
-- run :RustFmt automatically when saving a buffer
vim.g.rustfmt_autosave = 1
-- prevent "rustfmt" from populating the location-list with errors
vim.g.rustfmt_fail_silently = 0
