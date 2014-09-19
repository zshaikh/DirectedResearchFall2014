package com.adobe.air.microphone;

import android.media.*;
import android.os.*;

public class AIRMicrophoneRecorder implements Runnable
{
    private byte[] mMicBuffer;
    private int m_audioFormat;
    private int m_audioSource;
    private int m_bufferSize;
    private int m_channelConfiguration;
    private volatile boolean m_isPaused;
    private volatile boolean m_isRecording;
    private AudioRecord m_recorder;
    private int m_sampleRate;
    private final Object mutex;
    
    public AIRMicrophoneRecorder(final int audioSource, final int sampleRate, final int channelConfiguration, final int audioFormat, final int bufferSize) {
        super();
        this.m_audioSource = 0;
        this.m_sampleRate = 0;
        this.m_channelConfiguration = 0;
        this.m_audioFormat = 0;
        this.m_bufferSize = 0;
        this.mutex = new Object();
        this.m_audioSource = audioSource;
        this.m_sampleRate = sampleRate;
        this.m_channelConfiguration = channelConfiguration;
        this.m_audioFormat = audioFormat;
        this.m_bufferSize = bufferSize;
        this.mMicBuffer = new byte[this.m_bufferSize];
    }
    
    public Boolean Open() {
        final int minBufferSize = AudioRecord.getMinBufferSize(this.m_sampleRate, this.m_channelConfiguration, this.m_audioFormat);
        Label_0080: {
            if (this.m_bufferSize <= minBufferSize) {
                break Label_0080;
            }
            int bufferSize = this.m_bufferSize;
            try {
                while (true) {
                    this.m_recorder = new AudioRecord(this.m_audioSource, this.m_sampleRate, this.m_channelConfiguration, this.m_audioFormat, bufferSize);
                    if (this.m_recorder != null && this.m_recorder.getState() == 1) {
                        return true;
                    }
                    return false;
                    bufferSize = minBufferSize * 2;
                    continue;
                }
            }
            catch (IllegalArgumentException ex) {
                ex.printStackTrace();
                return false;
            }
        }
        return false;
    }
    
    public byte[] getBuffer() {
        final int read = this.m_recorder.read(this.mMicBuffer, 0, this.m_bufferSize);
        if (read != -3 && read == -2) {}
        return this.mMicBuffer;
    }
    
    public boolean isRecording() {
        synchronized (this.mutex) {
            return this.m_isRecording;
        }
    }
    
    @Override
    public void run() {
        synchronized (this.mutex) {
            while (!this.isRecording()) {
                try {
                    this.mutex.wait();
                }
                catch (InterruptedException cause) {
                    throw new IllegalStateException("Wait interrupted", cause);
                }
            }
        }
        // monitorexit(o)
        Process.setThreadPriority(-19);
        if (this.m_recorder == null) {
            return;
        }
        try {
            this.m_recorder.startRecording();
        }
        catch (IllegalStateException ex) {}
    }
    
    public void setRecording(final boolean isRecording) {
        synchronized (this.mutex) {
            this.m_isRecording = isRecording;
            if (this.m_isRecording) {
                this.mutex.notify();
            }
            else {
                if (this.m_recorder.getState() == 1) {
                    this.m_recorder.stop();
                }
                this.m_recorder.release();
            }
        }
    }
}
