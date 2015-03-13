.PHONY: clean All

All:
	@echo "----------Building project:[ PhpCpp - Debug ]----------"
	@cd "/home/benoit/Dev/MyPhpExtension//libs/PhpCpp" && make
	@echo Executing Post Build commands ...
	mkdir -p bin/Debug/
	cp libs/PhpCpp/build/libphpcpp.a bin/Debug/
	@echo Done
	@echo "----------Building project:[ MyPhpExtension - Debug ]----------"
	@cd "MyPhpExtension" && $(MAKE) -f  "MyPhpExtension.mk" && $(MAKE) -f  "MyPhpExtension.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ PhpCpp - Debug ]----------"
	@cd "/home/benoit/Dev/MyPhpExtension//libs/PhpCpp" && make clean
	@echo "----------Cleaning project:[ MyPhpExtension - Debug ]----------"
	@cd "MyPhpExtension" && $(MAKE) -f  "MyPhpExtension.mk" clean
