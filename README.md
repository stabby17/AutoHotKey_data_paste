# AutoHotkey Data Paste Script

A powerful AutoHotkey script that cycles through lines of data from a text file, perfect for manual data entry in systems where automation is impossible or restricted.

## 🎯 Why This Script is Useful

Many enterprise systems, legacy applications, and secure environments don't allow:
- API integrations
- Browser automation (Selenium, etc.)
- Script injection
- Copy-paste from Excel/CSV files
- Bulk data import features

This script bridges that gap by letting you **manually paste data line by line** while maintaining speed and accuracy.

### Perfect for:
- **Legacy ERP systems** (SAP, Oracle, etc.)
- **Secure banking/financial applications**
- **Government portals** with strict security
- **Insurance claim systems**
- **Medical record systems**
- **Any form-heavy application** that requires manual entry

## 🚀 How It Works

1. Reads all lines from `data.txt`
2. Each time you press `Ctrl+V`, it pastes the current line
3. Automatically advances to the next line
4. Loops back to the first line when it reaches the end
5. Preserves your original clipboard content

## 📁 Setup

1. **Download** the script file (`pastedata.ahk`)
2. **Create** a `data.txt` file in the same folder
3. **Run** the script (or compile to `.exe`)

## 📝 Text File Format

Create a `data.txt` file with one piece of data per line:

```
John Smith
john.smith@email.com
555-123-4567
123 Main Street
New York
NY
10001
Manager
50000
```

### Rules:
- ✅ **One data item per line**
- ✅ **Empty lines are ignored**
- ✅ **No special formatting needed**
- ✅ **Any text content supported**
- ✅ **Unicode characters supported**

### Examples of Data Types:
```
# Names
John Doe
Jane Smith
Mike Johnson

# Email addresses
user1@domain.com
user2@domain.com
user3@domain.com

# Phone numbers
(555) 123-4567
(555) 987-6543
(555) 555-5555

# Addresses
123 Main St, Apt 4B
456 Oak Avenue
789 Pine Street

# Mixed data for form filling
ProductA
$29.99
In Stock
Electronics
SKU12345
```

## 🎮 Usage

### Basic Operation:
1. **Start the script** (double-click `pastedata.ahk`)
2. **Click** in the field where you want to paste data
3. **Press `Ctrl+V`** to paste the first line
4. **Press `Ctrl+V`** again to paste the second line
5. **Continue** until all data is entered

### Hotkeys:
- **`Ctrl+V`** - Paste current line and advance to next
- **`Ctrl+Shift+R`** - Reload the data file (useful when editing data.txt)

### Pro Tips:
- Use **Tab** to move between form fields
- Combine with **`Ctrl+V`** for rapid data entry
- Edit `data.txt` while script is running, then press `Ctrl+Shift+R` to reload
- The script cycles through data, so you can fill multiple identical forms

## 📊 Real-World Example

**Scenario**: Entering 100 customer records into a CRM system

**Traditional method**: 
- Copy from Excel → Paste → Tab → Copy next cell → Paste → Tab...
- **Time**: ~30 seconds per record = 50 minutes total

**With this script**:
- `Ctrl+V` → Tab → `Ctrl+V` → Tab → `Ctrl+V` → Tab...
- **Time**: ~5 seconds per record = 8 minutes total

**Result**: **6x faster** data entry!

## 🔧 Advanced Usage

### Multiple Data Sets
Create different `.ahk` files for different data sets:
- `customers.ahk` (points to `customers.txt`)
- `products.ahk` (points to `products.txt`)
- `orders.ahk` (points to `orders.txt`)

### Compiling to EXE
Right-click the `.ahk` file and select "Compile Script" to create a standalone executable that works without AutoHotkey installed.

## ⚠️ Important Notes

- **Original clipboard is preserved** - your copied data won't be lost
- **Works with any application** - web browsers, desktop apps, terminals
- **No network access** - completely offline operation
- **Lightweight** - minimal system resources
- **Secure** - no data is transmitted anywhere

## 🛠️ Requirements

- Windows OS
- [AutoHotkey](https://www.autohotkey.com/) installed (or use compiled `.exe`)
- Text file with your data

## 📈 Perfect For Teams

Share the compiled `.exe` with team members who need to do data entry. No technical knowledge required - just:
1. Put data in `data.txt`
2. Run the `.exe`
3. Start pasting with `Ctrl+V`

---

**Stop wasting time on repetitive data entry. Automate what you can, accelerate what you can't!**
