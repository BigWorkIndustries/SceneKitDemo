//
//  MYBox.m
//  SceneKitPresentation
//
//  Created by Vincil Bishop on 12/6/16.
//  Copyright © 2016 Big Work Industries, LLC. All rights reserved.
//

#import "MYBox.h"

@implementation MYBox

+ (instancetype) node
{
    MYBox *node = [super node];
    
    SCNBox *geometry = [SCNBox boxWithWidth:3.0f height:3.0f length:3.0f chamferRadius:0.0f];
    
    geometry.materials = self.materials;
    
    node.geometry = geometry;
    
    return node;
}

+ (NSArray*) materials
{
    NSMutableArray *materials = [NSMutableArray new];
    
    SCNMaterial *side1 = [SCNMaterial material];
    side1.diffuse.contents = [UIColor redColor];
    [materials addObject:side1];
    
    SCNMaterial *side2 = [SCNMaterial material];
    side2.diffuse.contents = [UIColor greenColor];
    [materials addObject:side2];
    
    SCNMaterial *side3 = [SCNMaterial material];
    side3.diffuse.contents = [UIColor blueColor];
    [materials addObject:side3];
    
    SCNMaterial *side4 = [SCNMaterial material];
    side4.diffuse.contents = [UIColor yellowColor];
    [materials addObject:side4];
    
    SCNMaterial *side5 = [SCNMaterial material];
    side5.diffuse.contents = [UIColor orangeColor];
    [materials addObject:side5];
    
    SCNMaterial *side6 = [SCNMaterial material];
    side6.diffuse.contents = [UIColor purpleColor];
    [materials addObject:side6];
    
    return materials;
}

@end
