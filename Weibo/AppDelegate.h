//
//  AppDelegate.h
//  Weibo
//
//  Created by StevenZhang on 10/19/12.
//  Copyright (c) 2012 com.wildcat. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Webkit/Webkit.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet WebView *webView;
@property (assign) IBOutlet NSWindow *extWindow;
@property (assign) IBOutlet WebView *extWebView;

@end
