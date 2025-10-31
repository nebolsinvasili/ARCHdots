for dir in themes/*/;
do
	[[ -d "$dir" ]] || continue
	echo "Processing dir: $dir"

	for file in "$dir"*;
	do
		[[ -f "$file" ]] || continue
		
		filename=$(basename "$file")
		name="${filename%.*}"
		ext="${filename##*.}"

		new_folder="$name"
		mkdir -p "$dir$new_folder"
		echo "$file -> $dir$new_folder/theme.$ext"
		mv "$file" "$dir$new_folder/theme.$ext"
	done
	

done

