
-- Takes a function g and a value x and returns the result of applying g to x
class MyClass<TIn, TOut>
{
    public TOut F(Func<TIn,TOut> g, TIn x)
    {
        return g(x);
    }
}

-- Takes a function g and a value x and returns the result of applying g to x, but also sets an instance variable to the value of x
class MyClass<TIn, TOut>
{
    private TIn state;

    public TOut F(Func<TIn,TOut> g, TIn x)
    {
        state = x;
        return g(x);
    }
}

-- Takes a function g and a value x and returns the result of applying g to x, but also sets an instance variable to the result
class MyClass<TIn, TOut>
{
    private TOut state;

    public TOut F(Func<TIn,TOut> g, TIn x)
    {
        state = g(x);
        return state;
    }
}

-- These all return the same value, but they are not equivalent

-- There are any number of implementations that do different things

-- It is easier to reason about the Haskell signature because there are no possible side-effects like in the C# implementation