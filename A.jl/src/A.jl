module A

using B
using SparseArrays: sprand
# note that SparseArrays doesn't need to be loaded for the extended support in B to be provided.
# The extended support is enabled because `SparseArrays` is a strong dep of this package.
# It's just loaded here to access `sprand`

function do_something()
    @info B.greet("user") # uses a strong dep: Example
    @info "First do something with the basic Matrix support in B"
    @show B.broadcast_mul(rand(Float64, 2, 2))

    @info "Now do something with extended SparseArray support in B"
    @show B.broadcast_mul(sprand(Float64, 2, 2, 0.5))
end

end # module
