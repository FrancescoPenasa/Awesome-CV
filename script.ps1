Remove-Item -Path "en/*.log", "en/*.aux", "en/*.fls", "en/*.fdb_latexmk", "en/*.xdv", "en/*.gz" -Force
Remove-Item -Path "it/*.log", "it/*.aux", "it/*.fls", "it/*.fdb_latexmk", "it/*.xdv", "it/*.gz" -Force
Remove-Item -Path "en/out" -Recurse -Force
Remove-Item -Path "en/out" -Recurse -Force