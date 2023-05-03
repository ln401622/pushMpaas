//
//  ViewController.m
//  TEST_TEXT
//
//  Created by LiuHaH on 2023/2/2.
//

#import "ViewController.h"
#import <YYKit/YYKit.h>
#import <YYLabel.h>
#import <Masonry/Masonry.h>
#define rgba(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#import "UIView+LXShadowPath.h"
#import "CollectionViewCell.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation ViewController
-(void)clickbtu{
// #define iOS10 ([[UIDevice currentDevice].systemVersion doubleValue] >= 10.0)
//    NSURL *url =  [NSURL URLWithString:@"App-Prefs:root=WIFI"];
//    if ([[UIApplication sharedApplication] canOpenURL: url]) {
//        if (iOS10) {
//            [[UIApplication sharedApplication] openURL: url options:@{} completionHandler:nil];
//        } else {
//            [[UIApplication sharedApplication] openURL: url];
//        }
//    }
    
    NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];

                if ([[UIApplication sharedApplication] canOpenURL:url]) {

                    [[UIApplication sharedApplication] openURL:url];

                }
   
}
-(NSString *)locationTime{
        NSDate *timeDate = [NSDate date];
         NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
         [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
         NSString *locationString = [dateFormatter stringFromDate:timeDate];
         return locationString;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.86 green:0.86 blue:0.86 alpha:1];
    
    NSLog(@"53---%@",[self locationTime]);
    NSLog(@"53---%@",[self locationTime]);
    NSLog(@"53---%@",[self locationTime]);
    NSLog(@"53---%@",[self locationTime]);
    //
    
//
//    UIButton *but = [UIButton new];
//    [self.view addSubview:but];
//    [but mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(0);
//        make.size.mas_equalTo(CGSizeMake(100, 100));
//    }];
//    but.backgroundColor = [UIColor blackColor];
//    [but addTarget:self action:@selector(clickbtu) forControlEvents:UIControlEventTouchUpInside];
    
    
    //    UIView *shawView = [UIView new];
    //    shawView.backgroundColor = [UIColor whiteColor];
    //    [self.view addSubview:shawView];
    //    [shawView mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.center.mas_equalTo(0);
    //        make.size.mas_equalTo(CGSizeMake(200, 200));
    //    }];
    //    [shawView LX_SetShadowPathWith:[UIColor grayColor] shadowOpacity:0.1 shadowRadius:10 shadowSide:LXShadowPathAllSide shadowPathWidth:5 radiusLocation:2];
    //    [shawView LX_SetShadowPathWith:[UIColor redColor] shadowOpacity:0.8 shadowRadius:10 shadowSide:LXShadowPathLeft shadowPathWidth:5 radiusLocation:2];
    
    //    UITableView *tabview = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    //    [self.view addSubview:tabview];
    //    [tabview mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.edges.mas_equalTo(0);
    //    }];
    //    tabview.delegate = self;
    //    tabview.dataSource = self;
    //    [tabview registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    //    tabview.separatorStyle = UITableViewCellSelectionStyleNone;
    
    /*
     NSString *astring01 = @"this is a String!";
     NSString *astring02 = @"THis is A String!";
     BOOL result = [astring01 compare:astring02 options:NSCaseInsensitiveSearch | NSNumericSearch] == NSOrderedSame;
     NSLog(@"result:%d",result);
     
     [self compareTwoStringMethonTwo];
     [self compareTwoString];
     
     //NSCaseInsensitiveSearch:复制代码
     
     UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(20, 50, self.view.frame.size.width - 40, 180)];
     label.numberOfLines = 0;
     label.attributedText = [self setWordHightWith:@"复制代码 young, you should not meet the people who are so amazed.Otherwise, the rest of  复制代码 your life is regrettable You are a thousand snow and I am long street,I'm Afraid we'll disintegrate each other as soon as the sunrise arrives." HightStr:@"Sunrise" HightColor:[UIColor redColor]];
     [self.view addSubview:label];
     
     */
    
    //    NSString *price = @"0.51";
    //    NSInteger intPrice = [price integerValue];
    //    NSLog(@"65---%ld",intPrice);
    
    //    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    //    UICollectionView *collview = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    //    [self.view addSubview:collview];
    //    [collview mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.left.mas_equalTo(10);
    //        make.top.mas_equalTo(60);
    //        make.bottom.mas_equalTo(-60);
    //        make.right.mas_equalTo(-10);
    //    }];
    ////    collview.backgroundColor = [UIColor grayColor];
    //    collview.delegate = self;
    //    collview.dataSource = self;
    //    [collview registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cellid"];
    //
    //    UIView *bkview = [UIView new];
    //    bkview.frame = collview.bounds;
    //    collview.backgroundView = bkview;
    //
    //    UIView *backView = [UIView new];
    //    [collview addSubview:backView];
    //    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.edges.mas_equalTo(0);
    //    }];
    //    backView.backgroundColor = [UIColor redColor];
    //
    
    
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 6;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellid" forIndexPath:indexPath];
    cell.title.text = @"2323";
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 50);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 10;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 10;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 0, 20, 0);
}


//-(NSMutableAttributedString *)stringWithHighLightSubstring:(NSString *)totalString substring:(NSString *)substring{
//    NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:totalString];
//    NSString * copyTotalString = totalString;
//    NSMutableString * replaceString = [NSMutableString stringWithCapacity:0];
//    for (int i = 0; i < substring.length; i ++) {
//        [replaceString appendString:@" "];
//    }
//    while ([copyTotalString rangeOfString:substring].location != NSNotFound) {
//        NSRange range = [copyTotalString rangeOfString:substring];
//        //颜色如果统一的话可写在这里，如果颜色根据内容在改变，可把颜色作为参数，调用方法的时候传入
//        [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:range];
//        copyTotalString = [copyTotalString stringByReplacingCharactersInRange:range withString:replaceString];
//    }
//    return attributedString;
//}

#pragma mark  例句高亮
- (NSMutableAttributedString *)setWordHightWith:(NSString *)wordStr HightStr:(NSString *)hightStr HightColor:(UIColor *)hightColor{
    NSString *str = wordStr;
    // 1. 创建一个"高亮"属性，当用户点击了高亮区域的文本时，"高亮"属性会替换掉原本的属性
    YYTextBorder *border = [YYTextBorder borderWithFillColor:[UIColor clearColor] cornerRadius:3];
    YYTextHighlight *highlight = [YYTextHighlight highlightWithBackgroundColor:[UIColor clearColor]];
    [highlight setColor:rgba(0, 149, 247, 1)];
    [highlight setBackgroundBorder:border];
    highlight.tapAction = ^(UIView *containerView, NSAttributedString *text, NSRange range, CGRect rect) {
        NSLog(@"tap text range:...%@",text.string);
        // 你也可以把事件回调放到 YYLabel 和 YYTextView 来处理。
    };
    // 1. 创建一个属性文本
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:str];
    //text.font = [UIFont boldSystemFontOfSize:18];
    text.font = [UIFont systemFontOfSize:16];
    text.color = rgba(102, 102, 102, 1);
    text.lineSpacing = 5;
    if(hightStr && hightStr.length>0){
        NSString *highlightStr = hightStr;
        NSArray *array = [self rangeOfSubString:highlightStr inString:str];
        for (NSInteger i = 0; i < array.count; i++) {
            NSValue *value = array[i];
            // 2. 把"高亮"属性设置到某个文本范围
            [text setTextHighlight:highlight range:value.rangeValue];
            [text setColor:hightColor range:value.rangeValue];
        }
    }
    
    return text;
}
- (NSArray *)rangeOfSubString:(NSString *)subStr inString:(NSString *)string {
    if (subStr == nil && [subStr isEqualToString:@""]) {
        return nil;
    }
    NSMutableArray *rangeArray = [NSMutableArray array];
    NSString *string1 = [string stringByAppendingString:subStr];
    NSString *temp;
    for (int i = 0; i < string.length; i ++) {
        temp = [string1 substringWithRange:NSMakeRange(i, subStr.length)];
        if ([temp caseInsensitiveCompare:subStr] == NSOrderedSame) {
            NSRange range = {i,subStr.length};
            [rangeArray addObject:[NSValue valueWithRange:range]];
        }
    }
    return rangeArray;
}

-(void)compareTwoStringMethonTwo{
    NSString *astring01 = @"thisisAString!";
    NSString *astring02 = @"ThisisaString!";
    BOOL result = [astring01 caseInsensitiveCompare:astring02] == NSOrderedSame;
    NSLog(@"106---%d",result);
}

-(void)compareTwoString{
    NSString *astring01 = @"thisisaString!";
    NSString *astring02 = @"ThisisAString!";
    BOOL result = [astring01 compare:astring02 options:NSCaseInsensitiveSearch | NSNumericSearch] == NSOrderedSame;
    NSLog(@"106---%d",result);
}
-(void)checkIndex{
    int searchNum = 47;
    NSArray *numberArray = @[@(11),@(15),@(22),@(26),@(33),@(37),@(44),@(47),@(77),@(87)];
    int middle = 0;//中位值索引
    int low = 0;//低位值索引
    long int high = [numberArray count] - 1;//高位索引
    //1.在🌟升序数组🌟中找到目标值的坐标
    BOOL found = NO;//定义一个bool值用来记录是否查找到需要查找的元素
    while (low <= high) {//只要范围没有缩小到只包含一个元素
        middle = (low + high) * 0.5;//中间位置 乘法比除法快
        if (searchNum == [numberArray[middle] intValue]) {
            NSLog(@"目标值已找到===>在第%d位", middle);
            found = YES;
            break;
        } else if (searchNum < [numberArray[middle] integerValue]) {
            high = middle - 1;//猜测的数字大了的话，那么就high - 1
        } else if (searchNum > [numberArray[middle] integerValue]) {
            low = middle + 1;//如果猜测的数字小了 那么就增加low + 1
        }
    }
    if (!found) {
        
        NSLog(@"这个数字没有找到.");
        
    }
    low = 0;
    high = [numberArray count] - 1;;
    middle = 0;
    
    //2.在🌟升序数组🌟中找到与目标值相差最小的值的坐标
    while (low<= high) {
        middle = (low +high) *0.5;
        
        if (labs([numberArray[middle + 1] integerValue] - searchNum) > labs([numberArray[middle] integerValue] - searchNum)) {
            //计算两个中位索引的差值，如果大于就让high-1，持续下去就会与low相等
            high = middle - 1;
        }else{
            low = middle + 1;
        }
        
        
    }
    //循环判断结束，middle和middle+1 是最接近目标值的两个索引，做最后的一次比较即可
    NSInteger index = (labs([numberArray[middle + 1] integerValue] - searchNum) > labs([numberArray[middle] integerValue] - searchNum)) ? middle :(middle + 1);
    NSLog(@"目标值%d,与第%ld位的值最接近",searchNum,index);
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}
@end
