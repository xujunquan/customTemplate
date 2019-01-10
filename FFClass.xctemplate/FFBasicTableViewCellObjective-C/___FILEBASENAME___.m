//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark- flow control
///初始化参数
- (void)ff_initCellBegin {
	[super ff_initCellBegin];
}

///初始化
- (void)ff_initCellEnd {
	[super ff_initCellEnd];
}

///cell加载子视图
- (void)ffAddAndLayoutSubviews:(void(^)(NSArray *subviews,ffDefaultBlock config))block {
    NSArray *views = @[];
    block(views,^{
        //设置顶部底部细线属性
    });
}

///cell布局
- (void)updateConstraints {
    //子视图布局

    [super updateConstraints];
}

#pragma mark- api

#pragma mark- method

#pragma mark- set
///cell赋值
- (void)setFfModel:(id)ffModel {
    
}

#pragma mark- get

@end
