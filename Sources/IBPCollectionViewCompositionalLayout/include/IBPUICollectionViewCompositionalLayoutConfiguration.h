#import <UIKit/UIKit.h>

@class IBPNSCollectionLayoutBoundarySupplementaryItem;

NS_ASSUME_NONNULL_BEGIN

@interface IBPUICollectionViewCompositionalLayoutConfiguration : NSObject<NSCopying> {
    long long _safeAreaReference;
}

@property (nonatomic) UICollectionViewScrollDirection scrollDirection; // default is UICollectionViewScrollDirectionVertical
@property (nonatomic) CGFloat interSectionSpacing;                     // default is 0
@property (nonatomic, copy) NSArray<IBPNSCollectionLayoutBoundarySupplementaryItem *> *boundarySupplementaryItems;
@property(nonatomic, getter=_safeAreaReference, setter=_setSafeAreaReference:) long long safeAreaReference;


@end

NS_ASSUME_NONNULL_END
