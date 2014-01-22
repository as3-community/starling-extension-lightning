/*
 The MIT License (MIT)

 Copyright (c) 2008 Pierluigi Pesenti (blog.oaxoa.com)

 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 the Software, and to permit persons to whom the Software is furnished to do so,
 subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

 */
package starling.extensions.lightning {
import starling.display.graphics.Stroke;

/**
 * Lightning Root Class
 *
 * @author Pierluigi Pesenti (blog.oaxoa.com)
 * @contributor Andras Csizmadia (www.vpmedia.eu)
 * @contributor IonSwitz (www.github.com/IonSwitz)
 *
 */
public class Lightning extends LightningBase {
    protected var _stroke:Stroke = null;

    public function Lightning(color:uint = 0xFFFFFF, thickness:Number = 2, generation:uint = 0, isPooled:Boolean = false) {
        super(color, thickness, generation, isPooled);
    }

    public function update():void {
        if (_stroke == null) {
            _stroke = new Stroke();
            addChild(_stroke);
        }
        else
            _stroke.clear();

        updateBase(_stroke);
    }
}

}