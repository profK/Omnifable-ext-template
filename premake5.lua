-- Use folder name to build extension name and tag. Version is specified explicitly.
local ext = get_current_extension_info()

-- That will also link whole current "target" folder into as extension target folder:
project_ext (ext)
    repo_build.prebuild_link {
        { "data", ext.target_dir.."/data" },
        { "docs", ext.target_dir.."/docs" },
        { "Omnifable-ext", ext.target_dir.."/Omnifable-ext" },
    }


-- install Fable
print("installing fable")
os.execute("dotnet tool install fable --prerelease")
os.execute("dotnet fable fs_project/fs_project  --lang py new tool-manifest")
--- run fable
os.execute("dotnet fable fs_project/fs_project --lang py -o ../Omnifable-ext/Omnifable-ext --nocache")


