//
//  CollectionViewCell.m
//  TEST_TEXT
//
//  Created by LiuHaH on 2023/3/11.
//

#import "CollectionViewCell.h"
#import "Masonry.h"
@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self title];
    }
    return self;
}
-(UILabel *)title{
    if(!_title){
        _title = [UILabel new];
        [self.contentView addSubview:_title];
        [_title mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
    }
    return _title;
}
@end
