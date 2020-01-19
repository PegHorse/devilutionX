set(sodium_USE_STATIC_LIBS ON)
set(USE_SDL1 ON)
set(PREFILL_PLAYER_NAME ON)
set(HAS_KBCTRL 1)
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")
set(KBCTRL_BUTTON_DPAD_LEFT SDLK_LEFT)
set(KBCTRL_BUTTON_DPAD_RIGHT SDLK_RIGHT)
set(KBCTRL_BUTTON_DPAD_UP SDLK_UP)
set(KBCTRL_BUTTON_DPAD_DOWN SDLK_DOWN)
set(KBCTRL_BUTTON_B SDLK_LCTRL)
set(KBCTRL_BUTTON_A SDLK_LALT)
set(KBCTRL_BUTTON_Y SDLK_SPACE)
set(KBCTRL_BUTTON_X SDLK_LSHIFT)
set(KBCTRL_BUTTON_RIGHTSHOULDER SDLK_BACKSPACE)
set(KBCTRL_BUTTON_LEFTSHOULDER SDLK_TAB)
set(KBCTRL_BUTTON_START SDLK_RETURN)
set(KBCTRL_BUTTON_LEFTSTICK SDLK_END) # Suspend
set(KBCTRL_BUTTON_BACK SDLK_ESCAPE) # Select
set(KBCTRL_IGNORE_1 SDLK_3) # Backlight
