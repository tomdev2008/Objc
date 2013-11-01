//
//  OZLModelIssueJournal.h
//  RedmineMobile
//
//  Created by lizhijie on 7/23/13.

// This code is distributed under the terms and conditions of the MIT license.

// Copyright (c) 2013 Zhijie Lee(onezeros.lee@gmail.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.


#import <Foundation/Foundation.h>
#import "OZLModelUser.h"
#import "OZLModelIssueJournalDetail.h"

/*
 {
 "id": 12353,
 "user": {
 "id": 20043,
 "name": "wang lei"
 },
 "notes": "fdfcasvawefqwf\r\n\r\nasdfasd\r\nasdfasdf",
 "created_on": "2013-07-22T08:47:47Z",
 "details": [
 {
 "property": "attr",
 "name": "done_ratio",
 "old_value": "0",
 "new_value": "20"
 }
 ]
 }

 */
@interface OZLModelIssueJournal : NSObject

@property(nonatomic) int index;
@property(nonatomic, strong) NSString* notes;
@property(nonatomic, strong) NSString* createdOn;
@property(nonatomic, strong) OZLModelUser* user;
@property(nonatomic, strong) NSArray* detailArray;

-(id)initWithDictionary:(NSDictionary*)dic;
-(NSMutableDictionary*) toParametersDic;


@end
