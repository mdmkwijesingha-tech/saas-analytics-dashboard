@echo off
echo 🚨 NUCLEAR FIX: Removing All Tailwind CSS
echo =========================================

cd C:\Users\ACER\Desktop\saas-analytics-dashboard

echo 🗑️ Step 1: Uninstalling Tailwind CSS...
call npm uninstall tailwindcss postcss autoprefixer

echo 🗑️ Step 2: Removing config files...
if exist tailwind.config.js del tailwind.config.js
if exist postcss.config.js del postcss.config.js

echo 🧹 Step 3: Cleaning npm cache...
call npm cache clean --force

echo 🎨 Step 4: Creating clean CSS file...
(
echo body {
echo   margin: 0;
echo   font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
echo     'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
echo     sans-serif;
echo   -webkit-font-smoothing: antialiased;
echo   -moz-osx-font-smoothing: grayscale;
echo }
echo.
echo code {
echo   font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New',
echo     monospace;
echo }
) > src\index.css

echo 📝 Step 5: Creating test App.js...
(
echo import React from 'react';
echo.
echo function App^(^) {
echo   return ^(
echo     ^<div style={{padding: '40px', textAlign: 'center', backgroundColor: '#f8fafc', minHeight: '100vh'}}^>
echo       ^<h1 style={{color: '#1e293b', fontSize: '3rem', marginBottom: '1rem'}}^>
echo         🎉 SUCCESS!
echo       ^</h1^>
echo       ^<p style={{color: '#64748b', fontSize: '1.2rem', marginBottom: '2rem'}}^>
echo         React app is working perfectly!
echo       ^</p^>
echo       ^<div style={{
echo         backgroundColor: '#10b981', 
echo         color: 'white', 
echo         padding: '1rem 2rem', 
echo         borderRadius: '8px', 
echo         display: 'inline-block',
echo         fontWeight: 'bold'
echo       }}^>
echo         ✅ Ready for Dashboard Component
echo       ^</div^>
echo     ^</div^>
echo   ^);
echo }
echo.
echo export default App;
) > src\App.js

echo.
echo ✅ NUCLEAR FIX COMPLETE!
echo ========================
echo.
echo 🚀 Now run: npm start
echo 📱 Your app should load without ANY errors
echo 🎯 Then replace App.js with dashboard component
echo.
echo 💡 What was fixed:
echo    ❌ Removed Tailwind CSS completely
echo    ❌ Removed PostCSS configuration  
echo    ❌ Removed Tailwind config files
echo    ✅ Clean React app ready to go
echo.
pause