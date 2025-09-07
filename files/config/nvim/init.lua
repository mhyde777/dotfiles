-- Load your existing config
require("user.core")
require("user.lazy")

-- Check if this is an SSH session
local is_ssh = vim.env.SSH_CONNECTION ~= nil

if is_ssh then
  -- Optional banner on remote start
  print("🌐 SSH SESSION: Remote editing on mason-ms-7e06")

  -- Use a distinct colorscheme
  vim.cmd("colorscheme habamax") -- choose any theme that looks different

  -- Optional: tweak background for visual signal
  vim.cmd("highlight Normal guibg=#1c1c1c")

  -- Optional: update statusline as a signal
  vim.opt.statusline = "%#StatusLine# SSH 📡 [%f] %y %m %= %l:%c "
end

