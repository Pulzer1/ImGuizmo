project "ImGuizmo"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "Off"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs
    {
        "../ImGui"
    }

    files
    {
        "ImGuizmo.cpp",
        "ImGuizmo.h",     
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
   filter "configurations:Distribution"
		runtime "Release"
		optimize "on"
