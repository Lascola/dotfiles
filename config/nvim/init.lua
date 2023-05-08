local load = function(mod)
  package.loaded[mod] = nil
    require(mod)
  end

-- user modules
load("lasse.settings")
load("lasse.keymaps")
load("lasse.plugins")

