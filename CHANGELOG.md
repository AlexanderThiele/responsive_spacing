## 1.1.0
* context.spacing.xs; // default now to 4
* added iconSize to simple spacing config
```dart
context.spacing.iconSize; // default 24 for any screen
```

### New Widgets
* GutterColumn: for use in a column
* GutterRow: for use in a row
* PageDivider: It divides the page into 2 widgets, on big screens it places the widgets next to each other, on smaller screens, it places it below each other.

## 1.0.0
* Flutter 2.10 ready.
* Dart 3.0 ready.
* Added spacings, gigaSpacings

```dart
// Example values for a Pixel 7 Pro
context.spacing.xs; // default 2
context.spacing.s; // default 8
context.spacing.m; // default 12
context.spacing.l; // default 16
context.spacing.xl; // default 32
context.spacing.xxl; // default 56

// Example:

// Instead of 
SizedBox(height: 8);

// use
SizedBox(height: context.spacing.s); // Wow!
```

* removed fallback values

## 0.2.2
* readme update. changed default specs

## 0.2.1
* pubspec update, readme update

## 0.2.0
* customize your own breakpoints
* customize your gutters, paddings, margins and body

## 0.1.2
* Just readme update

## 0.1.1

* Format code
* Add some documentation

## 0.1.0

Initial Responsive Layout
