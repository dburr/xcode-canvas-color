//
//  NSView+CanvasBackground.m
//  IBCanvasColor
//
//  Created by Ryan Pendleton on 10/18/14.
//  Copyright (c) 2014 Inline-Studios. All rights reserved.
//

#import "NSView+CanvasBackground.h"

@interface NSView (CanvasBackgroundPrivate)

- (void)foreachRectBeingDrawn:(void(^)(CGRect rect))block;
- (void(^)())drawingCompletionBlock;

@end

@implementation NSView (CanvasBackground)

- (void)is_drawRect:(NSRect)dirtyRect
{
    // original was 0.85f, dark gray = 0.55f, 0.75f seems to be a good compromise
	[[NSColor colorWithWhite:0.75f alpha:1.0f] set];
	
	[self foreachRectBeingDrawn:^(CGRect rect) {
		NSRectFill(rect);
	}];
	
	// Xcode crashes when I try to call the completion block, so let's just hope it's unnecessary..
//	void(^completion)() = [self drawingCompletionBlock];
//	completion();
}

@end
