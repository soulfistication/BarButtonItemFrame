//
//  ViewController.m
//  ELBarButtonHacking
//
//  Created by Ivan Almada on 3/26/20.
//  Copyright © 2020 Ivan Almada. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButtonItem;

@end

@implementation ViewController

#pragma mark - UIViewController

- (void) viewDidLoad {
  [super viewDidLoad];

  UIView *barButtonView = [self viewForUIBarButtonItem:self.barButtonItem];

  if (barButtonView) {
    NSLog(@"The frame of the UIBarButtonItem is: x: %.2f, y: %.2f, w: %.2f, h: %.2f",
          barButtonView.frame.origin.x,
          barButtonView.frame.origin.y,
          barButtonView.frame.size.width,
          barButtonView.frame.size.height);
  } else {
    NSLog(@"%@", @"We didn't found the UIBarButtonItem's view");
  }

}

#pragma mark - Hacking

- (UIView *) viewForUIBarButtonItem:(UIBarButtonItem *)barButtonItem {

  UIView *view = [self.navigationItem.rightBarButtonItem valueForKey:@"view"];

  if (view && [view isKindOfClass:[UIView class]]) {
    return view;
  } else {
    return nil;
  }

}

#pragma mark - IBAction

- (IBAction)barButtonItemTapped:(id)sender {
  NSLog(@"%@", @"UIBarButtonItem tapped.");
}


@end
