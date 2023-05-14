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

## Buy me a cup of coffee

When I was working at Google, I created a feature request at Buganizer about the preload function. At my part time(I'm not part of the Flutter team) I worked to add the preload function to Flutter official page_view widget and fix the bugs you all reported in this repo.

Suddenly Google announced a 12k layoff and my team disappeared so I'm back to maintain this widget! If you think this widget helps and want to buy me a cup of coffee to help me fix bugs, please click this [PayPal link](https://www.paypal.com/paypalme/octomato), thanks in advance :)
