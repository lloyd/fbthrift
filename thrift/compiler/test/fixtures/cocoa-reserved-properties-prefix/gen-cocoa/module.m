/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

/**
* @generated by https://github.com/korovkin/thrift
*/

#import <Foundation/Foundation.h>

#import "TProtocol.h"
#import "TApplicationException.h"
#import "TProtocolException.h"
#import "TProtocolUtil.h"
#import "TProcessor.h"
#import "TObjective-C.h"
#import "TBase.h"
#import "TBaseStruct.h"

#import "module.h"


@implementation examplemoduleConstants
+ (void) initialize {
}
@end

@implementation exampleExample

- (instancetype) init
{
  self = [super init];
  return self;
}

- (id) initWithName: (NSString *) name description: (NSString *) description
{
  self = [super init];
  __thrift_name = name;
  __thrift_name_set = YES;
  __thrift_description = description;
  __thrift_description_set = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"name"])
  {
    __thrift_name = [[decoder decodeObjectForKey: @"name"] retain_stub];
    __thrift_name_set = YES;
  }
  if ([decoder containsValueForKey: @"description"])
  {
    __thrift_description = [[decoder decodeObjectForKey: @"description"] retain_stub];
    __thrift_description_set = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__thrift_name_set)
  {
    [encoder encodeObject: __thrift_name forKey: @"name"];
  }
  if (__thrift_description_set)
  {
    [encoder encodeObject: __thrift_description forKey: @"description"];
  }
}

- (NSString *) name {
  return __thrift_name;
}

- (void) setName: (NSString *) name {
  [self throwExceptionIfImmutable];
  __thrift_name = name;
  __thrift_name_set = YES;
}

- (BOOL) nameIsSet {
  return __thrift_name_set;
}

- (void) unsetName {
  __thrift_name = nil;
  __thrift_name_set = NO;
}

- (NSString *) xyz_description {
  return __thrift_description;
}

- (void) setXyz_description: (NSString *) description {
  [self throwExceptionIfImmutable];
  __thrift_description = description;
  __thrift_description_set = YES;
}

- (BOOL) descriptionIsSet {
  return __thrift_description_set;
}

- (void) unsetXyz_description {
  __thrift_description = nil;
  __thrift_description_set = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setName: fieldValue];
        } else {
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setXyz_description: fieldValue];
        } else {
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"Example"];
  if (__thrift_name_set) {
    if (__thrift_name != nil) {
      [outProtocol writeFieldBeginWithName: @"name" type: TType_STRING fieldID: 1];
      [outProtocol writeString: __thrift_name];
      [outProtocol writeFieldEnd];
    }
  }
  if (__thrift_description_set) {
    if (__thrift_description != nil) {
      [outProtocol writeFieldBeginWithName: @"description" type: TType_STRING fieldID: 2];
      [outProtocol writeString: __thrift_description];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
  if (!__thrift_name_set) {
    @throw [TProtocolException exceptionWithName: @"TProtocolException"
                               reason: @"Required field 'name' is not set."];
  }
  if (!__thrift_description_set) {
    @throw [TProtocolException exceptionWithName: @"TProtocolException"
                               reason: @"Required field 'description' is not set."];
  }
}

- (NSString *) description {
  return [[self toDict] description];
}

- (NSDictionary *) toDict {
  NSMutableDictionary *ret = [NSMutableDictionary dictionary];
  ret[@"__thrift_struct_name"] = @"Example";
  if (__thrift_name) {
    ret[@"name"] = __thrift_name;
  }
  if (__thrift_description) {
    ret[@"description"] = __thrift_description;
  }
  return [ret copy];
}

- (BOOL) makeImmutable {
  const BOOL wasImmutable = [self isImmutable];
  if (!wasImmutable) {
    [super makeImmutable];
  }
  return YES;
}

- (id) mutableCopyWithZone:(NSZone *)zone {
  exampleExample *newCopy = [[[self class] alloc] init];;
  if (__thrift_name) {
    newCopy->__thrift_name = self->__thrift_name;
  }
  newCopy->__thrift_name_set = self->__thrift_name_set;
  if (__thrift_description) {
    newCopy->__thrift_description = self->__thrift_description;
  }
  newCopy->__thrift_description_set = self->__thrift_description_set;
  return newCopy;
}

@end

