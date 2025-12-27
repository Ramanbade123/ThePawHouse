Write-Host "Installing Forever Homes Pet Adoption Website..." -ForegroundColor Green
Write-Host ""

# Create directories
Write-Host "Creating project structure..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "src/components"
New-Item -ItemType Directory -Force -Path "src/pages"
New-Item -ItemType Directory -Force -Path "public"

Write-Host "✓ Directory structure created" -ForegroundColor Green

# Create package.json
Write-Host "Creating package.json..." -ForegroundColor Yellow
@'
{
  "name": "forever-homes",
  "private": true,
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "framer-motion": "^10.16.16",
    "lucide-react": "^0.344.0",
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "react-intersection-observer": "^9.5.3"
  },
  "devDependencies": {
    "@vitejs/plugin-react": "^4.2.1",
    "autoprefixer": "^10.4.16",
    "postcss": "^8.4.32",
    "tailwindcss": "^3.4.0",
    "vite": "^5.0.8"
  }
}
'@ | Out-File -FilePath "package.json" -Encoding UTF8
Write-Host "✓ package.json created" -ForegroundColor Green

Write-Host ""
Write-Host "Installation complete! Run these commands:" -ForegroundColor Green
Write-Host "npm install" -ForegroundColor Cyan
Write-Host "npm run dev" -ForegroundColor Cyan