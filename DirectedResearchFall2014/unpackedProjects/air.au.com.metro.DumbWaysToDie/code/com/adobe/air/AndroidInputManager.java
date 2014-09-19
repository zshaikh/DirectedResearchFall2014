package com.adobe.air;

import android.content.*;
import android.util.*;
import android.hardware.input.*;
import android.os.*;
import android.content.res.*;
import android.view.*;

public class AndroidInputManager implements InputManager$InputDeviceListener, StateChangeCallback, InputEventCallback
{
    private static AndroidInputManager sAndroidInputManager;
    private Context mContext;
    private SparseArray<AndroidInputDevice> mInputDevices;
    private InputManager mInputManager;
    private long mInternalReference;
    private boolean mListening;
    
    static {
        AndroidInputManager.sAndroidInputManager = null;
    }
    
    private AndroidInputManager(final Context mContext) {
        super();
        this.mContext = null;
        this.mInputManager = null;
        this.mInputDevices = null;
        this.mInternalReference = 0L;
        this.mListening = false;
        this.mContext = mContext;
        if (this.mContext != null) {
            this.mInputManager = (InputManager)this.mContext.getSystemService("input");
        }
        final AndroidActivityWrapper getAndroidActivityWrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        if (getAndroidActivityWrapper != null) {
            getAndroidActivityWrapper.addActivityStateChangeListner((AndroidActivityWrapper.StateChangeCallback)this);
            getAndroidActivityWrapper.addInputEventListner((AndroidActivityWrapper.InputEventCallback)this);
        }
        this.mInputDevices = (SparseArray<AndroidInputDevice>)new SparseArray();
    }
    
    public static AndroidInputManager GetAndroidInputManager(final Context context) {
        if (isSupported() && AndroidInputManager.sAndroidInputManager == null) {
            AndroidInputManager.sAndroidInputManager = new AndroidInputManager(context);
        }
        return AndroidInputManager.sAndroidInputManager;
    }
    
    private native void OnDeviceAdded(final long p0, final AndroidInputDevice p1, final String p2);
    
    private native void OnDeviceRemoved(final long p0, final String p1);
    
    private void addRemoveExistingInputDevices() {
        for (int size = this.mInputDevices.size(), i = 0; i < size; ++i) {
            int[] inputDeviceIds;
            int n;
            for (inputDeviceIds = this.mInputManager.getInputDeviceIds(), n = 0; n < inputDeviceIds.length && this.mInputDevices.keyAt(i) != inputDeviceIds[n]; ++n) {}
            if (n == inputDeviceIds.length) {
                this.OnDeviceRemoved(this.mInternalReference, ((AndroidInputDevice)this.mInputDevices.valueAt(i)).getUniqueId());
                this.mInputDevices.delete(this.mInputDevices.keyAt(i));
            }
        }
        final int[] inputDeviceIds2 = this.mInputManager.getInputDeviceIds();
        for (int j = 0; j < inputDeviceIds2.length; ++j) {
            this.onInputDeviceAdded(inputDeviceIds2[j]);
        }
    }
    
    public static boolean isSupported() {
        try {
            return Class.forName("android.hardware.input.InputManager") != null;
        }
        catch (Exception ex) {
            return false;
        }
    }
    
    public AndroidInputDevice getInputDevice(final int n) {
        return (AndroidInputDevice)this.mInputDevices.get(n);
    }
    
    public void listenForInputDevice(final boolean b) {
        if (this.mInputManager != null) {
            Label_0038: {
                if (!b) {
                    break Label_0038;
                }
                try {
                    if (!this.mListening) {
                        this.mInputManager.registerInputDeviceListener((InputManager$InputDeviceListener)this, (Handler)null);
                        this.addRemoveExistingInputDevices();
                        this.mListening = true;
                        return;
                    }
                    if (!b && this.mListening) {
                        this.mInputManager.unregisterInputDeviceListener((InputManager$InputDeviceListener)this);
                        this.mListening = false;
                    }
                }
                catch (Exception ex) {}
            }
        }
    }
    
    public void onActivityStateChanged(final ActivityState activityState) {
        if (activityState == ActivityState.RESUMED) {
            this.listenForInputDevice(true);
        }
        else if (activityState == ActivityState.PAUSED) {
            this.listenForInputDevice(false);
        }
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
    }
    
    public boolean onGenericMotionEvent(final MotionEvent motionEvent) {
        if ((0x10 & motionEvent.getSource()) != 0x0 && motionEvent.getAction() == 2) {
            final AndroidInputDevice androidInputDevice = (AndroidInputDevice)this.mInputDevices.get(motionEvent.getDeviceId());
            if (androidInputDevice != null) {
                return androidInputDevice.onGenericMotionEvent(motionEvent);
            }
        }
        return false;
    }
    
    public void onInputDeviceAdded(final int n) {
        if (this.mInputDevices.get(n) == null) {
            final InputDevice inputDevice = this.mInputManager.getInputDevice(n);
            if (!inputDevice.isVirtual() && (0x10 & inputDevice.getSources()) != 0x0 && (0x1 & inputDevice.getSources()) != 0x0) {
                final AndroidInputDevice androidInputDevice = new AndroidInputDevice(inputDevice);
                this.mInputDevices.put(n, (Object)androidInputDevice);
                this.OnDeviceAdded(this.mInternalReference, androidInputDevice, androidInputDevice.getUniqueId());
            }
        }
    }
    
    public void onInputDeviceChanged(final int n) {
        this.onInputDeviceRemoved(n);
        this.onInputDeviceAdded(n);
    }
    
    public void onInputDeviceRemoved(final int n) {
        final AndroidInputDevice androidInputDevice = (AndroidInputDevice)this.mInputDevices.get(n);
        if (androidInputDevice != null) {
            this.OnDeviceRemoved(this.mInternalReference, androidInputDevice.getUniqueId());
            this.mInputDevices.delete(n);
        }
    }
    
    public boolean onKeyEvent(final KeyEvent keyEvent) {
        final AndroidInputDevice androidInputDevice = (AndroidInputDevice)this.mInputDevices.get(keyEvent.getDeviceId());
        return androidInputDevice != null && androidInputDevice.onKeyEvent(keyEvent);
    }
    
    public void setInternalReference(final long mInternalReference) {
        this.mInternalReference = mInternalReference;
    }
}
