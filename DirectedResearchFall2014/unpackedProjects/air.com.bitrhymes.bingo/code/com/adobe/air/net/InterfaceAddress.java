package com.adobe.air.net;

public class InterfaceAddress
{
    public String address;
    public String broadcast;
    public String ipVersion;
    public int prefixLength;
    
    public InterfaceAddress() {
        super();
        this.address = "";
        this.broadcast = "";
        this.ipVersion = "IPv4";
        this.prefixLength = -1;
    }
}
