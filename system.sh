#!/bin/bash

# ==========================================
# System Explorer - Day 1 Linux Task
# ==========================================

REPORT="$HOME/Day-1/system_explorer_report.md"
DATE=$(date)
HOSTNAME=$(hostname)

echo "# 🐧 Linux File System Explorer Report" > "$REPORT"
echo "" >> "$REPORT"
echo "**Host:** $HOSTNAME" >> "$REPORT"
echo "**Scan Date:** $DATE" >> "$REPORT"
echo "" >> "$REPORT"
echo "---" >> "$REPORT"

# ------------------------------------------
# 1. Filesystem Overview
# ------------------------------------------
echo "## 📁 Filesystem Overview" >> "$REPORT"
echo "" >> "$REPORT"
echo '```' >> "$REPORT"
find / -type d 2>/dev/null | head -n 50 >> "$REPORT"
echo "... (truncated)" >> "$REPORT"
echo '```' >> "$REPORT"
echo "" >> "$REPORT"

# ------------------------------------------
# 2. Files Larger Than 100MB
# ------------------------------------------
echo "## 📦 Files Larger Than 100MB" >> "$REPORT"
echo "" >> "$REPORT"
echo '```' >> "$REPORT"
find / -type f -size +100M 2>/dev/null | head -n 50 >> "$REPORT"
echo '```' >> "$REPORT"
echo "" >> "$REPORT"

# ------------------------------------------
# 3. Symbolic Links in /etc
# ------------------------------------------
echo "## 🔗 Symbolic Links in /etc" >> "$REPORT"
echo "" >> "$REPORT"
echo '```' >> "$REPORT"
find /etc -type l 2>/dev/null >> "$REPORT"
echo '```' >> "$REPORT"
echo "" >> "$REPORT"

# ------------------------------------------
# 4. Symbolic Links in /usr/bin
# ------------------------------------------
echo "## 🔗 Symbolic Links in /usr/bin" >> "$REPORT"
echo "" >> "$REPORT"
echo '```' >> "$REPORT"
find /usr/bin -type l 2>/dev/null >> "$REPORT"
echo '```' >> "$REPORT"
echo "" >> "$REPORT"

# ------------------------------------------
# 5. Disk Usage for All Partitions
# ------------------------------------------
echo "## 💽 Disk Usage (All Partitions)" >> "$REPORT"
echo "" >> "$REPORT"
echo '```' >> "$REPORT"
df -h >> "$REPORT"
echo '```' >> "$REPORT"
echo "" >> "$REPORT"

# ------------------------------------------
# 6. Summary
# ------------------------------------------
echo "## ✅ Summary" >> "$REPORT"
echo "" >> "$REPORT"
echo "- Large files (>100MB): $(find / -type f -size +100M 2>/dev/null | wc -l)" >> "$REPORT"
echo "- Symlinks in /etc: $(find /etc -type l 2>/dev/null | wc -l)" >> "$REPORT"
echo "- Symlinks in /usr/bin: $(find /usr/bin -type l 2>/dev/null | wc -l)" >> "$REPORT"
echo "" >> "$REPORT"

echo "---" >> "$REPORT"
echo "📌 *Report generated for system documentation and onboarding purposes.*" >> "$REPORT"

echo "System exploration completed successfully ✅"
echo "Report generated: $REPORT"
