function RunOdooModuleTests()
  let l:module = "lr_auth_jwt"
  let l:database = "odoo-local-JRAD-2055"

  let l:odoo_params = [
    \"-d " . l:database,
    \"--test-tags /" . l:module,
    \"--log-handler :WARNING",
    \"--log-handler odoo.addons." . l:module . ".tests:INFO",
    \"--log-handler odoo.service.server:INFO",
    \"--stop-after-init"
    \]

  let l:odoo_command = "./local/odoo-start.sh " . join(l:odoo_params)

  execute "!tmux send-keys -t odoo:0.1 Escape \"" . l:odoo_command . "\" C-m"
endfunction
