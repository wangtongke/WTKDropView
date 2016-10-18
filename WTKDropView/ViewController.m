//
//  ViewController.m
//  WTKDropView
//
//  Created by 王同科 on 16/10/18.
//  Copyright © 2016年 王同科. All rights reserved.
//

#import "ViewController.h"
#import "WTKDropView.h"

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
@interface ViewController ()

@property (nonatomic,strong)WTKDropView         *menuView;
@property (weak, nonatomic) IBOutlet UIButton   *btn;
@property(nonatomic,strong)NSArray              *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = @[@"百度钱包",@"支付宝",@"微信钱包",@"QQ钱包",@"我的",@"百度钱包",@"支付宝",@"微信钱包",@"QQ钱包",@"我的"];
    self.menuView = [[WTKDropView alloc]initWithFrame:CGRectMake(210, 55, 150, 300) withTitleArray:self.dataArray];
    self.menuView.tag = 1;
    WS(weakSelf);
    self.menuView.clickBlock = ^(NSInteger tag){
        UIAlertAction *action =[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:weakSelf.dataArray[tag] preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:action];
        [weakSelf presentViewController:alert animated:YES completion:nil];
    };
}
- (IBAction)btnClick:(id)sender
{
    if ([self.view viewWithTag:1])
    {
        [self.menuView dismiss];
    }
    else
    {
        [self.view addSubview:self.menuView];
        [self.menuView beginAnimation];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
