//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___
@synthesize requestCommand = _requestCommand;

#pragma mark- flow control
- (void)ff_initWithModel:(id)model {
    [super ff_initWithModel:model];

    self.hudAutoHandle = YES;
    self.listArray = [NSMutableArray array];
}

#pragma mark- api

#pragma mark- handleResponse
- (void)handleResponseModel:(FFBasicNetworkResponseModel *)responseModel {
    
}

#pragma mark- method

#pragma mark- get
- (RACCommand *)requestCommand {
    if (!_requestCommand) {
        @weakify(self);
        _requestCommand = [self commandWithRequestModel:^FFBasicNetworkRequestModel *{
            @strongify(self);
            FFBasicNetworkRequestModel *model = [FFBasicNetworkRequestModel new];
            model.needHud = YES;
            model.methodType = FFNetRequestMethodTypeGet;
            model.requestURL = nil;
            model.requestParameters = nil;
            return model;
        } andHandle:^(FFBasicNetworkResponseModel *resultModel) {
            @strongify(self);
            [self handleResponseModel:resultModel];
        }];
    }
    return _requestCommand;
}

@end
