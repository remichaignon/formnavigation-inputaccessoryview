# FormNavigation InputAccessoryView

Custom InputAccessoryView to help with form navigation (previous, next, done buttons).

## Status

Not in development.


## Usage

1. Add the files (FormNavigationInputAccessoryView.h & FormNavigationInputAccessoryView.m) to your project
2. Add the following code to MyViewController.h (where MyViewController is the name of the ViewController that manages the form)

```
#import "FormNavigationInputAccessoryView.h"
@interface MyViewController : UIViewController <UITextFieldDelegate, FormNavigationInputAccessoryViewDelegate> {
	FormNavigationInputAccessoryView *inputAccessory;
	UITextField *aTextField;
}
```

3. Add the following code to MyViewController.m (where MyViewController is the name of the ViewController that manages the form)

```
- (void)viewDidLoad {
    [super viewDidLoad];

	inputAccessory = [[FormNavigationInputAccessoryView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 44.0)];
	[inputAccessory setDelegate:self];
	[aTextField setDelegate:self];
	[aTextField setInputAccessoryView:inputAccessory];
}

#pragma mark - FormNavigationInputAccessoryViewDelegate

- (void)inputPreviousPressed {
	// ...
}
- (void)inputNextPressed {
	// ...
}
- (void)inputDonePressed {
	// ...
}
```