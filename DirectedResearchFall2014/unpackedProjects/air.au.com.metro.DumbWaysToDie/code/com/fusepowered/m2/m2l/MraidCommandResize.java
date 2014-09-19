package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandResize extends MraidCommand
{
    MraidCommandResize(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        this.mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.RESIZE, "Unsupported action resize.");
    }
}
