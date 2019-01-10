//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark- flow control
- (void)ff_init {
    [super ff_init];
}

- (void)ff_bindViewModel {
    [super ff_bindViewModel];
}

- (void)ff_addSubViewAndConstraints {
    [super ff_addSubViewAndConstraints];
    
    [self addSubview:self.mainView];
    [self.mainView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(0);
    }];
}

#pragma mark- api

#pragma mark- method

#pragma mark- delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)mainViewWillReload:(FFMainView *)mainView {
    
}

#pragma mark- get
- (FFMainView *)mainView {
    if (!_mainView) {
        FFMainViewVM *vm = [FFMainViewVM new];
//        vm.style = UITableViewStyleGrouped;
        _mainView = [[FFMainView alloc] initWithViewModel:vm];
        _mainView.tableDelegate = self;
        //通用设置
//        [CYTTools configForMainView:_mainView ];
        //设置table背景颜色
        _mainView.tableView.ffBgColor = [UIColor whiteColor];
//        _mainView.refreshSupport = FFRefreshSupportNone;
        [_mainView registerCellWithIdentifiers:@[]];
        //添加footerview
//        UIView *footerView = [_mainView.tableView ff_footerViewWithHeight:20];
    }
    return _mainView;
}

@end
