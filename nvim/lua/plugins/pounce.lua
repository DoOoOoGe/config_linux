return {
  "rlane/pounce.nvim",
  event = "VeryLazy",
  keys = {
    -- Vim-Shake 风格的默认按键映射
    { "s", "<cmd>Pounce<CR>", mode = { "n", "x" }, desc = "Pounce: 普通/可视模式跳转 (vim-shake style)" },
    { "S", "<cmd>PounceRepeat<CR>", mode = { "n", "x" }, desc = "Pounce: 重复上一次跳转" },
    { "gs", "<cmd>Pounce<CR>", mode = "o", desc = "Pounce: 操作符等待模式跳转" },
  },
    
  config = function()
    local pounce = require("pounce")
    
    -- 配置 pounce.nvim 的核心选项
    pounce.setup({
      -- 启用跨窗口跳转的默认支持
      multi_window = true, -- 默认关闭，通过 gw 快捷键主动启用
      debug = false,
      accept_keys = "jfkdlsahgnuvrbytmiceoxwpqz", -- vim-shake 风格的优先按键
      accept_best_key = "<enter>",
      -- 匹配样式配置（可选，保持默认即可）
      highlight = {
        fg = "#ffffff",
        bg = "#ff0000",
        border = "rounded",
      },
      -- 悬浮窗样式
      status_win = {
        relative = "editor",
        style = "minimal",
        border = "rounded",
      },
    })

    -- 可选：自定义跨窗口跳转的快捷函数（方便后续扩展）
    vim.api.nvim_create_user_command("PounceMultiWindow", function()
      pounce.pounce({ multi_window = true })
    end, { desc = "Pounce: 跨窗口跳转" })

    -- 可选：增强操作符模式的体验（vim-shake 风格）
    vim.keymap.set("o", "z", "<cmd>Pounce<CR>", { desc = "Pounce: 操作符模式跳转 (vim-shake z)" })
  end,
}

