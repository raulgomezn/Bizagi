//
//  ViewController.m
//  Bizagi
//
//  Created by Raúl Gómez on 1/02/16.
//  Copyright © 2016 Raúl Gómez. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (strong, nonatomic) IBOutlet UITextField *Username;
@property (strong, nonatomic) IBOutlet UITextField *Password;
@property (strong, nonatomic) IBOutlet UIButton *ShowButton;

@end

@implementation LoginViewController
- (IBAction)ShowPassword:(id)sender {
    if (self.Password.secureTextEntry == YES)
    {
        [ self.ShowButton setTitle:@"Hide" forState:(UIControlStateNormal)];
        self.Password.secureTextEntry = NO;
    }
    else
    {
        [ self.ShowButton setTitle:@"Show" forState:(UIControlStateNormal)];
        self.Password.secureTextEntry = YES;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
