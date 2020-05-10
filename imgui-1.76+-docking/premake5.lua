-- This file was generated for ImGUI 1.67.
-- There's no guarantee this file will work on other versions.

project "ImGui"
    language "C++"
    cppdialect "C++14"
    kind "StaticLib"
    staticruntime "On"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
        "imgui.h",
        "imgui_internal.h",
        "imconfig.h",

        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_widgets.cpp",
        "imgui_demo.cpp",

        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h"
    }
    
	filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug" 
        runtime "Debug"
        symbols "On"
        optimize "Off"

    filter "configurations:DebugOptOn"
        runtime "Debug"
        symbols "On"
        optimize "On"

    filter "configurations:Release"
        runtime "Release"
        symbols "Off"
        optimize "On"

