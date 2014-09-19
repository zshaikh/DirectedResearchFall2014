package com.chartboost.sdk.impl;

public class ax extends aw
{
    final al b;
    
    public al b() {
        return this.b;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (!(o instanceof ax)) {
            return false;
        }
        final ax ax = (ax)o;
        return this.a.equals(ax.a) && this.b.equals(ax.b);
    }
    
    @Override
    public int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }
}
