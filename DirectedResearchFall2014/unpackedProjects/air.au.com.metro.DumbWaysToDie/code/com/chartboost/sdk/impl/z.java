package com.chartboost.sdk.impl;

public class z
{
    final Object a;
    final String b;
    
    public Object a() {
        return this.a;
    }
    
    public String b() {
        return this.b;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || this.getClass() != o.getClass()) {
            return false;
        }
        final z z = (z)o;
        Label_0059: {
            if (this.a != null) {
                if (this.a.equals(z.a)) {
                    break Label_0059;
                }
            }
            else if (z.a == null) {
                break Label_0059;
            }
            return false;
        }
        if (this.b != null) {
            if (this.b.equals(z.b)) {
                return true;
            }
        }
        else if (z.b == null) {
            return true;
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        int hashCode;
        if (this.a != null) {
            hashCode = this.a.hashCode();
        }
        else {
            hashCode = 0;
        }
        final int n = hashCode * 31;
        int hashCode2;
        if (this.b != null) {
            hashCode2 = this.b.hashCode();
        }
        else {
            hashCode2 = 0;
        }
        return n + hashCode2;
    }
    
    @Override
    public String toString() {
        return "{ \"$ref\" : \"" + this.b + "\", \"$id\" : \"" + this.a + "\" }";
    }
}
