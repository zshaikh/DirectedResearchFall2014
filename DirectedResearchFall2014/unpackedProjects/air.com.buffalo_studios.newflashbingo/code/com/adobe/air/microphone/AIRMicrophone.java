package com.adobe.air.microphone;

public class AIRMicrophone
{
    private AIRMicrophoneRecorder m_airRecorder;
    private int m_audioFormat;
    private int m_audioSource;
    private int m_bufferSize;
    private int m_channelConfiguration;
    private int m_sampleRate;
    private Thread m_thread;
    
    public AIRMicrophone() {
        super();
        this.m_audioSource = 0;
        this.m_sampleRate = 0;
        this.m_channelConfiguration = 0;
        this.m_audioFormat = 0;
        this.m_bufferSize = 0;
    }
    
    public void Close() {
        this.m_airRecorder.setRecording(false);
    }
    
    public byte[] GetNextBuffer() {
        return this.m_airRecorder.getBuffer();
    }
    
    public boolean Open(final int sampleRate, final int n, final int n2, final int bufferSize) {
        this.m_audioSource = 1;
        this.m_sampleRate = sampleRate;
        if (n2 == 8) {
            this.m_audioFormat = 3;
        }
        else {
            if (n2 != 16) {
                return false;
            }
            this.m_audioFormat = 2;
        }
        if (n == 1) {
            this.m_channelConfiguration = 16;
        }
        else {
            if (n != 2) {
                return false;
            }
            this.m_channelConfiguration = 12;
        }
        this.m_bufferSize = bufferSize;
        this.m_airRecorder = new AIRMicrophoneRecorder(this.m_audioSource, this.m_sampleRate, this.m_channelConfiguration, this.m_audioFormat, this.m_bufferSize);
        (this.m_thread = new Thread(this.m_airRecorder)).start();
        if (this.m_airRecorder.Open()) {
            this.m_airRecorder.setRecording(true);
            return true;
        }
        return false;
    }
}
