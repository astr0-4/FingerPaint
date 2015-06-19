//
//  ViewController.m
//  FingerPaint
//
//  Created by Alex on 2015-06-19.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *drawingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    NSArray *touchesArray = [touches allObjects];
    for(int i=0; i<[touchesArray count]; i++)
    {
        UITouch *touch = (UITouch *)[touchesArray objectAtIndex:i];
        CGPoint point = [touch locationInView:nil];
        
        NSLog(@"x: %f, y:%f", point.x, point.y);
    }

    [self.drawingView setNeedsDisplay];
}

@end
