//
//  ModuleARegistrar.m
//  ModuleA
//
//  Created by FumingLeo on 2025/11/12.
//

#import "FMModuleARegistrar.h"
#import "FMModuleA/FMModuleA-Swift.h"

@implementation ModuleARegistrar

+ (void)load {
    [FMModuleA registerService];
}

@end
