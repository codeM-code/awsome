pandoc --list-input-formats  >.pandoc-r
pandoc --list-output-formats >.pandoc-w

for /F %%w in (.pandoc-w) do pandoc   -w %%w   -o out.%%w   %1 %2 %3 %4 %5 %6 %7 %8 %9
