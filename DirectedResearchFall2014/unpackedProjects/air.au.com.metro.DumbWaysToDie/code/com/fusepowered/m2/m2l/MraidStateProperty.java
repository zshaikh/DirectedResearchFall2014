package com.fusepowered.m2.m2l;

class MraidStateProperty extends MraidProperty
{
    private final MraidView.ViewState mViewState;
    
    MraidStateProperty(final MraidView.ViewState mViewState) {
        super();
        this.mViewState = mViewState;
    }
    
    public static MraidStateProperty createWithViewState(final MraidView.ViewState viewState) {
        return new MraidStateProperty(viewState);
    }
    
    @Override
    public String toJsonPair() {
        return "state: '" + this.mViewState.toString().toLowerCase() + "'";
    }
}
