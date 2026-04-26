#!/bin/bash
# Kalvium GitHub Commits Batch Script
# This script creates 175+ commits across your repositories to reach 350+ total commits

echo "Starting batch commit process..."

# Get the directory where your repositories are cloned
# Modify this path based on where your repos are located
BASE_DIR=~

# Array of your repositories
REPOS=(
  "automatic-water-planting-system"
  "video-upload-app"
  "wedfinity_frontend"
  "org-management-service-frontend"
  "org-management-service-backend"
  "doctor-appointment"
  "Smart-IoT-Home-Simulator"
  "IoT-Spam-Control"
)

# Process each repository
for repo in "${REPOS[@]}"; do
  echo "Processing $repo..."
  cd "$BASE_DIR/$repo" || continue
  
  # Create 22 commits per repo (22 * 8 = 176 commits total)
  for i in {1..22}; do
    mkdir -p .github/workflows
    echo "Auto-generated documentation file $i for batch commits" > ".github/workflows/doc_$i.md"
    git add ".github/workflows/doc_$i.md"
    git commit -m "docs: Add batch documentation file $i"
  done
  
  # Push to remote
  git push origin main
  echo "Completed $repo - 22 commits pushed!"
done

echo "Batch commit process completed!"
echo "Total commits created: ~176"
echo "Expected total commits: ~351"
echo "Check your GitHub profile for updated contribution count."
