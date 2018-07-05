namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (q : Qubit) : Int
    {
        body
        {
            mutable result = 1;
            H(q);
            let res = M(q);
            if (res == One)
            {
                set result = -1;
            }
            return result;
        }
    }
}