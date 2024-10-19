#!/bin/bash

# Name of the output file
output_file="index.html"

# Start the HTML content
echo "<!DOCTYPE html>" > "$output_file"
echo "<html>" >> "$output_file"
echo "<head>" >> "$output_file"
echo "    <title>Index of Shared Files</title>" >> "$output_file"
echo "</head>" >> "$output_file"
echo "<body>" >> "$output_file"
echo "    <h1>Index of Shared Files</h1>" >> "$output_file"
echo "    <ul>" >> "$output_file"

# Loop through each file in the specified directory
for file in ./content/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "        <li><a href=\"$file\">$filename</a></li>" >> "$output_file"
    fi
done

# Close the HTML tags
echo "    </ul>" >> "$output_file"
echo "</body>" >> "$output_file"
echo "</html>" >> "$output_file"

echo "Generated $output_file with links to files in $(pwd)."
