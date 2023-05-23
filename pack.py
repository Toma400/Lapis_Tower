import zipfile, os

lt = os.getcwd()

exceptions = [
    "lapis.zig"
]

def pack():
    try:
        with zipfile.ZipFile(file=f"{lt}/lapis_lib.zip", mode='w') as zipf:
            for item in os.listdir(f"{lt}/lapis"):
                if item not in exceptions:
                    zipf.write(filename=f"{lt}/lapis/{item}", arcname=item) # packs whole directory
            zipf.write(filename=f"{lt}/readme.md", arcname="readme.md")
        return 0
    except Exception:
        return 1

pck = pack()
if pck == 0: print("Zip file successfully updated!")
if pck == 1: print("Zip file update failed. Please investigate the issue with CMD.")
input("Press Enter to finish...")
