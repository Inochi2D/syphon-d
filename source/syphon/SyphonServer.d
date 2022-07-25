/**
     SyphonServer.h
     Syphon

     Copyright 2010-2011 bangnoise (Tom Butterworth) & vade (Anton Marini).
     All rights reserved.

     Redistribution and use in source and binary forms, with or without
     modification, are permitted provided that the following conditions are met:

     * Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.

     * Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.

     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
     ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
     WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY
     DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
     (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
     ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
     (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
     SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
module syphon.SyphonServer;
import syphon.SyphonImage;
import foundation.string;
import foundation.dict;
import foundation.algebra;
import foundation.object;
import opengl.context;
import opengl.gltypes;

import core.attribute : selector;
version(D_ObjectiveC) {
    extern (Objective-C):

    extern class SyphonServer : NSObject {
        ObjcObject initWithName (NSString name, CGLContextObj context, NSDictionary options) @selector("initWithName:context:options:");
        @property CGLContextObj context () @selector("context");
        @property NSString name () @selector("name");
        @property NSDictionary serverDescription () @selector("serverDescription");
        @property bool hasClients () @selector("hasClients");

        void publishFrameTexture(GLuint texId, GLenum target, NSRect region, NSSize textureDimensions, bool isFlipped) @selector("publishFrameTexture:textureTarget:imageRegion:textureDimensions:flipped:");
        bool bindToDrawFrameOfSize(NSSize size) @selector("bindToDrawFrameOfSize:size");
        void unbindAndPublish() @selector("unbindAndPublish");
        SyphonImage newFromImage() @selector("newFromImage");
        void stop() @selector("stop");
    }
}