package com.adobe.air;

import android.view.*;
import com.adobe.air.utils.*;
import android.text.*;
import android.view.inputmethod.*;

public class AndroidInputConnection extends BaseInputConnection
{
    private static final String LOG_TAG = "AndroidInputConnection";
    private CharSequence mComposedText;
    private ExtractedTextRequest mExtractRequest;
    private ExtractedText mExtractedText;
    private final AIRWindowSurfaceView mWindowSurfaceView;
    
    public AndroidInputConnection(final AIRWindowSurfaceView mWindowSurfaceView) {
        super((View)mWindowSurfaceView, true);
        this.mExtractRequest = null;
        this.mComposedText = null;
        this.mExtractedText = null;
        this.mWindowSurfaceView = mWindowSurfaceView;
    }
    
    private native String nativeGetTextAfterCursor(final int p0);
    
    private native String nativeGetTextBeforeCursor(final int p0);
    
    private native int nativeGetTextBoxMaxChars();
    
    private native void nativeSetSelection(final int p0, final int p1);
    
    private void writeText(final CharSequence charSequence) {
        final int length = charSequence.length();
        int j;
        if (this.mComposedText != null) {
            final int length2 = this.mComposedText.length();
            int min;
            int n;
            for (min = Math.min(length, length2), n = 0; n < min && charSequence.charAt(n) == this.mComposedText.charAt(n); ++n) {}
            for (int i = n; i < length2; ++i) {
                AIRLogger.d("AndroidInputConnection", "[JP] writeText " + (Object)charSequence);
                this.mWindowSurfaceView.nativeOnKeyListener(0, 67, 0, false, false, false);
                this.mWindowSurfaceView.nativeOnKeyListener(1, 67, 0, false, false, false);
            }
            j = n;
        }
        else {
            j = 0;
        }
        while (j < length) {
            AIRLogger.d("AndroidInputConnection", "[JP] writeText 2 " + (Object)charSequence);
            this.mWindowSurfaceView.nativeOnKeyListener(0, 0, charSequence.charAt(j), false, false, false);
            this.mWindowSurfaceView.nativeOnKeyListener(1, 0, charSequence.charAt(j), false, false, false);
            ++j;
        }
        this.updateIMEText();
    }
    
    public void Reset() {
        this.mComposedText = null;
        this.mExtractRequest = null;
        this.mExtractedText = null;
    }
    
    public boolean commitText(final CharSequence obj, final int n) {
        AIRLogger.d("AndroidInputConnection", "[JP] setComposingText " + (Object)obj);
        this.writeText(obj);
        this.mComposedText = null;
        return true;
    }
    
    public boolean deleteSurroundingText(final int n, final int n2) {
        for (int i = 0; i < n2; ++i) {
            AIRLogger.d("AndroidInputConnection", "[JP] deleteSurroundingText ");
            this.mWindowSurfaceView.nativeOnKeyListener(0, 22, 0, false, false, false);
            this.mWindowSurfaceView.nativeOnKeyListener(1, 22, 0, false, false, false);
        }
        for (int n3 = n2 + n, j = 0; j < n3; ++j) {
            AIRLogger.d("AndroidInputConnection", "[JP] deleteSurroundingText 2 ");
            this.mWindowSurfaceView.nativeOnKeyListener(0, 67, 0, false, false, false);
            this.mWindowSurfaceView.nativeOnKeyListener(1, 67, 0, false, false, false);
        }
        return true;
    }
    
    public boolean finishComposingText() {
        this.mComposedText = null;
        if (this.mWindowSurfaceView.getIsFullScreen() && !this.mWindowSurfaceView.IsSurfaceChangedForSoftKeyboard()) {
            this.mWindowSurfaceView.nativeShowOriginalRect();
        }
        return true;
    }
    
    public Editable getEditable() {
        return null;
    }
    
    public ExtractedText getExtractedText(final ExtractedTextRequest mExtractRequest, final int n) {
        this.mWindowSurfaceView.setInputConnection(this);
        final ExtractedText nativeGetTextContent = this.mWindowSurfaceView.nativeGetTextContent();
        if (nativeGetTextContent != null && nativeGetTextContent.text != null) {
            nativeGetTextContent.partialEndOffset = -1;
            nativeGetTextContent.partialStartOffset = -1;
            if ((n & 0x1) != 0x0) {
                nativeGetTextContent.startOffset = 0;
                this.mExtractedText = nativeGetTextContent;
                this.mExtractRequest = mExtractRequest;
                this.mWindowSurfaceView.nativeShowOriginalRect();
            }
            return nativeGetTextContent;
        }
        return null;
    }
    
    public CharSequence getTextAfterCursor(final int n, final int n2) {
        return this.nativeGetTextAfterCursor(n);
    }
    
    public CharSequence getTextBeforeCursor(final int n, final int n2) {
        return this.nativeGetTextBeforeCursor(n);
    }
    
    public boolean performContextMenuAction(final int n) {
        int n2 = 0;
        switch (n) {
            default: {
                return false;
            }
            case 16908320: {
                if (this.mWindowSurfaceView.nativeIsTextSelected()) {
                    n2 = 1;
                    return this.mWindowSurfaceView.onTextBoxContextMenuItem(n2);
                }
                n2 = 2;
                return this.mWindowSurfaceView.onTextBoxContextMenuItem(n2);
            }
            case 16908329: {
                n2 = 8;
                return this.mWindowSurfaceView.onTextBoxContextMenuItem(n2);
            }
            case 16908328: {
                n2 = 7;
                return this.mWindowSurfaceView.onTextBoxContextMenuItem(n2);
            }
            case 16908324: {
                n2 = 6;
                return this.mWindowSurfaceView.onTextBoxContextMenuItem(n2);
            }
            case 16908322: {
                n2 = 5;
            }
            case 16908319: {
                return this.mWindowSurfaceView.onTextBoxContextMenuItem(n2);
            }
            case 16908321: {
                if (this.mWindowSurfaceView.nativeIsTextSelected()) {
                    n2 = 3;
                    return this.mWindowSurfaceView.onTextBoxContextMenuItem(n2);
                }
                n2 = 4;
                return this.mWindowSurfaceView.onTextBoxContextMenuItem(n2);
            }
        }
    }
    
    public boolean performEditorAction(final int n) {
        if (n == 6) {
            this.mWindowSurfaceView.showSoftKeyboard(false);
            this.mWindowSurfaceView.nativeDispatchUserTriggeredSkDeactivateEvent();
            return true;
        }
        return false;
    }
    
    public boolean setComposingRegion(final int n, final int n2) {
        this.mComposedText = this.mWindowSurfaceView.nativeGetTextContent().text.subSequence(n, n2);
        return true;
    }
    
    public boolean setComposingText(final CharSequence charSequence, final int a) {
        final int nativeGetTextBoxMaxChars = this.nativeGetTextBoxMaxChars();
        CharSequence subSequence;
        if (nativeGetTextBoxMaxChars != 0 && charSequence.length() > 0) {
            final ExtractedText nativeGetTextContent = this.mWindowSurfaceView.nativeGetTextContent();
            final int n = nativeGetTextBoxMaxChars - nativeGetTextContent.text.length() + nativeGetTextContent.selectionEnd - nativeGetTextContent.selectionStart;
            final CharSequence mComposedText = this.mComposedText;
            int length = 0;
            if (mComposedText != null) {
                length = this.mComposedText.length();
            }
            final int min = Math.min(n + length, charSequence.length());
            if (min > 0) {
                subSequence = charSequence.subSequence(0, min);
            }
            else {
                subSequence = null;
            }
        }
        else {
            subSequence = charSequence;
        }
        if (subSequence != null) {
            AIRLogger.d("AndroidInputConnection", "[JP] setComposingText " + (Object)subSequence);
            this.writeText(subSequence);
            this.mComposedText = subSequence;
            if (a <= 0) {
                for (int n2 = subSequence.length() + Math.abs(a), i = 0; i < n2; ++i) {
                    AIRLogger.d("AndroidInputConnection", "[JP] setComposingText " + (Object)subSequence);
                    this.mWindowSurfaceView.nativeOnKeyListener(0, 21, 0, false, false, false);
                    this.mWindowSurfaceView.nativeOnKeyListener(1, 21, 0, false, false, false);
                }
            }
            else if (a > 1) {
                for (int n3 = a - 1, j = 0; j < n3; ++j) {
                    AIRLogger.d("AndroidInputConnection", "[JP] setComposingText 2 " + (Object)subSequence);
                    this.mWindowSurfaceView.nativeOnKeyListener(0, 22, 0, false, false, false);
                    this.mWindowSurfaceView.nativeOnKeyListener(1, 22, 0, false, false, false);
                }
            }
        }
        return true;
    }
    
    public boolean setSelection(final int n, final int n2) {
        this.nativeSetSelection(n, n2);
        return true;
    }
    
    public void updateIMEText() {
        if (this.mExtractRequest != null) {
            final InputMethodManager inputMethodManager = this.mWindowSurfaceView.getInputMethodManager();
            if (inputMethodManager != null && inputMethodManager.isActive((View)this.mWindowSurfaceView)) {
                final ExtractedText nativeGetTextContent = this.mWindowSurfaceView.nativeGetTextContent();
                final boolean equals = nativeGetTextContent.text.toString().equals(this.mExtractedText.text.toString());
                if (!equals || nativeGetTextContent.selectionStart != this.mExtractedText.selectionStart || nativeGetTextContent.selectionEnd != this.mExtractedText.selectionEnd || nativeGetTextContent.flags != this.mExtractedText.flags) {
                    nativeGetTextContent.startOffset = 0;
                    if (equals) {
                        nativeGetTextContent.partialStartOffset = 0;
                        nativeGetTextContent.partialEndOffset = 0;
                        nativeGetTextContent.text = "";
                        this.mExtractedText.flags = nativeGetTextContent.flags;
                        this.mExtractedText.selectionStart = nativeGetTextContent.selectionStart;
                        this.mExtractedText.selectionEnd = nativeGetTextContent.selectionEnd;
                    }
                    else {
                        nativeGetTextContent.partialStartOffset = -1;
                        nativeGetTextContent.partialEndOffset = -1;
                        this.mExtractedText = nativeGetTextContent;
                    }
                    inputMethodManager.updateExtractedText((View)this.mWindowSurfaceView, this.mExtractRequest.token, nativeGetTextContent);
                }
            }
        }
    }
}
