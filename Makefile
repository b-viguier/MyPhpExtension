.PHONY: clean All

All:
	@echo "----------Building project:[ MyPhpExtension - Debug ]----------"
	@cd "MyPhpExtension" && $(MAKE) -f  "MyPhpExtension.mk"
clean:
	@echo "----------Cleaning project:[ MyPhpExtension - Debug ]----------"
	@cd "MyPhpExtension" && $(MAKE) -f  "MyPhpExtension.mk" clean
