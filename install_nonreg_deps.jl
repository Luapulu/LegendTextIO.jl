using Pkg

curr_prj = Pkg.API.Context().env.project_file

try
    if startswith(curr_prj, pwd())
        mv(curr_prj, curr_prj * "_orig")
    end

finally
    if startswith(curr_prj, pwd()) && isfile(curr_prj * "_orig")
        mv(curr_prj * "_orig", curr_prj, force = true)
    end
end