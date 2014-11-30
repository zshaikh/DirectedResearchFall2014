.class public Lcom/nativex/monetization/mraid/objects/ExpandProperties;
.super Ljava/lang/Object;
.source "ExpandProperties.java"


# instance fields
.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private modal:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isModal"
    .end annotation
.end field

.field private useCustomClose:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useCustomClose"
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->width:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->height:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getUseCustomClose()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public isModal()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->modal:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/Integer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->height:Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method public setModal(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "modal"    # Ljava/lang/Boolean;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->modal:Ljava/lang/Boolean;

    .line 60
    return-void
.end method

.method public setUseCustomClose(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "useCustomClose"    # Ljava/lang/Boolean;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    .line 69
    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/Integer;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->width:Ljava/lang/Integer;

    .line 78
    return-void
.end method
