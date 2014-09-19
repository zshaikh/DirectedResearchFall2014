package com.fusepowered.m1.android;

import com.fusepowered.m1.google.gson.annotations.*;

class DTOAdViewLayout
{
    int height;
    int width;
    @SerializedName("x")
    int xWindowPosition;
    @SerializedName("y")
    int yWindowPosition;
    
    DTOAdViewLayout(final int xWindowPosition, final int yWindowPosition, final int width, final int height) {
        super();
        this.xWindowPosition = xWindowPosition;
        this.yWindowPosition = yWindowPosition;
        this.width = width;
        this.height = height;
    }
}
