module HasDepWithWeakDeps

using HasWeakDeps
using OffsetArrays: OffsetArray
# Loading OffsetArrays makes the glue module "GlueOffsetArrays" to load

function do_something()
    @info "First do something with the basic array support in B"
    HasWeakDeps.foo(rand(Float64, 2))

    @info "Now do something with extended OffsetArray support in B"
    HasWeakDeps.foo(OffsetArray(rand(Float64, 2), 0:1))
end

end # module
