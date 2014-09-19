package com.facebook;

class FacebookRequestError$Range
{
    private final int end;
    private final int start;
    
    private FacebookRequestError$Range(final int start, final int end) {
        super();
        this.start = start;
        this.end = end;
    }
    
    boolean contains(final int n) {
        return this.start <= n && n <= this.end;
    }
}
