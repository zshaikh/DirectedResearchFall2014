.class public Lcom/nativex/monetization/mraid/objects/DefaultPosition;
.super Ljava/lang/Object;
.source "DefaultPosition.java"


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
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public getX()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method public getY()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->y:Ljava/lang/Integer;

    return-object v0
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/Integer;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->height:Ljava/lang/Integer;

    .line 74
    return-void
.end method

.method public setPosition(Lcom/nativex/monetization/mraid/MRAIDWebView;)V
    .locals 2
    .param p1, "webView"    # Lcom/nativex/monetization/mraid/MRAIDWebView;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->height:Ljava/lang/Integer;

    .line 79
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->width:Ljava/lang/Integer;

    .line 80
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->x:Ljava/lang/Integer;

    .line 81
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->y:Ljava/lang/Integer;

    .line 82
    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/Integer;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->width:Ljava/lang/Integer;

    .line 65
    return-void
.end method

.method public setX(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Integer;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->x:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public setY(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "y"    # Ljava/lang/Integer;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/DefaultPosition;->y:Ljava/lang/Integer;

    .line 56
    return-void
.end method
