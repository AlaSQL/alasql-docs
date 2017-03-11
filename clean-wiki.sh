
# Sum of all wiki - worst solution ever...
rm ./docs/wiki/_Footer.md
rm ./docs/wiki/_Sidebar.md
rm ./docs/wiki/README---old-reference.md
rm ./docs/wiki/readme.md
rm ./docs/wiki/Home.md
find ./docs/wiki -name "*.md" -exec cat > ./docs/wiki/_.md {} ';' 


# Move headers to +1 depth
find ./docs/wiki -name "*.md" -exec sed -i -e 's/^#/##/g' {} ';' 



# We dont want relative links or header 1 from the wiki 

# Links formatted like (Nice link)[link]
find ./docs/wiki -name "*.md" -exec sed -i -e '/)\[http/! s/)\[\([^\]]+\)\]/)\[\/search\.html\?q=\1\]/g' {} ';' # This will ignore all lines with full URL :-(

# Links formatted like [[pagename]]
find ./docs/wiki -name "*.md" -exec sed -i -e 's/\[\[\([^\]]+\)\]\]/(\1)\[\/search\.html\?q=\1\]/g' {} ';'

