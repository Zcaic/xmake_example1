add_rules("mode.debug","mode.release")

set_defaultplat("mingw")
set_defaultarchs("x64")
set_defaultmode("release")
set_toolchains("mingw")

includes("./external/mymath/xmake.lua")
-- includes("./external/fmt/xmake.lua")

target("test")
    set_kind("binary")
    add_files(path.join(os.projectdir(),"src","*.cpp"))
    add_deps("mymath")
    -- add_deps("fmt")
    -- add_includedirs("./external/fmt/include/")
    set_targetdir(path.join(os.projectdir(),"out"))

    on_load(function(target)
        target:add("includedirs","./external/fmt/package/include/")
    end)

    after_build(function(target)
        print(target:dep("mymath"):get("targetdir"))
    end)
target_end()