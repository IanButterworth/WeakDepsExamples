module HasDepWithWeakDeps

using HasWeakDeps
using OffsetArrays: OffsetArray
# note that OffsetArrays doesn't need to be loaded for the extended support in B to be provided.
# The extended support is enabled because `OffsetArrays` is a strong dep of this package.
# It's just loaded here to access `OffsetArray`

function do_something()
    @info "First do something with the basic array support in B"
    HasWeakDeps.foo(rand(Float64, 2))

    @info "Now do something with extended OffsetArray support in B"
    HasWeakDeps.foo(OffsetArray(rand(Float64, 2), 0:1, 2))
end

end # module
