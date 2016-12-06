//
//  ViewController.m
//  SceneKitPresentation
//
//  Created by Vincil Bishop on 12/6/16.
//  Copyright © 2016 Big Work Industries, LLC. All rights reserved.
//

#import "ViewController.h"
#import <SceneKit/SceneKit.h>
#import "MYBox.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet SCNView *sceneView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SCNScene *scene = [SCNScene scene];
    
    // create and add a camera to the scene
    SCNNode *cameraNode = [SCNNode node];
    cameraNode.camera = [SCNCamera camera];
    [scene.rootNode addChildNode:cameraNode];
    
    // place the camera, 15 units back from the center of the scene.
    cameraNode.position = SCNVector3Make(0, 0, 15);
    
    // create and add a light to the scene
    SCNNode *lightNode = [SCNNode node];
    lightNode.light = [SCNLight light];
    lightNode.light.type = SCNLightTypeOmni;
    // place the camera, 10 units back from the center of the scene.
    lightNode.position = SCNVector3Make(0, 0, 10);
    [scene.rootNode addChildNode:lightNode];
    
    // create and add an ambient light to the scene
    SCNNode *ambientLightNode = [SCNNode node];
    ambientLightNode.light = [SCNLight light];
    ambientLightNode.light.type = SCNLightTypeAmbient;
    ambientLightNode.light.color = [UIColor whiteColor];
    [scene.rootNode addChildNode:ambientLightNode];
    
    MYBox *box = [MYBox node];
    [scene.rootNode addChildNode:box];
    box.transform = SCNMatrix4MakeRotation(M_PI_2/2, 1, 1, 0);
    
    SCNAction *action = [SCNAction rotateByX:1.0 y:1.0 z:0.0 duration:1.0];
    
    [box runAction:[SCNAction repeatActionForever:action]];
    
    
    // configure the view
    self.sceneView.backgroundColor = [UIColor blackColor];

    self.sceneView.scene = scene;
    
    // allows the user to manipulate the camera
    self.sceneView.allowsCameraControl = YES;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
