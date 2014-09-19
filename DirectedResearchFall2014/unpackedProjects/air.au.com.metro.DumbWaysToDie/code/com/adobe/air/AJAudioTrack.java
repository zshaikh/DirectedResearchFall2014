package com.adobe.air;

import android.media.*;

public class AJAudioTrack extends AudioTrack
{
    private static int sStreamType;
    private byte[] mBuf;
    
    static {
        AJAudioTrack.sStreamType = 3;
    }
    
    public AJAudioTrack(final int n, final int n2, final int n3, final int n4) {
        super(AJAudioTrack.sStreamType, n, n3, n2, n4, 1);
        this.mBuf = new byte[n4];
    }
    
    public static AJAudioTrack CreateTrack(final int n, final int n2, final int n3, final int n4) {
        AJAudioTrack ajAudioTrack;
        while (true) {
            while (true) {
                Label_0063: {
                    try {
                        final int minBufferSize = AudioTrack.getMinBufferSize(n, ToAndroidChannelCount(n3), ToAndroidFormat(n2));
                        if (n4 >= minBufferSize) {
                            break Label_0063;
                        }
                        ajAudioTrack = new AJAudioTrack(n, ToAndroidFormat(n2), ToAndroidChannelCount(n3), minBufferSize);
                        if (ajAudioTrack.getState() != 1) {
                            ajAudioTrack.release();
                            return null;
                        }
                    }
                    catch (Exception ex) {
                        return null;
                    }
                    break;
                }
                final int minBufferSize = n4;
                continue;
            }
        }
        return ajAudioTrack;
    }
    
    public static void SetStreamType(final int sStreamType) {
        AJAudioTrack.sStreamType = sStreamType;
    }
    
    public static int ToAndroidChannelCount(final int n) {
        if (n == 1) {
            return 4;
        }
        return 12;
    }
    
    public static int ToAndroidFormat(final int n) {
        if (n == 1) {
            return 3;
        }
        return 2;
    }
    
    public byte[] GetBuffer() {
        return this.mBuf;
    }
    
    public boolean playing() {
        return this.getPlayState() == 3;
    }
    
    public boolean stopped() {
        return this.getPlayState() == 1;
    }
}
