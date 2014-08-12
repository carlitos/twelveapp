//
//  AppDelegate.m
//  TwelveApp
//
//  Created by carlitos on 09/08/14.
//  Copyright (c) 2014 carlitos.cc. All rights reserved.
//

#import "AppDelegate.h"


@implementation AppDelegate

@synthesize statusItemIcon = _statusItemIcon,
statusItemIconHighlighted = _statusItemIconHighlighted,
statusItemIconNewNotification = _statusItemIconNewNotification;
@synthesize statusMenu = _statusMenu;
@synthesize window = _myWindow;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    NSBundle *appBundle = [NSBundle mainBundle];
    _statusItemIcon = [[NSImage alloc] initWithContentsOfFile:[appBundle pathForResource:@"status-off@2x" ofType:@"png"]];

    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [_statusItem setImage:_statusItemIcon];
    [_statusItem setHighlightMode:YES];
    
    [_myWindow setCanHide:NO];
    

}


//|===========================================|
//|================= DOCK ICON ===============|
//|===========================================|
//|===========================================|


// HIDE DOCK ICON
- (IBAction)button_nine:(NSButton *)sender {
    
    ProcessSerialNumber psn = { 0, kCurrentProcess };
    TransformProcessType(&psn, kProcessTransformToUIElementApplication);
    
    
}

// SHOW DOCK ICON
- (IBAction)button_ten:(NSButton *)sender {
    ProcessSerialNumber psn = { 0, kCurrentProcess };
    TransformProcessType(&psn, kProcessTransformToForegroundApplication);
}

// CHANGE DOCK ICON 1
- (IBAction)button_eleven:(NSButton *)sender {
       _myImage = [NSImage imageNamed: @"Giants_dock_icon2.png"];
       [NSApp setApplicationIconImage: _myImage];
}

// DEFAULT DOCK ICON
- (IBAction)button_twelve:(NSButton *)sender {
    [NSApp setApplicationIconImage: nil];
}


// TESTING SENDING NOTIFICATION
- (IBAction)notification_button:(NSButton *)sender {
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = @"HEY YO!!!";
    notification.informativeText = @"A notification";
    notification.soundName = NSUserNotificationDefaultSoundName;
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
}


// HIDE STATUS ITEM
- (IBAction)button_five:(NSButton *)sender {
    [[NSStatusBar systemStatusBar] removeStatusItem:_statusItem];
    
}


// SHOW STATUS ITEM
- (IBAction)button_six:(NSButton *)sender {
    
    NSBundle *appBundle = [NSBundle mainBundle];
    _statusItemIcon = [[NSImage alloc] initWithContentsOfFile:[appBundle pathForResource:@"status-off@2x" ofType:@"png"]];
    
    _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [_statusItem setImage:_statusItemIcon];
    [_statusItem setHighlightMode:YES];
    [_statusItem setMenu:_statusMenu];
    
}


// CHANGE TO ICON STATUS ITEM
- (IBAction)button_seven:(NSButton *)sender {
    
    NSBundle *appBundle = [NSBundle mainBundle];
    _statusItemIcon = [[NSImage alloc] initWithContentsOfFile:[appBundle pathForResource:@"status_icon2" ofType:@"png"]];
    
    _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [_statusItem setImage:_statusItemIcon];
    [_statusItem setHighlightMode:YES];
    [_statusItem setMenu:_statusMenu];
    
}


// SHOW THE HIDDEN ICON
- (IBAction)button_eight:(NSButton *)sender {
    NSBundle *appBundle = [NSBundle mainBundle];
    _statusItemIcon = [[NSImage alloc] initWithContentsOfFile:[appBundle pathForResource:@"status-off@2x" ofType:@"png"]];
    
    _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [_statusItem setImage:_statusItemIcon];
    [_statusItem setHighlightMode:YES];
    [_statusItem setMenu:_statusMenu];
}


@end