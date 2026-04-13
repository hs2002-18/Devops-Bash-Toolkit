#!/bin/bash
TARGET_DIR="$HOME/downloads"  #This is just a sample directory location, can be changed
if [ ! -d "$TARGET_DIR" ];then  #Checks if directory exists or not
    echo "Directory Does not exist"
    exit 1
fi

echo "Organizing file in $TARGET_DIR" #If the directory exists, we create sub directories for organizing files
mkdir -p "$TARGET_DIR/images"      # -p ensures there is no error if sub-directories already exist
mkdir -p "$TARGET_DIR/documets"
mkdir -p "$TARGET_DIR/vidoes"
mkdir -p "$TARGET_DIR/others"

for file in "$TARGET_DIR"/*;do    # Loops through each file
    if [ -f "$file" ];then        # -f checks if it is a regular file
         case "$file" in
            *.jpg|*.png|*.jpeg)
                mv "$file" "$TARGET_DIR/images/"
                ;;
            *.pdf|*.docx|*.txt)
                mv "$file" "$TARGET_DIR/documents/"
                ;;
            *.mp4|*.mkv)
                mv "$file" "$TARGET_DIR/videos/"
                ;;
            *)
                mv "$file" "$TARGET_DIR/others/"
                ;;
        esac
    fi
done

echo "Files organized successfully!"