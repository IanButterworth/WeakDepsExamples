module B

using Example

broadcast_mul(x::AbstractArray) = rand(2, 2) .* x

if using SparseArrays
    broadcast_mul(x::SparseMatrixCSC) = rand(2, 2) .* x
end

greet(n::String) = Example.hello(n)

end # module
