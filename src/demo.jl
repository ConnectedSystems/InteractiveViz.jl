module Demo

export mandelbrot

function mandelbrot(x, y, n=100)
  c = complex(x, y)
  z = zero(c)
  for j ∈ 0:n-1
    z = z^2 + c
    abs(z) > 2.0 && (return j/n)
  end
  return 1.0
end

end # module
