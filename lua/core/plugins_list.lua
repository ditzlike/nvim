local m = {}
function m.config(use)
    require 'core.general'(use)
    require 'core.lspconfig'(use)
end
return m
