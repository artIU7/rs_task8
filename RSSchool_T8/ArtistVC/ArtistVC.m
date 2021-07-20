//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Артем Стратиенко on 20.07.2021.
//

#import "ArtistVC.h"
#import "RSSchool_T8-Swift.h"
#import "CanvasView.h"

@interface ArtistVC (ShemaViewArray)
- ( NSArray* ) AddPlanetArray;
- ( NSArray* ) AddHeadArray;
- ( NSArray* ) AddTreeArray;
- ( NSArray* ) AddLandscapeArray;
@end

BOOL drawPrepare = false;

@interface ArtistVC ()
@property (weak, nonatomic)  CanvasView *canvasVI;
@property (nonatomic, strong) UIButton *drawButton;
@end

@implementation ArtistVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [ self configNavigationStyle ];
    [self configCanvasView ];
    [ self drawButtonConfig ];
    // Do any additional setup after loading the view.
}
// configNavStyle & openDrawingVC
- ( void ) configNavigationStyle {
    self.navigationItem.title = @"Artist";
    _rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Drawing" style:UIBarButtonItemStylePlain target:self action:@selector(openDrawings)];
    self.navigationItem.rightBarButtonItem  = _rightBarButtonItem;
}
- (void)openDrawings {
    DrawingVCViewController *DrawingVC = [DrawingVCViewController new];
    [self.navigationController pushViewController:DrawingVC animated:YES];
    NSLog(@"Test");
}
// configCanvasVC
- ( void ) configCanvasView {
    CanvasView *viewVI = [[CanvasView alloc] initWithFrame:
                     CGRectMake(0.0f,
                                0.0f,
                                300.0f,
                                300.0f)];
    self.canvasVI = viewVI;
    self.canvasVI.backgroundColor = [UIColor whiteColor];
    self.canvasVI.layer.borderWidth = 2.0;
    self.canvasVI.layer.cornerRadius = 8.0;
    self.canvasVI.layer.shadowOpacity = 1;
    self.canvasVI.layer.shadowRadius = 8;
    self.canvasVI.layer.shadowColor = UIColor.lightGrayColor.CGColor;
    self.canvasVI.layer.shadowOffset = CGSizeMake(0, 0);
    self.canvasVI.center = CGPointMake(self.view.center.x, self.view.frame.size.height - ( self.view.frame.size.height - 104 - self.canvasVI.frame.size.height/2 ));
    [ self.view addSubview: self.canvasVI ];
    
}
- ( void ) drawButtonConfig {
    self.drawButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.drawButton.frame = CGRectMake(0.0f,
                                   0.0f,
                                   200.f,
                                   40.0f);
    [self.drawButton setTitle:@"Draw"
                 forState:UIControlStateNormal];
    self.drawButton.titleLabel.font = [UIFont boldSystemFontOfSize:20.0f];
    self.drawButton.layer.borderWidth = 1.5;
    self.drawButton.layer.borderColor = UIColor.redColor.CGColor;
    self.drawButton.layer.cornerRadius = 5.0;
    self.drawButton.center = CGPointMake(self.view.center.x, self.canvasVI.center.y + self.canvasVI.frame.size.height/2 + self.drawButton.frame.size.height/2 + 50);
    
    [self.drawButton addTarget:self
                    action:@selector(buttonIsTapped:)
          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.drawButton];
}
- (void) buttonIsTapped:(UIButton *)paramSender {
    drawPrepare = true;
    NSInteger index = DrawingVCViewController.arrayDrawIndex;
    if ( index == 0 ) {
        self.canvasVI.arrayDraw = [NSMutableArray new];
        [ self.canvasVI.arrayDraw addObjectsFromArray:[  self AddPlanetArray ] ];
        NSLog(@"%@",self.canvasVI.arrayDraw);
        [self.canvasVI.layer setNeedsDisplay];
    } else if ( index == 1 ) {
        self.canvasVI.arrayDraw = [NSMutableArray new];
        [ self.canvasVI.arrayDraw addObjectsFromArray:[  self AddHeadArray ] ];
        NSLog(@"%@",self.canvasVI.arrayDraw);
        [self.canvasVI.layer setNeedsDisplay];
    } else if ( index == 2 ) {
        self.canvasVI.arrayDraw = [NSMutableArray new];
        [ self.canvasVI.arrayDraw addObjectsFromArray:[  self AddTreeArray ] ];
        NSLog(@"%@",self.canvasVI.arrayDraw);
        [self.canvasVI.layer setNeedsDisplay];
    }  else if ( index == 3 ) {
        self.canvasVI.arrayDraw = [NSMutableArray new];
        [ self.canvasVI.arrayDraw addObjectsFromArray:[  self AddLandscapeArray ] ];
        NSLog(@"%@",self.canvasVI.arrayDraw);
        [self.canvasVI.layer setNeedsDisplay];
    }
}

@end
