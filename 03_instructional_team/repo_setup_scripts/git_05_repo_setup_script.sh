#!/bin/bash

# Setup script for team-playlist-demo repository
# This creates a repository ready for merge conflict demonstrations

set -e  # Exit on any error

echo "=========================================="
echo "Setting up team-playlist-demo repository"
echo "=========================================="
echo ""

# Create and initialize repository
echo "1. Creating repository..."
mkdir -p team-playlist-demo
cd team-playlist-demo
git init -b main
echo "✓ Repository initialized"
echo ""

# Create initial playlist file
echo "2. Creating initial playlist..."
cat > playlist.txt << 'EOF'
TEAM PLAYLIST
=============

Song 1: Bohemian Rhapsody - Queen
Song 2: Hotel California - Eagles
Song 3: Sweet Child O' Mine - Guns N' Roses
Song 4: Imagine - John Lennon
Song 5: Billie Jean - Michael Jackson

Total songs: 5
Last updated: Monday
EOF

git add playlist.txt
git commit -m "Create initial team playlist"
echo "✓ Initial playlist committed"
echo ""

# Create Max's branch with changes
echo "3. Creating Max's branch (Max-song-change)..."
git checkout -b Max-song-change

cat > playlist.txt << 'EOF'
TEAM PLAYLIST
=============

Song 1: Bohemian Rhapsody - Queen
Song 2: Hotel California - Eagles
Song 3: Sweet Child O' Mine - Guns N' Roses
Song 4: Imagine - John Lennon
Song 5: Blinding Lights - The Weeknd

Total songs: 5
Last updated: Tuesday by Max
EOF

git add playlist.txt
git commit -m "Max: Replace Billie Jean with Blinding Lights"
echo "✓ Max's changes committed"
echo ""

# Return to main and create Em's branch with conflicting changes
echo "4. Creating Em's branch (Em-song-change)..."
git checkout main
git checkout -b Em-song-change

cat > playlist.txt << 'EOF'
TEAM PLAYLIST
=============

Song 1: Bohemian Rhapsody - Queen
Song 2: Hotel California - Eagles
Song 3: Sweet Child O' Mine - Guns N' Roses
Song 4: Imagine - John Lennon
Song 5: Levitating - Dua Lipa

Total songs: 5
Last updated: Tuesday by Em
EOF

git add playlist.txt
git commit -m "Em: Replace Billie Jean with Levitating"
echo "✓ Em's changes committed"
echo ""

# Return to main branch
echo "5. Returning to main branch..."
git checkout main
echo "✓ Back on main branch"
echo ""

# Display summary
echo "=========================================="
echo "Setup complete!"
echo "=========================================="
echo ""
echo "Repository structure:"
git log --oneline --graph --all
echo ""
echo "Branches created:"
git branch -a
echo ""
echo "=========================================="
echo "Next steps:"
echo "=========================================="
echo ""
echo "To push to GitHub:"
echo "  1. Create a new repository on GitHub named 'team-playlist-demo'"
echo "  2. Run these commands:"
echo ""
echo "     git remote add origin https://github.com/YOUR-USERNAME/team-playlist-demo.git"
echo "     git branch -M main"
echo "     git push -u origin main"
echo "     git push origin Max-song-change"
echo "     git push origin Em-song-change"
echo ""
echo "To test the merge conflict locally:"
echo "  1. git merge Max-song-change     (should succeed)"
echo "  2. git merge Em-song-change      (will conflict!)"
echo ""
echo "Repository ready for demonstration!"
echo "=========================================="
