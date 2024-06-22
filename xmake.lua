add_rules("mode.debug","mode.release")

set_defaultplat("mingw")
set_defaultarchs("x64")
set_defaultmode("release")
set_toolchains("mingw")

includes("./external/mymath/xmake.lua")
includes("./external/fmt/xmake.lua")
add_requires("fmt")

target("test")
    set_kind("binary")
    set_targetdir(path.join(os.projectdir(),"out"))
    add_files(path.join(os.projectdir(),"src","*.cpp"))

    add_deps("mymath")
    -- add_deps("fmt")
    add_packages("fmt")
    --------------------------------------------------------
    -- add_linkdirs("./out/external/")
    -- add_links("libfmt.dll")
    -- add_includedirs("./external/fmt/package/include/")
    -- add_links("mymath","fmt")
    -- add_includedirs("./external/fmt/package/include/","./external/mymath/inc/")
    

    -- on_load(function(target)
    --     target:add("includedirs","./external/fmt/package/include/")
    -- end)

    -- after_build(function(target)
    --     print(target:dep("mymath"):get("targetdir"))
    -- end)
target_end()