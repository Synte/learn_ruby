def add a, b
    return a + b
end

def subtract a, b
    return a - b
end

def sum arr
    return arr.sum
end

def multiply arr
    product = 1
    arr.each do |number|
        product *= number
    end
    return product
end

def power a, b
    return a ** b
end

def factorial n
    if n == 0 or n == 1
        return 1
    else
        return n *= factorial(n - 1)
    end
end