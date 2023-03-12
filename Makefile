.PHONY: clean All

All:
	@echo "----------Building project:[ test_berserk - Debug ]----------"
	@"$(MAKE)" -f  "test_berserk.mk"
clean:
	@echo "----------Cleaning project:[ test_berserk - Debug ]----------"
	@"$(MAKE)" -f  "test_berserk.mk" clean
