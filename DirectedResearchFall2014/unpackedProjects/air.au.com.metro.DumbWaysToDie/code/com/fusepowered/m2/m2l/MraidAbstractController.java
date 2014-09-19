package com.fusepowered.m2.m2l;

class MraidAbstractController
{
    private final MraidView mMraidView;
    
    MraidAbstractController(final MraidView mMraidView) {
        super();
        this.mMraidView = mMraidView;
    }
    
    public MraidView getMraidView() {
        return this.mMraidView;
    }
}
