workspace "MultiPlatformLibTest"
	architecture "x86_64"
    startproject "LibTester"

    configurations
	{
		"Debug",
		"Release",
	}

    flags
	{
		"MultiProcessorCompile",
	}

include "MultiPlatformLibTest"
    
project "LibTester"
    location "LibTester"
    kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

    outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

    targetdir	("LibTester/bin/" .. outputdir .. "/%{prj.name}")
	objdir		("LibTester/int/" .. outputdir .. "/%{prj.name}")

    files
	{
		"LibTester/**.h",
		"LibTester/**.cpp",
	}

    includedirs
	{
		"MultiPlatformLibTest/include",
	}

    links
    {
        "MultiPlatformLibTest",
    }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "On"