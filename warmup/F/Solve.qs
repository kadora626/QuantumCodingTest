namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (qs : Qubit[], bits0 : Bool[], bits1 : Bool[]) : Int
    {
        body
        {
            mutable result = 0;
            mutable res = Zero;
            for (idx in 0..Length(qs)-1)
            {
                set res = M(qs[idx]);
                if(res == Zero)
                {
                    if(bits0[idx])
                    {
                        set result = 1;
                        return result;
                    }
                    if(bits1[idx])
                    {
                        set result = 0;
                        return result;
                    }
                }
                if(res == One)
                {
                    if(!bits0[idx])
                    {
                        set result = 1;
                        return result;
                    }
                    if(!bits1[idx])
                    {
                        set result = 0;
                        return result;
                    }
                }
            }
            return result;
        }
    }
}