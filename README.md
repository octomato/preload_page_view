# PreloadPageView

Like the name, this is the widget to support Pre-load function for PageView widget.

For better user experience sometimes we need pre-load the `images`/`web requests` before user really scrolled to next PageView but the official PageView don't support that.So this is the time to use `PreloadPageView`.

## Usage

Everything is similar like PageView, you need `PreloadPageView.builder` and `PreloadPageController` to create the PreloadPageView.

Also you can use `preloadPagesCount` to set preload pages count when you need.
### Example

``` dart
  @override
  Widget build(BuildContext context) {
    return new PreloadPageView.builder(
      itemCount: ...,
      itemBuilder: ...,
      onPageChanged: (int position) {...},
      .....
      preloadPagesCount: 3,
      controller: PreloadPageController(),
    );
  }
```



If you found any issue in the newest beta version, please try stable version [0.1.4]. Please give us a star if you like this widget. **Your star could help us update or fix bugs quickly.**

