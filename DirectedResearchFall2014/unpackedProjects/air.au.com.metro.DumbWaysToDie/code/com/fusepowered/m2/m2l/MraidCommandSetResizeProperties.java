package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandSetResizeProperties extends MraidCommand
{
    MraidCommandSetResizeProperties(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        this.mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.SET_RESIZE_PROPERTIES, "Unsupported action setResizeProperties.");
    }
}
