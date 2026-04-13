# 📂 File Organizer Script

## 📌 Problem

When downloading files, folders like Downloads often become cluttered with different types of files such as images, documents, and videos. Manually organizing them is repetitive and time-consuming.

---

## 💡 Solution

This Bash script automatically organizes files into different folders based on their file type (extension).

It helps keep directories clean and structured without manual effort.

---

## ⚙️ Features

* Organizes files into categories:

  * Images
  * Documents
  * Videos
  * Others
* Automatically creates folders if they don’t exist
* Processes all files in a given directory

---

## 🛠️ Tech Used

* Bash scripting
* Linux commands:

  * `mkdir`
  * `mv`
  * `case`
  * `for loop`

---

## 📚 What I Learned

* Using loops to iterate over files
* Using `case` statements for pattern matching
* Working with file and directory operations in Bash
* Automating repetitive file management tasks

---

## ▶️ How to Run

1. Make it executable:

```bash
chmod +x organize_files.sh
```

2. Run the script:

```bash
./organize_files.sh
```

---

## 📦 Example

### Before:

```
downloads/
 ├── photo.jpg
 ├── resume.pdf
 ├── movie.mp4
 ├── notes.txt
```

### After:

```
downloads/
 ├── images/photo.jpg
 ├── documents/resume.pdf
 ├── documents/notes.txt
 ├── videos/movie.mp4
 ├── others/
```

---

## 📌 Note

* Make sure the target directory exists.
* You can modify the `TARGET_DIR` variable in the script to organize a different folder.
* File types can be extended by adding more extensions in the script.
