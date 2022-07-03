module B

using Example

function foo(x::AbstractArray)
    @info "B.jl: A custom logging method for AbstractArray" x
end
if using OffsetArrays
    function foo(x::OffsetArray)
        @info "B.jl: A custom logging method for OffsetArray" x
    end
end

greet(n::String) = Example.hello(n)

end # module
