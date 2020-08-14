syn region texZone start="\\begin{lstlisting}" end="\\end{lstlisting}\|%stopzone\>"
syn region texZone start="\\begin{[a-zA-Z0-9]*code}" end="\\end{[a-zA-Z0-9]*code}\|%stopzone\>"
syn region texZone start="\\begin{[a-zA-Z0-9]*listing}" end="\\end{[a-zA-Z0-9]*listing}\|%stopzone\>"
syn region texZone start="\\lstinputlisting" end="{\s*[a-zA-Z/.0-9_^]\+\s*}"
syn match texInputFile "\\lstinline\s*\(\[.*\]\)\={.\{-}}" contains=texStatement,texInputCurlies,texInputFileOpt
