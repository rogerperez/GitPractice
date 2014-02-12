//
//  ViewController.m
//  GitPractice
//
//  Created by Roger Perez on 2/12/14.
//  Copyright (c) 2014 Roger Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *startupImages;

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSMutableArray *startupImages = [[NSMutableArray alloc] init];
    for (int i = 1; i < 6; i++) {
        UIImage *addedImage = [UIImage imageNamed:[NSString stringWithFormat:@"shot%d", i]];
        [startupImages addObject:addedImage];
    }

    NSTimeInterval duration = 30;
    self.startupImages.image = [UIImage animatedImageWithImages:startupImages duration:duration];
    
    
    
    //UIImage *animatedImage =
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
