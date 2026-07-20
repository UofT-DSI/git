#!/bin/bash

# Create repository
mkdir recipe-book
cd recipe-book
git init -b main

# Commit 1
cat > cookies.txt << 'EOF'
CHOCOLATE CHIP COOKIES

Ingredients:
- 2 cups flour
- 1 cup butter
- 1 cup sugar
- 2 eggs
- 1 tsp vanilla

Instructions:
1. Mix butter and sugar
2. Add eggs and vanilla
3. Mix in flour
4. Bake at 350°F for 12 minutes
EOF
git add cookies.txt
git commit -m "Add chocolate chip cookie recipe"

# Commit 2
cat > pancakes.txt << 'EOF'
PANCAKES

Ingredients:
- 2 cups flour
- 2 eggs
- 1.5 cups milk
- 2 tbsp sugar
- 2 tsp baking powder

Instructions:
1. Mix dry ingredients
2. Whisk in eggs and milk
3. Cook on griddle until bubbles form
4. Flip and cook 2 more minutes
EOF
git add pancakes.txt
git commit -m "Add pancake recipe"

# Commit 3
cat > cookies.txt << 'EOF'
CHOCOLATE CHIP COOKIES

Ingredients:
- 2 cups flour
- 1 cup butter
- 1 cup sugar
- 2 eggs
- 1 tsp vanilla
- 2 cups chocolate chips

Instructions:
1. Mix butter and sugar
2. Add eggs and vanilla
3. Mix in flour
4. Fold in chocolate chips
5. Bake at 350°F for 12 minutes
EOF
git add cookies.txt
git commit -m "Add chocolate chips to cookie recipe"

# Commit 4
cat > smoothie.txt << 'EOF'
BERRY SMOOTHIE

Ingredients:
- 1 cup strawberries
- 1 banana
- 1 cup yogurt
- 0.5 cup orange juice
- 1 tbsp honey

Instructions:
1. Add all ingredients to blender
2. Blend until smooth
3. Pour and enjoy immediately
EOF
git add smoothie.txt
git commit -m "Add smoothie recipe"

# Commit 5
cat > README.md << 'EOF'
# Recipe Book

Welcome to our recipe collection!

## Available Recipes:
- Chocolate Chip Cookies (cookies.txt)
- Pancakes (pancakes.txt)
- Berry Smoothie (smoothie.txt)

## How to use:
1. Choose a recipe file
2. Read the ingredients
3. Follow the instructions
4. Enjoy your food!
EOF
git add README.md
git commit -m "Add README with recipe index"

# Show git status and log
git status
git log --oneline

echo "Repository setup complete. Add remote and push as needed."
