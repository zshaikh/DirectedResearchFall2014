package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandGetMaxSize extends MraidCommand
{
    MraidCommandGetMaxSize(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        this.mView.getDisplayController().getMaxSize();
    }
}
