package com.chartboost.sdk.impl;

import java.io.*;

public class ax implements Serializable
{
    @Override
    public boolean equals(final Object o) {
        return o instanceof ax;
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
