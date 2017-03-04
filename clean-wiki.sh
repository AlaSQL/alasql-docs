
# Sum of all wiki - worst solution ever...
rm ./docs/wiki/_Footer.md
rm ./docs/wiki/_Sidebar.md
find ./docs/wiki -type f -exec cat > ./docs/wiki/_.md {} ';' 

# Move headers to +1 depth
find ./docs/wiki -type f -exec sed -i 's/^#/##/g' {} ';' 


# We dont want relative links or header 1 from the wiki 
# Links formatted like (Nice link)[link]
find ./docs/wiki -type f -exec sed -i 's/\)\[(?!http)(([^\]]+))\]/\)\[/search\.html\?q=\1\]/g' {} ';' 
# Links formatted like [[pagename]]
find ./docs/wiki -type f -exec sed -i 's/\[\[([^\]]+)\]\]/\(\1\)\[/search\.html\?q=\1\]/g' {} ';'

