using Plots
using ComplexPortraits: generate_spike

xx = collect(LinRange(0.0, 2.0, 801))
sp1 = generate_spike(a=-9.0, b=0.5)
sp2 = generate_spike(a=-4.0, b=0.5)
sp3 = generate_spike(a=-15.0, b=1.5)

plot(xx, sp1.(xx), label="a= -9, b=0.5", linewidth=3, legend=:bottom, framestyle=:box, size=(800,400),
  tickfontsize=11, legendfontsize=11)
plot!(xx, sp2.(xx), label="a= -4, b=0.5", linewidth=3)
pl = plot!(xx, sp3.(xx), label="a=-15, b=1.5", linewidth=3)
savefig(pl, "./images/spike.png")
