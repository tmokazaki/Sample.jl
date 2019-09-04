using Plots
unicodeplots()

function render_plot()
  a = rand(20, 5)
  display(plot(a))
end

Base.@ccallable function julia_main(ARGS::Vector{String})::Cint
  render_plot()
  return 0
end

render_plot()
