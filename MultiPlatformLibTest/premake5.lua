project "MultiPlatformLibTest"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

    targetdir	("bin/" .. outputdir .. "/%{prj.name}")
	objdir		("int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "**.h",
        "**.cpp",
    }

    includedirs
    {
        "include",
    }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "On"