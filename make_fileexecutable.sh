# scripts makes all files in current directory an excutable
# takes a command line variable extension which is the file extension

extension="$1" #command line variable for the extension
for file in ./*."$extension"; do
        chmod u+x "$file"
done
