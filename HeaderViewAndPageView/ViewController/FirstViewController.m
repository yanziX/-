//
//  FirstViewController.m
//  Scrollview
//
//  Created by storm on 17/2/6.
//  Copyright © 2017年 strom. All rights reserved.
//

#import "FirstViewController.h"
#import "MainTouchTableTableView.h"

static CGFloat const headViewHeight = 300;

@interface FirstViewController ()<UITableViewDelegate,UITableViewDataSource>
//@property (nonatomic, strong) MainTouchTableTableView *mainTableView;
@property(nonatomic,strong)UIImageView *headImageView;//头部
@property (nonatomic, strong) UITableView *mainTableView;
@end

@implementation FirstViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainTableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
     self.mainTableView.dataSource = self;
    
    [self.mainTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
   
    [self.view addSubview:self.mainTableView];
    self.mainTableView.bounces=NO;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 80;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //return Main_Screen_Height;
    return 65;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = @"text11111";
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
