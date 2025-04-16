#!/usr/bin/env python3
"""
Script to fix formatting issues in RST files.
This script ensures:
1. Title overlines and underlines match in length and match the title text
2. Section and subsection underlines have appropriate length
3. Consistent formatting across all documentation files
"""

import os
import re
import glob

def fix_rst_formatting(file_path):
    """Fix all formatting issues in an RST file."""
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()
    
    # Original content for comparison
    original_content = content
    
    # Pattern to match a title with both overline and underline
    # Group 1: overline
    # Group 2: title text
    # Group 3: underline
    title_pattern = r'^([=\-~]+)\n([^\n]+)\n([=\-~]+)'
    
    def replace_title_markers(match):
        """Ensure title overline and underline match and are appropriate length."""
        overline = match.group(1)
        title = match.group(2)
        underline = match.group(3)
        
        # Use the character from the overline for both lines
        char = overline[0]
        
        # For main titles (=), make sure they're longer than the title
        if char == '=':
            min_length = max(len(title), 25)  # Ensure at least 25 chars or longer than title
            new_line = char * min_length
        else:
            # For sections and subsections, match the title length
            new_line = char * len(title)
        
        return f"{new_line}\n{title}\n{new_line}"
    
    # Replace title overlines and underlines
    content = re.sub(title_pattern, replace_title_markers, content, flags=re.MULTILINE)
    
    # Pattern to match a section heading with just underline
    # Group 1: section title
    # Group 2: underline
    section_pattern = r'^\n([^\n]+)\n([=\-~]+)$'
    
    def replace_section_underline(match):
        """Ensure section underlines match their title length or are longer."""
        title = match.group(1)
        underline = match.group(2)
        
        char = underline[0]
        
        # For section headings (-), make them match the title length
        if char == '-':
            new_underline = char * len(title)
        # For subsection headings (~), make them longer than the title
        elif char == '~':
            new_underline = char * (len(title) + 5)  # Ensure it's longer than title
        else:
            new_underline = char * len(title)
        
        return f"\n{title}\n{new_underline}"
    
    # Replace section underlines
    content = re.sub(section_pattern, replace_section_underline, content, flags=re.MULTILINE)
    
    # Pattern to match a "Detailed Contents" heading specifically (common issue)
    detailed_pattern = r'(Detailed Contents)\n([=\-~]+)'
    content = re.sub(detailed_pattern, r'\1\n-----------------', content, flags=re.MULTILINE)
    
    # Pattern to match "Key Principles" heading specifically (common issue)
    key_principles_pattern = r'(Key Principles)\n([=\-~]+)'
    content = re.sub(key_principles_pattern, r'\1\n--------------', content, flags=re.MULTILINE)
    
    # Pattern to match "Rationale" heading specifically (common issue)
    rationale_pattern = r'(Rationale)\n([=\-~]+)'
    content = re.sub(rationale_pattern, r'\1\n---------', content, flags=re.MULTILINE)
    
    # Save changes if content was modified
    if content != original_content:
        with open(file_path, 'w', encoding='utf-8') as file:
            file.write(content)
        print(f"Fixed formatting in {file_path}")
        return True
    else:
        print(f"No changes needed in {file_path}")
        return False

def main():
    """Find and fix all RST files in the source directory."""
    base_dir = "source"
    fixed_count = 0
    
    # Find all RST files in the source directory and its subdirectories
    rst_files = glob.glob(f"{base_dir}/**/*.rst", recursive=True)
    
    # Fix each file
    for file_path in rst_files:
        if fix_rst_formatting(file_path):
            fixed_count += 1
        
    print(f"Processed {len(rst_files)} RST files, fixed {fixed_count} files")

if __name__ == "__main__":
    main() 