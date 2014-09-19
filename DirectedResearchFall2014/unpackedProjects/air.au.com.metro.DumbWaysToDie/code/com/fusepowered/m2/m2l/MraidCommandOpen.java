package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandOpen extends MraidCommand
{
    MraidCommandOpen(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        final String stringFromParamsForKey = this.getStringFromParamsForKey("url");
        if (stringFromParamsForKey == null) {
            this.mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.OPEN, "Url can not be null.");
            return;
        }
        this.mView.getBrowserController().open(stringFromParamsForKey);
    }
    
    @Override
    protected boolean isCommandDependentOnUserClick(final MraidView.PlacementType placementType) {
        return true;
    }
}
