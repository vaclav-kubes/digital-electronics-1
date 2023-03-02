1. Write characteristic equations and complete truth tables for D, JK, T flip-flops where `q(n)` represents main output value before the clock edge and `q(n+1)` represents output value after the clock edge.

```math
\begin{align*}

    q(n+1)^D =&~D \\
    q(n+1)^{JK} =&~j·\overline{q(n)}+\overline{k}·q(n) \\
    q(n+1)^T =&~t·\overline{q(n)}+\overline{t}·q(n) \\

\end{align*}
```

   **D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | `q(n+1)` has the same level as `d` |
   | ↑ | 0 | 1 | 0 | same as d |
   | ↑ | 1 | 0 | 1 | same as d |
   | ↑ | 1 | 1 | 1 | same as d |

   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | 0 | Output did not change |
   | ↑ | 0 | 0 | 1 | 1 | Output did not change |
   | ↑ | 0 | 1 | 0 | 0 | reset |
   | ↑ | 0 | 1 | 1 | 0 | reset |
   | ↑ | 1 | 0 | 0 | 1 | set |
   | ↑ | 1 | 0 | 1 | 1 | set |
   | ↑ | 1 | 1 | 0 | 0 | toggle |
   | ↑ | 1 | 1 | 1 | 1 | toggle |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ↑ | 0 | 0 | 0 | Output did not change |
   | ↑ | 0 | 1 | 1 | no change |
   | ↑ | 1 | 0 | 1 | invert |
   | ↑ | 1 | 1 | 0 | invert |

<a name="part1"></a>
