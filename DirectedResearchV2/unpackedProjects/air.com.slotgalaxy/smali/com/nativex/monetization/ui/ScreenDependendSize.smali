.class public Lcom/nativex/monetization/ui/ScreenDependendSize;
.super Ljava/lang/Object;
.source "ScreenDependendSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/ui/ScreenDependendSize$1;
    }
.end annotation


# instance fields
.field public LARGE:I

.field public NORMAL:I

.field public SMALL:I

.field public XLARGE:I

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/nativex/monetization/ui/ScreenDependendSize;-><init>(IIII)V

    .line 33
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "small"    # I
    .param p2, "normal"    # I
    .param p3, "large"    # I
    .param p4, "xlarge"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/nativex/monetization/ui/ScreenDependendSize;->SMALL:I

    .line 37
    iput p2, p0, Lcom/nativex/monetization/ui/ScreenDependendSize;->NORMAL:I

    .line 38
    iput p3, p0, Lcom/nativex/monetization/ui/ScreenDependendSize;->LARGE:I

    .line 39
    iput p4, p0, Lcom/nativex/monetization/ui/ScreenDependendSize;->XLARGE:I

    .line 40
    return-void
.end method

.method public static varargs setScreensizes(Lcom/nativex/monetization/ui/DeviceScreenSize;[Lcom/nativex/monetization/ui/ScreenDependendSize;)V
    .locals 5
    .param p0, "screenSize"    # Lcom/nativex/monetization/ui/DeviceScreenSize;
    .param p1, "sizes"    # [Lcom/nativex/monetization/ui/ScreenDependendSize;

    .prologue
    const/high16 v4, 0x3f000000

    .line 45
    array-length v1, p1

    if-gtz v1, :cond_1

    .line 76
    :cond_0
    return-void

    .line 48
    :cond_1
    sget-object v1, Lcom/nativex/monetization/ui/ScreenDependendSize$1;->$SwitchMap$com$nativex$monetization$ui$DeviceScreenSize$SCREEN_SIZE:[I

    invoke-virtual {p0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getScreenSize()Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 64
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 65
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/nativex/monetization/ui/ScreenDependendSize;->NORMAL:I

    iput v2, v1, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    .line 66
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 51
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/nativex/monetization/ui/ScreenDependendSize;->XLARGE:I

    iput v2, v1, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    .line 52
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 57
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/nativex/monetization/ui/ScreenDependendSize;->LARGE:I

    iput v2, v1, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    .line 58
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 70
    .end local v0    # "i":I
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 71
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/nativex/monetization/ui/ScreenDependendSize;->SMALL:I

    iput v2, v1, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    .line 72
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    iget v2, v2, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nativex/monetization/ui/DeviceScreenSize;->getDensity()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lcom/nativex/monetization/ui/ScreenDependendSize;->size:I

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
