//
//  AppDelegate.m
//  Weibo
//
//  Created by StevenZhang on 10/19/12.
//  Copyright (c) 2012 com.wildcat. All rights reserved.
//

#import "AppDelegate.h"
#import "WebKit/WebUIDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [_webView.mainFrame loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m.weibo.cn"]]];
    _webView.UIDelegate = self;
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    [_window makeKeyAndOrderFront:self];
    return YES;
}

- (WebView *)webView:(WebView *)sender createWebViewWithRequest:(NSURLRequest *)request
{
    [_extWindow makeKeyAndOrderFront:self];
    return _extWebView;
}

- (IBAction)closeWindow:(id)sender
{
    [[[NSApplication sharedApplication] keyWindow] close];
}

- (IBAction)selectAll:(id)sender
{
    NSWindow *activeWindow = [[NSApplication sharedApplication] keyWindow];
    if (activeWindow == _window) {
        [_webView selectAll:self];
    } else {
        [_extWebView selectAll:self];
    }
}

- (IBAction)copy:(id)sender
{
    NSWindow *activeWindow = [[NSApplication sharedApplication] keyWindow];
    if (activeWindow == _window) {
        [_webView copy:self];
    } else {
        [_extWebView copy:self];
    }
}

- (IBAction)cut:(id)sender
{
    NSWindow *activeWindow = [[NSApplication sharedApplication] keyWindow];
    if (activeWindow == _window) {
        [_webView cut:self];
    } else {
        [_extWebView cut:self];
    }
}

- (IBAction)paste:(id)sender
{
    NSWindow *activeWindow = [[NSApplication sharedApplication] keyWindow];
    if (activeWindow == _window) {
        [_webView paste:self];
    } else {
        [_extWebView paste:self];
    }
}
@end
