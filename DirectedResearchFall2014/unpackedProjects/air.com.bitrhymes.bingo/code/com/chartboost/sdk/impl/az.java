package com.chartboost.sdk.impl;

import java.io.*;

public class az implements Serializable
{
    @Override
    public boolean equals(final Object o) {
        return o instanceof az;
    }
    
    @Override
    public int hashCode() {
        return 0;
    }
    
    @Override
    public String toString() {
        return "MinKey";
    }
}
