package com.adobe.air;

import java.util.*;
import android.view.*;

class AndroidInputDevice
{
    private InputDevice mDevice;
    private List<AndroidInputControl> mInputControls;
    private int mNumControls;
    
    public AndroidInputDevice(final InputDevice mDevice) {
        super();
        this.mDevice = null;
        this.mInputControls = null;
        this.mNumControls = 0;
        this.mDevice = mDevice;
        this.mInputControls = new ArrayList<AndroidInputControl>();
        for (final InputDevice$MotionRange inputDevice$MotionRange : mDevice.getMotionRanges()) {
            if ((0x10 & inputDevice$MotionRange.getSource()) != 0x0) {
                this.mInputControls.add(new AndroidInputControl(ControlType.AXIS, inputDevice$MotionRange.getAxis(), inputDevice$MotionRange.getMin(), inputDevice$MotionRange.getMax()));
                ++this.mNumControls;
            }
        }
        for (int i = 0; i < KeyEvent.getMaxKeyCode(); ++i) {
            if (KeyCharacterMap.deviceHasKey(i) && isGameKey(i)) {
                this.mInputControls.add(new AndroidInputControl(ControlType.BUTTON, i, 0.0f, 1.0f));
                ++this.mNumControls;
            }
        }
    }
    
    private static boolean isGameKey(final int n) {
        switch (n) {
            default: {
                return KeyEvent.isGamepadButton(n);
            }
            case 19:
            case 20:
            case 21:
            case 22:
            case 23: {
                return true;
            }
        }
    }
    
    public AndroidInputControl getInputControl(final int n) {
        return this.mInputControls.get(n);
    }
    
    public String getName() {
        return this.mDevice.getName();
    }
    
    public int getNumControls() {
        return this.mNumControls;
    }
    
    public String getUniqueId() {
        return this.mDevice.getDescriptor();
    }
    
    public boolean onGenericMotionEvent(final MotionEvent motionEvent) {
        for (int i = 0; i < this.mInputControls.size(); ++i) {
            final AndroidInputControl androidInputControl = this.mInputControls.get(i);
            if (androidInputControl.getType() == ControlType.AXIS.ordinal()) {
                androidInputControl.setData(motionEvent.getAxisValue(androidInputControl.getCode()));
            }
        }
        return true;
    }
    
    public boolean onKeyEvent(final KeyEvent keyEvent) {
        for (int i = 0; i < this.mInputControls.size(); ++i) {
            final AndroidInputControl androidInputControl = this.mInputControls.get(i);
            if (androidInputControl.getType() == ControlType.BUTTON.ordinal() && androidInputControl.getCode() == keyEvent.getKeyCode()) {
                switch (keyEvent.getAction()) {
                    case 0: {
                        androidInputControl.setData(1.0f);
                        return true;
                    }
                    case 1: {
                        androidInputControl.setData(0.0f);
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
