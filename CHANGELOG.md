# Changelog

## [1.0.2] - 2025-01-09
### Fixed
- **Code Formatting**: Applied Dart formatter to all generated files for perfect static analysis score
  - Fixed formatting issues in `hugeicons.dart` and `stroke_rounded.dart`
  - Achieved perfect 50/50 static analysis score on pub.dev
  - Improved code readability and consistency

## [1.0.1] - 2025-01-09
### Fixed
- **Code Quality**: Fixed linting issues for perfect static analysis score
  - Added proper curly braces around if/else statements in generated Dart code
  - Fixed string concatenation to use proper interpolation syntax
  - Improved overall code quality and maintainability

## [1.0.0] - 2025-01-09
### Major Changes
- **BREAKING**: Migrated from font-based (TTF) to SVG-based icons for better performance and scalability
- **BREAKING**: Removed font assets and dependencies - now uses `flutter_svg` package
- **BREAKING**: Updated icon naming pattern to `HugeIcons.strokeRounded[IconName]`

### Added
- **Stroke Width Control**: Added `strokeWidth` parameter to `HugeIcon` widget for fine-tuned design control
- **SVG-Based Icons**: High-quality vector icons that scale perfectly at any size
- **Tree Shaking Support**: Only include the icons you use in your final app bundle
- **Enhanced Performance**: Faster rendering and smaller bundle sizes with SVG approach
- **4,500+ Icons**: Comprehensive collection of stroke-rounded icons

### Removed
- Font-based icon system (TTF files)
- Old icon naming conventions
- Font family dependencies

### Updated
- Package version bumped to 1.0.0 to reflect major architectural changes
- All icons now use consistent stroke-rounded style
- Improved documentation and usage examples

## [0.0.10] - 2024-10-06
### Fixes
- General bug fixes and improvements.
- Updated font assets.
- Added the latest icons to the package.

## [0.0.7] - 2024-07-25
### Fixes
- General bug fixes and improvements.
- Added the latest icons to the package.

## [0.0.5] - 2024-07-09
### Fixes
- General bug fixes and improvements.

## [0.0.4] - 2024-07-09
### Fixes
- General bug fixes and improvements.

## [0.0.3] - 2024-07-09
### Added
- Created the `HugeIcon` widget to display icons with customizable color and size.
- Added documentation comments for all public API elements.
- Provided a test file to verify the functionality of the `HugeIcons` and `HugeIcon` widgets.
- Included an example project demonstrating how to use the `hugeicons` package in a Flutter application.

## [0.0.1] - 2024-07-05
### Fixes
- General bug fixes and improvements.

## [0.0.1] - 2024-07-02
### Added
- Initial release of the `hugeicons` package.
