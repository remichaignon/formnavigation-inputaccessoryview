//
//  FormNavigationInputAccessoryView.h
//
//  Created by Remi Chaignon on 9/28/12.
//
//

#import <UIKit/UIKit.h>

@protocol FormNavigationInputAccessoryViewDelegate <NSObject>
@optional
- (void)inputPreviousPressed;
- (void)inputNextPressed;
- (void)inputDonePressed;
@end

@interface FormNavigationInputAccessoryView : UIView {
	id <FormNavigationInputAccessoryViewDelegate> m_delegate;
	
	UIBarButtonItem *m_previousButton;
	UIBarButtonItem *m_nextButton;
	UIBarButtonItem *m_doneButton;
}

@property (strong) id <FormNavigationInputAccessoryViewDelegate> delegate;

@property (strong) UIBarButtonItem *previousButton;
@property (strong) UIBarButtonItem *nextButton;
@property (strong) UIBarButtonItem *doneButton;

- (void)previous:(id)sender;
- (void)next:(id)sender;
- (void)done:(id)sender;

@end
