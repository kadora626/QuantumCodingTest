namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (x : Qubit[], y : Qubit) : ()
    {
        body
        {
            for(idx in 0..Length(x)-1)
            {
                CNOT(x[idx],y);
            }
        }
    }
}