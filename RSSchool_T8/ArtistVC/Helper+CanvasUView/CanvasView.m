//
//  CanvasView.m
//  RSSchool_T8
//
//  Created by Артем Стратиенко on 20.07.2021.
//

#import "CanvasView.h"
#import "RSSchool_T8-Swift.h"


@implementation CanvasView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    // Drawing code
      
    UIColor* strokeColor = UIColor.greenColor;
    [strokeColor setStroke];
    UIBezierPath* bezierPath = self.arrayDraw[0];
    
    bezierPath.lineWidth = 1;
    bezierPath.miterLimit = 4;
    bezierPath.lineCapStyle = kCGLineCapRound;
    [bezierPath stroke];
    
    UIColor* strokeColor2 = UIColor.redColor;
    UIBezierPath* bezier2Path = self.arrayDraw[1];
    [strokeColor2 setStroke];
    bezier2Path.lineWidth = 1;
    bezier2Path.miterLimit = 4;
    bezier2Path.lineCapStyle = kCGLineCapRound;
    [bezier2Path stroke];
    
    UIColor* strokeColor3 = UIColor.yellowColor;
    UIBezierPath* bezier3Path = self.arrayDraw[2];
    [strokeColor3 setStroke];
    bezier3Path.lineWidth = 1;
    bezier3Path.miterLimit = 4;
    bezier3Path.lineCapStyle = kCGLineCapRound;
    [bezier3Path stroke];
}
@end

