package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandGetResizeProperties extends MraidCommand
{
    MraidCommandGetResizeProperties(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        this.mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.GET_RESIZE_PROPERTIES, "Unsupported action getResizeProperties.");
    }
}
