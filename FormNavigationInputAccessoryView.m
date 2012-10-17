//
//  FormNavigationInputAccessoryView.m
//
//  Created by Remi Chaignon on 9/28/12.
//
//

#import "FormNavigationInputAccessoryView.h"

@implementation FormNavigationInputAccessoryView

@synthesize delegate = m_delegate;

@synthesize previousButton = m_previousButton;
@synthesize nextButton = m_nextButton;
@synthesize doneButton = m_doneButton;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code

		UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:frame];
		[toolbar setBarStyle:UIBarStyleBlackTranslucent];

		m_previousButton =[[UIBarButtonItem alloc] initWithTitle:@"Previous" style:UIBarButtonItemStyleBordered target:self action:@selector(previous:)];
		m_nextButton =[[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleBordered target:self action:@selector(next:)];
		UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
		m_doneButton =[[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done:)];
		
		NSArray *itemsArray = [NSArray arrayWithObjects:m_previousButton, m_nextButton, flexibleSpace, m_doneButton, nil];
		[toolbar setItems:itemsArray];

		[self addSubview:toolbar];
	}

	return self;
}

- (void)previous:(id)sender {
	if (m_delegate) {
		[m_delegate inputPreviousPressed];
	}
}

- (void)next:(id)sender {
	if (m_delegate) {
		[m_delegate inputNextPressed];
	}
}

- (void)done:(id)sender {
	if (m_delegate) {
		[m_delegate inputDonePressed];
	}
}

@end
