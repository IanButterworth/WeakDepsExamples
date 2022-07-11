module HasWeakDeps

using Example

function foo(x::AbstractArray)
    @info "HasWeakDeps.jl: A custom logging method for AbstractArray" x
end

if Base.@hasdep OffsetArrays
    using OffsetArrays
    println("Loading custom OffsetArrays code...")
    function foo(x::OffsetArray)
        @info "HasWeakDeps.jl: A custom logging method for OffsetArray" x
    end
else
    println("OffsetArrays not installed")
end

end # module
