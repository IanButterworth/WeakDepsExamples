module HasWeakDeps

using Example

function foo(x::AbstractArray)
    @info "HasWeakDeps.jl: A custom logging method for AbstractArray" x
end

offsetarrays_loaded = false

end # module
