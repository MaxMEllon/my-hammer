function baseMove(x, y, w, h)
    return function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.w * x + max.x
        f.y = max.h * y
        f.w = max.w * w
        f.h = max.h * h
        win:setFrame(f, 0)
    end
end

-- feature spectacle/another window sizing apps
hs.hotkey.bind({'cmd'}, 'Left', baseMove(0, 0, 0.5, 1))
hs.hotkey.bind({'cmd'}, 'Right', baseMove(0.5, 0, 0.5, 1))
hs.hotkey.bind({'cmd'}, 'Down', baseMove(0, 0.5, 1, 0.5))
hs.hotkey.bind({'cmd'}, 'Up', baseMove(0, 0, 1, 0.5))

hs.hotkey.bind({'cmd', 'shift'}, 'p', baseMove(0, 0, 0.333, 1))
hs.hotkey.bind({'cmd', 'shift'}, '[', baseMove(0.333, 0, 0.333, 1))
hs.hotkey.bind({'cmd', 'shift'}, ']', baseMove(0.666, 0, 0.333, 1))
