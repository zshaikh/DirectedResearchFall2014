.class public Lcom/nativex/monetization/mraid/objects/CurrentPosition;
.super Ljava/lang/Object;
.source "CurrentPosition.java"


# instance fields
.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field

.field private x:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x"
    .end annotation
.end field

.field private y:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "y"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->x:Ljava/lang/Integer;

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->y:Ljava/lang/Integer;

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->width:Ljava/lang/Integer;

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->height:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public getX()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method public getY()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->y:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCurrentPosition(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z
    .locals 6
    .param p1, "webView"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/nativex/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v1

    .line 79
    .local v1, "height":I
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/nativex/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v2

    .line 80
    .local v2, "width":I
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/nativex/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v3

    .line 81
    .local v3, "x":I
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lcom/nativex/monetization/manager/DensityManager;->getMRAIDDip(F)I

    move-result v4

    .line 82
    .local v4, "y":I
    const/4 v0, 0x0

    .line 83
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->height:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_0

    iget-object v5, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->width:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_0

    iget-object v5, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->x:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_0

    iget-object v5, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->y:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x1

    .line 86
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->x:Ljava/lang/Integer;

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->y:Ljava/lang/Integer;

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->height:Ljava/lang/Integer;

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->width:Ljava/lang/Integer;

    .line 90
    return v0
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/Integer;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->height:Ljava/lang/Integer;

    .line 74
    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/Integer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->width:Ljava/lang/Integer;

    .line 65
    return-void
.end method

.method public setX(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Integer;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->x:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public setY(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "y"    # Ljava/lang/Integer;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CurrentPosition;->y:Ljava/lang/Integer;

    .line 56
    return-void
.end method
