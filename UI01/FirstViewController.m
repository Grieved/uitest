//
//  FirstViewController.m
//  UI01
//
//  Created by 王宇 on 28/03/2017.
//  Copyright © 2017 王宇. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    更改背景颜色
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIView
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
//    设置view的背景色
    view1.backgroundColor = [UIColor redColor];
//    添加
    [self.view addSubview:view1];
    // Do any additional setup after loading the view.
    
//    view常用的属性
//    透明度(0-1)
    view1.alpha = 0.5;
//    是否隐藏
    view1.hidden = NO;
//    中心点
    view1.center = self.view.center;
//    tag(标签值)
    view1.tag = 99;
//    根据编号找到view
    UIView *view2 = [self.view viewWithTag:99];
    view2.backgroundColor = [UIColor purpleColor];
//    将view放在最上层
    [self.view bringSubviewToFront:view2];

//    子视图自杀
    [view1 removeFromSuperview];
    
//    是嫁鸡随鸡啊说
    

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
