return {
  'romgrk/barbar.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    init = function()  
      -- 设置 barbar 全局选项（必须在 setup 前设置）
      vim.g.barbar_auto_setup = false -- 禁用自动设置，手动配置
      vim.g.barbar_show_linenumbers = false -- 不显示行号
      vim.g.barbar_no_name_title = "[No Name]" -- 无名称缓冲区的标题
    end,
    config = function()
    require("barbar").setup({
      -- 核心配置
      animation = true, -- 启用标签切换动画
      auto_hide = false, -- 单标签时不自动隐藏
      tabpages = true, -- 显示 tabpage 指示器
      clickable = true, -- 支持鼠标点击切换标签
      focus_on_close = "left", -- 关闭标签后聚焦左侧标签
      highlight_alternate = false, -- 不高亮备用缓冲区
      highlight_inactive_file_icons = false, -- 不高亮非活动标签的图标
      highlight_visible = true, -- 高亮可见标签

      -- 图标配置
      icons = {
        buffer_index = false, -- 不显示缓冲区索引
        buffer_number = false, -- 不显示缓冲区编号
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "" },
          [vim.diagnostic.severity.WARN] = { enabled = true, icon = "" },
          [vim.diagnostic.severity.INFO] = { enabled = true, icon = "" },
          [vim.diagnostic.severity.HINT] = { enabled = true, icon = "󰌵" },
        },
        filetype = {
          custom_colors = true, -- 使用自定义文件类型颜色
          enabled = true, -- 显示文件类型图标
        },
        separator = { left = "▎", right = "" }, -- 分隔符样式
        modified = { button = "●" }, -- 修改后标记
        pinned = { button = "📌", filename = true }, -- 固定标签标记
        alternate = { filetype = { enabled = false } },
        current = { buffer_selected = true },
        inactive = { button = "×" },
        visible = { modified = { buffer_selected = false } },
      },

      -- 侧边栏集成（与 nvim-tree 等插件兼容）
      sidebar_filetypes = {
        NvimTree = { text = "File Explorer" },
        undotree = { text = "Undo Tree" },
        ["neo-tree"] = { text = "Neo-tree" },
      },

      -- 自动关闭空缓冲区
      auto_close = true,
      -- 新标签位置
      insert_at_end = true,
    })

    -- 常用按键映射（适配 LazyVim，兼容你的 pounce.nvim 按键）
    -- 切换标签
    vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { opts, desc = "Barbar: 上一个标签" })
    vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", { opts, desc = "Barbar: 下一个标签" })
    vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", { opts, desc = "Barbar: 标签左移" })
    vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", { opts, desc = "Barbar: 标签右移" })
    
    -- 直接跳转到指定标签
    vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", { opts, desc = "Barbar: 跳转到标签1" })
    vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", { opts, desc = "Barbar: 跳转到标签2" })
    vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", { opts, desc = "Barbar: 跳转到标签3" })
    vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", { opts, desc = "Barbar: 跳转到标签4" })
    vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", { opts, desc = "Barbar: 跳转到标签5" })
    vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", { opts, desc = "Barbar: 跳转到标签6" })
    vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", { opts, desc = "Barbar: 跳转到标签7" })
    vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", { opts, desc = "Barbar: 跳转到标签8" })
    vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", { opts, desc = "Barbar: 跳转到标签9" })
    vim.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", { opts, desc = "Barbar: 跳转到最后一个标签" })

    -- 关闭标签
    vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", { opts, desc = "Barbar: 关闭当前标签" })
    vim.keymap.set("n", "<A-C>", "<Cmd>BufferClose!<CR>", { opts, desc = "Barbar: 强制关闭当前标签" })
    vim.keymap.set("n", "<leader>bc", "<Cmd>BufferCloseAllButCurrent<CR>", { opts, desc = "Barbar: 关闭除当前外所有标签" })
    vim.keymap.set("n", "<leader>bC", "<Cmd>BufferCloseBuffersLeft<CR>", { opts, desc = "Barbar: 关闭左侧所有标签" })

    -- 固定/取消固定标签
    vim.keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", { opts, desc = "Barbar: 固定/取消固定标签" })

    -- 刷新标签
    vim.keymap.set("n", "<leader>br", "<Cmd>BufferRefresh<CR>", { opts, desc = "Barbar: 刷新标签" })
  end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released,

}

