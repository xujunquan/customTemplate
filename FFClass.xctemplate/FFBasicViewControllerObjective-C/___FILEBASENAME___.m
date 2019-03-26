//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___
@synthesize viewModel = _viewModel;
@synthesize ffContentView = _ffContentView;

#pragma mark- flow control
- (void)ffc_init {
    [super ffc_init];

    self.showNavigationView = YES;
}

- (void)ffc_initAfterViewLoad {
    [super ffc_initAfterViewLoad];
}

- (void)ffc_bindViewModel {
    [super ffc_bindViewModel];
}

- (void)ffc_addSubViewAndConstraints {
    [super ffc_addSubViewAndConstraints];
}

#pragma mark- life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark- method
- (void)ff_leftClicked:(FFNavigationItemView *)backView {
    [super ff_leftClicked:backView];
}

- (void)ff_rightClicked:(FFNavigationItemView *)rightView {
    [super ff_rightClicked:rightView];
}

#pragma mark- get
//- (<#name#>* )viewModel {
//    if (!_viewModel) {
//        _viewModel = [<#name#> new];
//    }
//    return _viewModel;
//}

//- (<#name#>* )ffContentView {
//    if (!_ffContentView) {
//        _ffContentView = [<#name#> new];
//    }
//    return _ffContentView;
//}

@end
