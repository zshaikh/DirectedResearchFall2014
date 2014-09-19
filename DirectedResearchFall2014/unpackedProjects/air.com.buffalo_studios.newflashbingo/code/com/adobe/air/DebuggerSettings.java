package com.adobe.air;

public final class DebuggerSettings
{
    private int debuggerPort;
    private String host;
    private boolean listenForConn;
    
    DebuggerSettings() {
        super();
        this.debuggerPort = -1;
        this.host = null;
        this.listenForConn = false;
    }
    
    DebuggerSettings(final int debuggerPort, final String host, final boolean listenForConn) {
        super();
        this.debuggerPort = -1;
        this.host = null;
        this.listenForConn = false;
        this.debuggerPort = debuggerPort;
        this.host = host;
        this.listenForConn = listenForConn;
    }
    
    public int getDebuggerPort() {
        return this.debuggerPort;
    }
    
    public String getHost() {
        return this.host;
    }
    
    public void setDebugerPort(final int debuggerPort) {
        this.debuggerPort = debuggerPort;
    }
    
    public void setHost(final String host) {
        this.host = host;
    }
    
    public void setListen(final boolean listenForConn) {
        this.listenForConn = listenForConn;
    }
    
    public boolean shouldListen() {
        return this.listenForConn;
    }
}
