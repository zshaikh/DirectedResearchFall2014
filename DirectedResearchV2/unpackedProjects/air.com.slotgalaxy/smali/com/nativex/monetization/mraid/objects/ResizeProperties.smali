.class public Lcom/nativex/monetization/mraid/objects/ResizeProperties;
.super Ljava/lang/Object;
.source "ResizeProperties.java"


# instance fields
.field private allowOffscreen:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowOffscreen"
    .end annotation
.end field

.field private customClosePosition:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customClosePosition"
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private offsetX:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offsetX"
    .end annotation
.end field

.field private offsetY:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offsetY"
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowOffscreen()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->allowOffscreen:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->allowOffscreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getCheckRect(Lcom/nativex/monetization/mraid/MRAIDWebView;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "webView"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetX:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v1, v4, v5

    .line 62
    .local v1, "l":I
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetY:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v3, v4, v5

    .line 63
    .local v3, "t":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->width:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v2, v4, v1

    .line 64
    .local v2, "r":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->height:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v0, v4, v3

    .line 66
    .local v0, "b":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getCustomClosePosition()Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->getPosition(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->height:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getOffsetX()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetX:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getOffsetY()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetY:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPositionRect(Lcom/nativex/monetization/mraid/MRAIDWebView;Lcom/nativex/monetization/mraid/objects/MaxSize;)Landroid/graphics/Rect;
    .locals 10
    .param p1, "webView"    # Lcom/nativex/monetization/mraid/MRAIDWebView;
    .param p2, "maxSize"    # Lcom/nativex/monetization/mraid/objects/MaxSize;

    .prologue
    const/4 v9, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetX:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/nativex/monetization/manager/DensityManager;->dipToPixels(Landroid/content/Context;F)I

    move-result v7

    add-int v1, v6, v7

    .line 85
    .local v1, "l":I
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getTop()I

    move-result v6

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetY:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/nativex/monetization/manager/DensityManager;->dipToPixels(Landroid/content/Context;F)I

    move-result v7

    add-int v5, v6, v7

    .line 87
    .local v5, "t":I
    iget-object v6, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->allowOffscreen:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 91
    if-gez v1, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 94
    :cond_0
    if-gez v5, :cond_1

    .line 95
    const/4 v5, 0x0

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->width:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/nativex/monetization/manager/DensityManager;->dipToPixels(Landroid/content/Context;F)I

    move-result v6

    add-int v4, v6, v1

    .line 99
    .local v4, "r":I
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->height:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/nativex/monetization/manager/DensityManager;->dipToPixels(Landroid/content/Context;F)I

    move-result v6

    add-int v0, v6, v5

    .line 102
    .local v0, "b":I
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p2}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/nativex/monetization/manager/DensityManager;->dipToPixels(Landroid/content/Context;F)I

    move-result v3

    .line 103
    .local v3, "maxSizeWidth":I
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p2}, Lcom/nativex/monetization/mraid/objects/MaxSize;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/nativex/monetization/manager/DensityManager;->dipToPixels(Landroid/content/Context;F)I

    move-result v2

    .line 104
    .local v2, "maxSizeHeight":I
    if-le v4, v3, :cond_2

    .line 105
    sub-int v6, v4, v3

    sub-int v6, v1, v6

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 106
    move v4, v3

    .line 108
    :cond_2
    if-le v0, v2, :cond_3

    .line 109
    sub-int v6, v0, v2

    sub-int v6, v5, v6

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 110
    move v0, v2

    .line 117
    .end local v2    # "maxSizeHeight":I
    .end local v3    # "maxSizeWidth":I
    :cond_3
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6

    .line 114
    .end local v0    # "b":I
    .end local v4    # "r":I
    :cond_4
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->width:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/nativex/monetization/manager/DensityManager;->dipToPixels(Landroid/content/Context;F)I

    move-result v6

    add-int v4, v6, v1

    .line 115
    .restart local v4    # "r":I
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->height:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/nativex/monetization/manager/DensityManager;->dipToPixels(Landroid/content/Context;F)I

    move-result v6

    add-int v0, v6, v5

    .restart local v0    # "b":I
    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->width:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setAllowOffscreen(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowOffscreen"    # Ljava/lang/Boolean;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->allowOffscreen:Ljava/lang/Boolean;

    .line 127
    return-void
.end method

.method public setCustomClosePosition(Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;)V
    .locals 1
    .param p1, "customClosePosition"    # Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$ClosePosition;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->customClosePosition:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setCustomClosePosition(Ljava/lang/String;)V
    .locals 0
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->customClosePosition:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/Integer;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->height:Ljava/lang/Integer;

    .line 150
    return-void
.end method

.method public setOffsetX(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "offsetX"    # Ljava/lang/Integer;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetX:Ljava/lang/Integer;

    .line 159
    return-void
.end method

.method public setOffsetY(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "offsetY"    # Ljava/lang/Integer;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->offsetY:Ljava/lang/Integer;

    .line 168
    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/Integer;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->width:Ljava/lang/Integer;

    .line 177
    return-void
.end method
