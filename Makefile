.PHONY: clean All

All:
	@echo "----------Building project:[ berserk - Debug ]----------"
	@"$(MAKE)" -f  "berserk.mk"
clean:
	@echo "----------Cleaning project:[ berserk - Debug ]----------"
	@"$(MAKE)" -f  "berserk.mk" clean
