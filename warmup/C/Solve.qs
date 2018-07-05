namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (qs : Qubit[]) : ()
    {
        body
        {
            for (idx in 0..Length(qs)-1)
            {
                if (idx == 0)
                {
                    H(qs[0]);
                }
                else
                {
                    CNOT(qs[0], qs[idx]);
                }
            }
        }
    }
}
