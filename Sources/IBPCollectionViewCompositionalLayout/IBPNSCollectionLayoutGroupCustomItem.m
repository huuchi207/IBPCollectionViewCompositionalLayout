#import "IBPNSCollectionLayoutGroupCustomItem.h"
#import "IBPNSCollectionViewCompositionalLayoutConfig_Private.h"
@interface IBPNSCollectionLayoutGroupCustomItem()

@property (nonatomic, readwrite) CGRect frame;
@property (nonatomic, readwrite) NSInteger zIndex;

@end

@implementation IBPNSCollectionLayoutGroupCustomItem

+ (instancetype)customItemWithFrame:(CGRect)frame {
    if (@available(iOS 13, *)) {
        if (!isFullyBackportCollectionViewCompositionalLayout) {
            return [NSClassFromString(@"NSCollectionLayoutGroupCustomItem") customItemWithFrame:frame];
        }
    }
    return [self customItemWithFrame:frame zIndex:0];
}

+ (instancetype)customItemWithFrame:(CGRect)frame zIndex:(NSInteger)zIndex {
    if (@available(iOS 13, *)) {
        if (!isFullyBackportCollectionViewCompositionalLayout) {
            return [NSClassFromString(@"NSCollectionLayoutGroupCustomItem") customItemWithFrame:frame zIndex:zIndex];
        }
    }
    return [[self alloc] initWithFrame:frame zIndex:zIndex];
    
}

- (instancetype)initWithFrame:(CGRect)frame zIndex:(NSInteger)zIndex {
    self = [super init];
    if (self) {
        self.frame = frame;
        self.zIndex = zIndex;
    }
    return self;
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return [IBPNSCollectionLayoutGroupCustomItem customItemWithFrame:self.frame zIndex:self.zIndex];
}

@end
