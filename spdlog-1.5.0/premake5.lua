project "spdlog"
    kind "StaticLib"
    language "C++"
    staticruntime "On"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin/" .. outputdir .. "%{prj.name}")

    files
    {
        "src/spdlog.cpp",
        "src/stdout_sinks.cpp",
        "src/color_sinks.cpp",
        "src/file_sinks.cpp",
        "src/async.cpp",
        "src/fmt.cpp"
    }

    includedirs
    {
        "include"
    }

    defines
    {
        "SPDLOG_COMPILED_LIB"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
        optimize "Off"

    filter "configurations:DebugOptOn"
        runtime "Release"
        symbols "On"
        optimize "On"
        
    filter "configurations:Release"
        runtime "Release"
        symbols "Off"
        optimize "On"
