package com.fusepowered.m1.android;

class DTOResizeParameters
{
    boolean allowOffScreen;
    String customClosePosition;
    int height;
    int offsetX;
    int offsetY;
    int width;
    int xMax;
    int yMax;
    
    DTOResizeParameters(final float n, final int n2, final int n3, final String customClosePosition, final int n4, final int n5, final boolean allowOffScreen, final int xMax, final int yMax) {
        super();
        this.width = (int)(n * n2);
        this.height = (int)(n * n3);
        this.customClosePosition = customClosePosition;
        this.offsetX = (int)(n * n4);
        this.offsetY = (int)(n * n5);
        this.allowOffScreen = allowOffScreen;
        this.xMax = xMax;
        this.yMax = yMax;
    }
    
    @Override
    public String toString() {
        return String.format("width[%d] height[%d] offsetX[%d] offsetY[%d] allowOffScreen[%b] customClosePosition[%s] maxX[%d] maxY[%d]", this.width, this.height, this.offsetX, this.offsetY, this.allowOffScreen, this.customClosePosition, this.xMax, this.yMax);
    }
}
