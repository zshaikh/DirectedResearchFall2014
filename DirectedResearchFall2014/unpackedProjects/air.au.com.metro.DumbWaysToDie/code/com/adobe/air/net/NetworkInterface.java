package com.adobe.air.net;

import java.util.*;

public class NetworkInterface
{
    public boolean active;
    private Vector<InterfaceAddress> addresses;
    public String displayName;
    public String hardwareAddress;
    public int mtu;
    public String name;
    public NetworkInterface parent;
    public NetworkInterface subInterfaces;
    
    public NetworkInterface() {
        super();
        this.active = false;
        this.displayName = "";
        this.hardwareAddress = "";
        this.mtu = -1;
        this.name = "";
        this.parent = null;
        this.subInterfaces = null;
        this.addresses = new Vector<InterfaceAddress>();
    }
    
    public InterfaceAddress GetAddress(final int index) {
        return this.addresses.elementAt(index);
    }
    
    public int GetAddressesCount() {
        return this.addresses.size();
    }
    
    public void addAddress(final InterfaceAddress e) {
        this.addresses.add(e);
    }
}
