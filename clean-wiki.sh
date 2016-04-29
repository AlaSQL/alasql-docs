# We dont want relative links or header 1 from the wiki 

# Move headers to +1
find ./docs/wiki -type f -exec sed -i 's/^#/##/g' {} ; 

# Links formatted like (Nice link)[link]
find ./docs/wiki -type f -exec sed -i 's/\)\[(?!http)(([^\]]+))\]/\)\[/search\.html\?q=\1\]/g' {} ; 


# Links formatted like [[pagename]]
find ./docs/wiki -type f -exec sed -i 's/\[\[([^\]]+)\]\]/\(\1\)\[/search\.html\?q=\1\]/g' {} ;
