package com.playhaven.src.publishersdk.content;

import v2.com.playhaven.model.*;

public class PHContent extends v2.com.playhaven.model.PHContent
{
    public PHContent(final v2.com.playhaven.model.PHContent phContent) {
        super();
        this.transition = phContent.transition;
        this.closeURL = phContent.closeURL;
        this.context = phContent.context;
        this.url = phContent.url;
        this.closeButtonDelay = phContent.closeButtonDelay;
        this.preloaded = phContent.preloaded;
        this.setFrames(phContent.getFrames());
    }
}
