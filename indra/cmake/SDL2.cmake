# -*- cmake -*-
if (USESYSTEMLIBS OR LINUX)
    include(FindPkgConfig)
    pkg_check_modules(SDL REQUIRED sdl2)
else ()
    include(Prebuilt)
    if (LINUX)
        use_prebuilt_binary(SDL2)
        set (SDL_FOUND TRUE)
        set (SDL_INCLUDE_DIRS ${LIBS_PREBUILT_DIR}/include)
        set (SDL_LIBRARIES SDL2)
    endif (LINUX)
endif ()