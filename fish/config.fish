
function fish_user_key_bindings
    fish_vi_key_bindings

    for mode in insert default visual
        bind -M $mode \cf forward-char
    end

    for mode in insert visual
        bind -M insert -m default \cc backward-char force-repaint
    end
end

set fish_key_bindings fish_user_key_bindings

if status --is-login
    set -x PATH $PATH ~/bin
end

function fish_mode_prompt; end

set PATH /Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin $PATH
