package com.chartboost.sdk.impl;

public class av extends au
{
    final aj b;
    
    public aj b() {
        return this.b;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (!(o instanceof av)) {
            return false;
        }
        final av av = (av)o;
        return this.a.equals(av.a) && this.b.equals(av.b);
    }
    
    @Override
    public int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }
}
