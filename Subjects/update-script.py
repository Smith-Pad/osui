import os

def find_duplicates(filename, parent_dir):
    # Dictionary to store the directories containing the file
    dir_dict = {}

    # Iterate over all directories and subdirectories within the parent directory
    for root, dirs, files in os.walk(parent_dir):
        # If the filename is in the list of files in this directory, add it to the dictionary
        if filename in files:
            if filename not in dir_dict:
                dir_dict[filename] = []
            dir_dict[filename].append(root)

    # Only keep the entries in the dictionary where the file was found in multiple directories
    dir_dict = {k: v for k, v in dir_dict.items() if len(v) > 1}

    # Print out the results
    for filename, dirs in dir_dict.items():
        print(f"{filename} was found in the following directories:")
        for d in dirs:
            print(f"\t{d}")

if __name__ == '__main__':
    filename = "UI.css"  # Replace this with the filename you're looking for
    parent_dir = "/path/to/parent/directory"  # Replace this with the parent directory you want to search in
    find_duplicates(filename, parent_dir)
