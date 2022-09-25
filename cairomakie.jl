using Ferrite, FerriteViz#, FerriteGmsh
import CairoMakie
CairoMakie.activate!()

#ferritelogo = saved_file_to_grid("ferrite-logo.msh")
#dh_logo = DofHandler(ferritelogo)
#push!(dh_logo,:u,1)
#close!(dh_logo)
#u_logo = zeros(ndofs(dh_logo))
#julia_purple=1
#julia_red=2
#julia_blue=3
#julia_green=4
#colormap = Dict(
#    "1" => julia_purple,
#    "2" => julia_red,
#    "3" => julia_red,
#    "4" => julia_blue,
#    "5" => julia_purple,
#    "6" => julia_green
#)
#cellset_u = zeros(getncells(ferritelogo))
#for (cellidx,cell) in enumerate(getcells(ferritelogo))
#    for (cellsetname,cellsetvalue) in colormap
#        if cellidx in ferritelogo.cellsets[cellsetname]
#            cellset_u[cellidx] = cellsetvalue
#        end
#    end
#end
#plotterlogo = MakiePlotter(dh_logo,u_logo)
#
#fig_logo, ax_logo, cp_logo = cellplot(plotterlogo,cellset_u,colormap=[colorant"rgb(149,88,178)",colorant"rgb(203,60,51)",colorant"rgb(64,99,216)",colorant"rgb(56,152,38)"])
#wireframe!(plotterlogo,markersize=0,strokewidth=2)
#CairoMakie.save("ferrite-logo.pdf",fig_logo)

include("heat-equation.jl")
surface(dh,u)
CairoMakie.save("heat-equation.pdf",CairoMakie.current_figure())
