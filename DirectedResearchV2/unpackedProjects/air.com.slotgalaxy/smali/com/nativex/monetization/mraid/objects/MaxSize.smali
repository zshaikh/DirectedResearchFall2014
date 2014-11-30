.class public Lcom/nativex/monetization/mraid/objects/MaxSize;
.super Ljava/lang/Object;
.source "MaxSize.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/MaxSize;->height:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/MaxSize;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/MaxSize;->width:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/MaxSize;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/Integer;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/MaxSize;->height:Ljava/lang/Integer;

    .line 39
    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/Integer;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/MaxSize;->width:Ljava/lang/Integer;

    .line 48
    return-void
.end method
