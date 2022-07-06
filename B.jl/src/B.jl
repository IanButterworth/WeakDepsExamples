module B

using Example

function foo(x::AbstractArray)
    @info "B.jl: A custom logging method for AbstractArray" x
end

if Base.is_package_available(@__MODULE__, :OffsetArrays)
    using OffsetArrays
    println("Loading custom OffsetArrays code...")
    function foo(x::OffsetArray)
        @info "B.jl: A custom logging method for OffsetArray" x
    end
else
    println("OffsetArrays not installed")
end

greet(n::String) = Example.hello(n)

end # module
