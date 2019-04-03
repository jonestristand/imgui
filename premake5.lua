project "ImGUI"
  kind "StaticLib"
  language "C++"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  files {
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h",
    "imgui_demo.cpp"
  }

  filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"

  filter "configurations:Debug"
    defines "ULLR_DEBUG"
    runtime "Debug"
    symbols "on"

filter "configurations:Release"
    defines "ULLR_RELEASE"
    runtime "Release"
    optimize "on"

filter "configurations:Dist"
    defines "ULLR_DIST"
    runtime "Release"
    optimize "on"