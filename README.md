This plugin helps to design and develop beautiful responsive and adaptive flutter apps.

## Lightweight, Responsive Spacing

All design principles have roughly the same elements. For example, Material Design has a responsive 12 column system that works with margin, gutter & body.
Our default values are set in the Material Design Guidelines, but you can also easily set your own breakpoints, margins, and spacing. 

We have developed this plugin so that you can easily make your app adaptive and responsive.

Quick Example: Access global padding setting in your widget:

```dart
Spacing.of(context).padding
```

You get padding for different screen sizes:
* lg (1440+) = 24
* md (1240+) = 24
* sm (600+) = 16
* xs (<600) = 8

<img src="https://raw.githubusercontent.com/AlexanderThiele/responsive_spacing/main/resources/padding.png" alt="columns, gutter, margin" width="708"/>

## Columns, Gutters & Margins

The responsive layout grid is made up of three elements: columns, gutters, and margins. Read everything about Columns, Gutters & Margins on the [material guidelines responsive layout page](https://material.io/design/layout/responsive-layout-grid.html#columns-gutters-and-margins).

<img src="https://raw.githubusercontent.com/AlexanderThiele/responsive_spacing/main/resources/columns-gutter-margin.png" alt="columns, gutter, margin"  width="600"/>

## Default Sizes
The [Material Breakpoints](https://material.io/design/layout/responsive-layout-grid.html#breakpoints) are used for all default values.   

<img src="https://raw.githubusercontent.com/AlexanderThiele/responsive_spacing/main/resources/default-values.png" alt="default"  width="600"/>

As an example, the 360 size display has 4 columns, a margin of 16, padding of 8 & gutters of 8.

<img src="https://raw.githubusercontent.com/AlexanderThiele/responsive_spacing/main/resources/360.png" alt="default" width="600"/>

<img src="https://raw.githubusercontent.com/AlexanderThiele/responsive_spacing/main/resources/600.png" alt="default" width="600"/>

If you combine this now, you get a responsive layout. See it in action:

<img src="https://raw.githubusercontent.com/AlexanderThiele/responsive_spacing/main/resources/layout_transform.gif" alt="Responsive App" width="600"/>

## Usage

Instead of using a `Scaffold`, use the `ResponsiveScaffold`:

```dart
ResponsiveScaffold(
  appBar: AppBar(
    title: const Text("The Title"),
  ),
  body: YourWidget()
);
```

And in your Widget, access the Spacing class with `Spacing.of(context)` which returns an object of `ResponsiveData`. The object has all necessary spacings.

```dart
ResponsiveData responsiveData = Spacing.of(context);
// Access your responsive properties:
responsiveData.margin;
responsiveData.padding;
responsiveData.gutter;
responsiveData.body;
responsiveData.layoutColumns;

// You are now good to use these properties in your layout.
```

For example with a Card:

```dart
Card(
  // use margin
  margin: Spacing.of(context).margin.horizontalEdgeInsets,

  child: Padding(

    // use padding
    padding: Spacing.of(context).padding.allEdgeInsets,
    
    child: Column(
      children: [
        Text("This is a Title"),
        Text("This is the subtitle, usually you explain something")
      ],
    ),
  ),
)
```

## Custom Adaptive Breakpoints
You can also customize your own breakpoints. The default values are Material Design screen sizes:

* xl: 1920, disabled
* lg: 1440, enabled
* md: 1240, enabled
* sm2: 905, enabled
* sm1: 600, enabled
* xs: from 0 to sm1, always enabled

To customize, use the setDefaults method in your main:
```dart
void main() {
  ResponsiveSpacing.setDefaults(
    globalBreakpoints: Breakpoints(
      xl: const BreakpointEntry(2560, enabled: true),
      lg: const BreakpointEntry(1440),
      md: const BreakpointEntry(1240),
      sm2: const BreakpointEntry(905),
      sm1: const BreakpointEntry(600),
    ),
  );

  runApp(const MyApp());
}
```

## Custom Padding, Gutter, Body & Margin

Just like the custom breakpoints, you can also set your own spacing, spaces, and margins. Create your own gutter class by extending `ResponsiveCollection`:

```dart
class MyResponsiveGutters extends ResponsiveCollection {
  @override
  ScaledSize xl(double width) => const ScaledSize(size: 16);

  @override
  ScaledSize lg(double width) => const ScaledSize(size: 16);

  @override
  ScaledSize md(double width) => const ScaledSize(size: 8);

  @override
  ScaledSize sm2(double width) => const ScaledSize(size: 4);

  @override
  ScaledSize sm1(double width) => const ScaledSize(size: 4);

  @override
  ScaledSize xs(double width) => const ScaledSize(size: 2);

  @override
  ScaledSize fallback(double width) => const ScaledSize(size: 2);
}
```

And overwrite the default global gutters in your main:

```dart
void main() {
  // optional setting defaults
  ResponsiveSpacing.setDefaults(
    globalGutter: MyResponsiveGutters(),
    globalPadding: MyResponsivePadding()
  );

  runApp(const MyApp());
}
```

## Data Class
Everything you need is stored in the `ResponsiveData` class which is accessible via the context.

```dart
class ResponsiveData {
  final ScaledSize margin;
  final ScaledSize padding;
  final ScaledSize gutter;
  final ScaledSize body;
  final LayoutColumns layoutColumns;
  // ...
}
```

## Available Responsive Widgets
There are two types of widgets, the data widgets that create the spacing context and widgets that use the spacing context.

## Data Widgets
Data widgets create the spacing context and provide responsive values to all widgets created in the tree below. if there are multiple data widgets in the tree, the closest one is taken.

* ResponsiveScaffold

## Widgets
* ResponsiveCard
* ResponsiveGrid
