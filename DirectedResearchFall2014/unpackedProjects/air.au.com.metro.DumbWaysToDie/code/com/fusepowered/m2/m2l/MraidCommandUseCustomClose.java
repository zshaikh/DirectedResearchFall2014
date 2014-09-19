package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandUseCustomClose extends MraidCommand
{
    MraidCommandUseCustomClose(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        this.mView.getDisplayController().useCustomClose(this.getBooleanFromParamsForKey("shouldUseCustomClose"));
    }
}
