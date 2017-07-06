# LoopedContentsView
[![Swift](https://img.shields.io/badge/swift-3.0-green.svg?style=flat)](#)
[![Swift](https://img.shields.io/badge/swift-3.2-green.svg?style=flat)](#)
[![Platform](https://img.shields.io/badge/platform-ios-lightgrey.svg?style=flat)](#)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://opensource.org/licenses/MIT)

## 환경
xcode8, xcode9 beta2에서 정상적으로 동작.

## Swift 4
Swift 4에서 사용하려면 swift4 브랜치를 이용하세요.

## Overview

<img src="https://github.com/naru-jpn/LoopedContentsView/blob/master/LoopedContentsView.gif?raw=true" width="500" />

LoopedContentsView display and handle infinite looped contents. __LoopedContentsView can bear very fast scroll!__

## Usage

### Delegate / DataSource

LoopedContentsView needs delegate and datasource like UITableView/UICollectionView.

#### Delegate

Required
```
func loopedContentsView(loopedContentsView: LoopedContentsView, lengthOfContentAtIndex index: Int) -> CGFloat
```

Optional
```
func loopedContentsView(loopedContentsView: LoopedContentsView, willSelectContentAtIndex index: Int)
func loopedContentsView(loopedContentsView: LoopedContentsView, didSelectContentAtIndex index: Int)
func loopedContentsView(loopedContentsView: LoopedContentsView, willDeselectContentAtIndex index: Int)
func loopedContentsView(loopedContentsView: LoopedContentsView, didDeselectContentAtIndex index: Int)
func loopedContentsView(loopedContentsView: LoopedContentsView, willDisplayCell cell: LoopedContentsViewCell, forItemAtIndex index: Int)
func loopedContentsView(loopedContentsView: LoopedContentsView, didEndDisplaying cell: LoopedContentsViewCell, forItemAtIndex index: Int)
func loopedContentsView(loopedContentsView: LoopedContentsView, didFocusCell cell: LoopedContentsViewCell, forItemAtIndex index: Int)
```

#### DataSource

Required
```
func loopedContentsViewNumberOfContents(loopedContentsView: LoopedContentsView) -> Int
func loopedContentsView(loopedContentsView: LoopedContentsView, cellAtIndex index: Int) -> LoopedContentsViewCell
```

### Register Cell Class

You can register cell class.

```
loopedContentsView.registerClass(class: {Name of Cell Class}.self, forCellReuseIdentifier: "{Identifier}")
```

### Example

[LoopedContentsViewExample](https://github.com/ximhear/LoopedContentsView/tree/master/LoopedContentsViewExample)

## License

LoopedContentsView is released under the MIT license. See LICENSE for details.
