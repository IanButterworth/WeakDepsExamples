module GlueOffsetArrays

using HasWeakDeps, OffsetArrays

function foo(x::OffsetArray)
    @info "HasWeakDeps.jl: A custom logging method for OffsetArray" x
end

function __init__()
    HasWeakDeps.offsetarrays_loaded = true
end

end
