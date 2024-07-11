# zip_results.py
import os
import zipfile
import sys
from datetime import datetime


def create_zip(source_dir, zip_name):
    with zipfile.ZipFile(zip_name, 'w') as zipf:
        for root, dirs, files in os.walk(source_dir):
            for file in files:
                if file.endswith(".png") or file.endswith(".xml") or file.endswith(".html"):
                    zipf.write(os.path.join(root, file),
                               os.path.relpath(os.path.join(root, file), source_dir))

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python zip_results.py <source_directory> <zip_name>")
        sys.exit(1)

    source_dir = sys.argv[1]
    zip_name = sys.argv[2]

    create_zip(source_dir, zip_name+str(datetime.now().strftime("%Y%m%d%H%S%M"))+".zip")
