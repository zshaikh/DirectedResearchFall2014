package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandCreateCalendarEvent extends MraidCommand
{
    MraidCommandCreateCalendarEvent(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        this.mView.getDisplayController().createCalendarEvent(this.mParams);
    }
    
    @Override
    protected boolean isCommandDependentOnUserClick(final MraidView.PlacementType placementType) {
        return true;
    }
}
