import os 
import time
folder_path = "/root"
current_time= time.time()
days_7 = 7*24*60*60
for file in os.listdir(folder_path):
    file_path = os.path.join(folder_path, file)
    if os.path.isfile(file_path):
        file_modified_time = os.path.getmtime(file_path)
        if (current_time - file_modified_time) > days_7:
            try:
                os.remove(file_path)
                print(f"Deleted: {file_path}")
            except Exception as e:
                print(f"Failed to delete {file_path}: {e}")
