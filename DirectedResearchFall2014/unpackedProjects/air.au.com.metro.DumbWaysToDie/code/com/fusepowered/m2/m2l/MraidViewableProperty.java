package com.fusepowered.m2.m2l;

class MraidViewableProperty extends MraidProperty
{
    private final boolean mViewable;
    
    MraidViewableProperty(final boolean mViewable) {
        super();
        this.mViewable = mViewable;
    }
    
    public static MraidViewableProperty createWithViewable(final boolean b) {
        return new MraidViewableProperty(b);
    }
    
    @Override
    public String toJsonPair() {
        final StringBuilder sb = new StringBuilder("viewable: ");
        String str;
        if (this.mViewable) {
            str = "true";
        }
        else {
            str = "false";
        }
        return sb.append(str).toString();
    }
}
