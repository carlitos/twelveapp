//
//  AppDelegate.h
//  TwelveApp
//
//  Created by carlitos on 09/08/14.
//  Copyright (c) 2014 carlitos.cc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>


@property (assign) IBOutlet NSWindow *window;

// STATUS MENU ITEMS
@property (assign)NSMenu *statusMenu;
@property (strong)NSStatusItem *statusItem;
@property (strong)NSStatusItem *statusItemCreated;

@property (strong) NSImage *statusItemIcon;
@property (strong) NSImage *statusItemIconHighlighted;
@property (strong) NSImage *statusItemIconNewNotification;


@property (strong) NSImage *myImage;

@property (nonatomic, retain) IBOutlet NSButton *quit_button;


// CUSTOM DOCKTILE
@property (assign)NSDockTile *cumtomDockTile;


- (IBAction)button_five:(NSButton *)sender;
- (IBAction)button_six:(NSButton *)sender;
- (IBAction)button_seven:(NSButton *)sender;
- (IBAction)button_eight:(NSButton *)sender;


// ICON DOCK AREA BUTTONS


// || LAST GROUP
- (IBAction)button_nine:(NSButton *)sender;
- (IBAction)button_ten:(NSButton *)sender;
- (IBAction)button_eleven:(NSButton *)sender;
- (IBAction)button_twelve:(NSButton *)sender;

- (IBAction)notification_button:(NSButton *)sender;



@end
