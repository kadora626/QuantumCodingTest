namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (qs : Qubit[]) : Int
    {
        body
        {
            mutable result = 0;
            CNOT(qs[0], qs[1]);
            H(qs[0]);
            let res0 = M(qs[0]);
            let res1 = M(qs[1]);
            if (res0 == Zero)
            {
                if (res1 == Zero)
                {
                    set result = 0;
                }
                else
                {
                    set result = 2;
                }
            }
            else
            {
                if (res1 == Zero)
                {
                    set result = 1;
                }
                else
                {
                    set result = 3;
                }
            }
            return result;

        }
    }
}