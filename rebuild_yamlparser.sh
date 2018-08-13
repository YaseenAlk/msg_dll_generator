mkdir -p bin
cd src/YAMLParser
dotnet publish -o ../../bin -f netcoreapp2.1
cp -r TemplateProject ../../bin
