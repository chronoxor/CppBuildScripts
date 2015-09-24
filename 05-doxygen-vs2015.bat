cd ..
cd build
for %%f in (*-doxygen.vcxproj) do "C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe" %%~f /p:Configuration=Release
