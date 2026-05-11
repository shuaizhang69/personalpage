import subprocess, os

base = r"D:\Agents\website_agent\personalpage"

# Clean up temp files
for f in ["check_dsti.py", "check_dsti2.py", "dsti_check.txt", "check_bytes.py", "dsti_bytes.txt", "fix_dsti.py"]:
    fp = os.path.join(base, f)
    if os.path.exists(fp):
        os.remove(fp)

# Add and commit
subprocess.run(["git", "add", "-A"], cwd=base)
result = subprocess.run(["git", "commit", "-m", "Fix DSTI-Net link type from pdf to doi"], cwd=base, capture_output=True, text=True)
print("Commit:", result.stdout, result.stderr)

result = subprocess.run(["git", "push"], cwd=base, capture_output=True, text=True, timeout=120)
print("Push:", result.stdout, result.stderr)
print("Done!")
