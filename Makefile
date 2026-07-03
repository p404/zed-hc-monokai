# HC Monokai - Zed Theme Makefile
# Installs the theme to Zed's themes directory on macOS

THEME_NAME = hc-monokai
THEME_FILE = themes/$(THEME_NAME).json
ZED_THEMES_DIR = $(HOME)/.config/zed/themes

.PHONY: install uninstall check

install: $(ZED_THEMES_DIR)
	@cp $(THEME_FILE) $(ZED_THEMES_DIR)/
	@echo "Installed $(THEME_NAME) to $(ZED_THEMES_DIR)"
	@echo "Restart Zed or use 'theme selector: toggle' (Cmd+K Cmd+T) to select the theme"

$(ZED_THEMES_DIR):
	@mkdir -p $(ZED_THEMES_DIR)

uninstall:
	@rm -f $(ZED_THEMES_DIR)/$(THEME_NAME).json
	@echo "Removed $(THEME_NAME) from $(ZED_THEMES_DIR)"

check:
	@if [ -f $(ZED_THEMES_DIR)/$(THEME_NAME).json ]; then \
		echo "$(THEME_NAME) is installed"; \
	else \
		echo "$(THEME_NAME) is not installed"; \
	fi
