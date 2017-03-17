//
//  FirstViewController.m
//  CollectionViewSample
//
//  Created by jackiege on 16/03/2017.
//  Copyright © 2017 jackiege. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "AnimatedViewController.h"
#import "WebViewController.h"
#import "MyView.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor yellowColor];
    button1.frame = CGRectMake(10, 50, 200, 120);
    [button1 setTitle:@"Click me" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button1 setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
   
    [button1 setImageEdgeInsets:UIEdgeInsetsMake(0, -30, 0, 10)];
    [button1 setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 10)];
    
    
    [button1 setImage:[UIImage imageNamed:@"archery.gif"] forState:UIControlStateNormal];
    [self.view addSubview:button1];
    
    [button1 addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.backgroundColor = [UIColor yellowColor];
    button2.frame = CGRectMake(10, 200, 200, 120);
    [button2 setTitle:@"Click me" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button2 setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    
    [button2 setImageEdgeInsets:UIEdgeInsetsMake(0, -30, 0, 10)];
    [button2 setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 10)];
    
    
    [button2 setImage:[UIImage imageNamed:@"basketball.gif"] forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
    [button2 addTarget:self action:@selector(showAlert) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.backgroundColor = [UIColor yellowColor];
    button3.frame = CGRectMake(10, 350, 200, 120);
    [button3 setTitle:@"Click me" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button3 setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    
    [button3 setImageEdgeInsets:UIEdgeInsetsMake(0, -30, 0, 10)];
    [button3 setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 10)];
    
    
    [button3 setImage:[UIImage imageNamed:@"basketball.gif"] forState:UIControlStateNormal];
    [self.view addSubview:button3];
    
    [button3 addTarget:self action:@selector(showActionSheet) forControlEvents:UIControlEventTouchUpInside];
    
    MyView *myView = [[MyView alloc] initWithFrame:CGRectMake(10, 500, 300, 50)];
    [myView setLabelText:@"Name"];
    [self.view addSubview:myView];
    // Do any additional setup after loading the view.
}

- (void)jump {
    NSLog(@"start to jump");
    
    /*
    SecondViewController *second = [[SecondViewController alloc] init];
    second.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:second animated:YES completion:^{
        NSLog(@"finished jump");
    }];*/
    
    /*
    AnimatedViewController *animited = [[AnimatedViewController alloc] init];
    animited.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:animited animated:YES completion:^{
        NSLog(@"jumped to animated view");
    }];*/
    
    WebViewController *web = [[WebViewController alloc] init];
    web.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:web animated:YES completion:^{
        NSLog(@"jumped to web controller");
    }];
    
}

- (void)showAlert {
    NSLog(@"Start to show alert");
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Reminder" message:@"Are you sure you want to buy iPhone7 ?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Sure to buy");
    }];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Dont buy");
    }];
    
    [alert addAction:action1];
    [alert addAction:action2];
    
    [self presentViewController:alert animated:YES completion:^{
        NSLog(@"Alert pops");
    }];
}

- (void)showActionSheet {
    NSLog(@"Start to show action sheet");
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Reminder" message:@"Are you sure you want to buy iPhone7 ?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Sure to buy");
    }];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"Dont buy");
    }];
    
    UIAlertAction *action3 = [UIAlertAction actionWithTitle:@"Need discuss" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"need further discuss");
    }];

    
    [alert addAction:action1];
    [alert addAction:action2];
    [alert addAction:action3];
    
    [self presentViewController:alert animated:YES completion:^{
        NSLog(@"Alert pops");
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end