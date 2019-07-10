//
//  ViewController.m
//  MultiTargetTest
//
//  Created by mingzhe on 2015/3/10.
//  Copyright (c) 2015年 freedancer. All rights reserved.
//

#import "MainViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize alabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    // load localized string
    self.alabel.text = NSLocalizedString(@"sAppName", nil);
    
    // use macro
    #if (ProjectA)
    
        self.desclabel.text = @"Project A Description";
    
    #elif  (ProjectB)
    
        self.desclabel.text = @"Project B Description";
    
    #elif  (ProjectC)
    
        self.desclabel.text = @"Project C Description";
    
    #endif

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
