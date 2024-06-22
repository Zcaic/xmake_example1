target("mymath")
    set_kind("static")
    add_files(path.join(os.scriptdir(),"src","*.cpp"))
    add_includedirs(path.join(os.scriptdir(),"inc"),{public=true})
    set_targetdir(path.join(os.projectdir(),"out","external/mymath"))
target_end()

-- package("mymath")
--     set_description("The math library")
    
--     on_load(function(package)
--         package:set("installdir",path.join(os.projectdir(),"out","mymath"))
--     end)

--     on_install(function(package)
--         set_
--     end)


-- package_end()