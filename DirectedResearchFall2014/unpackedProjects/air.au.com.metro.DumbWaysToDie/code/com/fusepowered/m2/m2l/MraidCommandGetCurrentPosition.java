package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandGetCurrentPosition extends MraidCommand
{
    MraidCommandGetCurrentPosition(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        this.mView.getDisplayController().getCurrentPosition();
    }
}