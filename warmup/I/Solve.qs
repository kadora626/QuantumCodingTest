namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (N : Int, Uf : ((Qubit[], Qubit) => ())) : Bool
    {
        body
        {
            mutable result = true;
            using(qubits = Qubit[N+1]){
                X(qubits[N]);
                ApplyToEach(H,qubits);

                Uf(qubits[0..N-1], qubits[N]);

                ApplyToEach(H,qubits[0..N-1]);

                for(idx in 0..N-1)
                {
                    let tmp = M(qubits[idx]);
                    if (tmp == One)
                    {
                        set result = false;
                    }
                }
                ResetAll(qubits);
            }
            return result;
        }
    }
}
