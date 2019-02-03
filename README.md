# PreloadPageView

Like the name, this is the widget to support Pre-load function for PageView widget

## Usage

Everything is similar like PageView, you need `PreloadPageView.builder` and `PreloadPageController` to create the PreloadPageView

### Example

``` dart
  @override
  Widget build(BuildContext context) {
    return new PreloadPageView.builder(
      itemCount: ...,
      itemBuilder: ...,
      onPageChanged: (int position) {...},
      .....
      controller: PreloadPageController(),
    );
  }
```
