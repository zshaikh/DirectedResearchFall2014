.class public Lcom/nativex/monetization/ui/DeviceScreenSize;
.super Ljava/lang/Object;
.source "DeviceScreenSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;
    }
.end annotation


# static fields
.field public static deviceScreenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;


# instance fields
.field private density:F

.field private diagonalInches:F

.field private heightInches:F

.field private heightPixels:I

.field private screenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

.field private widthInches:F

.field private widthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->UNKNOWN:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    sput-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize;->deviceScreenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->SMALL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    iput-object v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->screenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    .line 33
    return-void
.end method

.method public static getDeviceScreenSize()Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize;->deviceScreenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    return-object v0
.end method


# virtual methods
.method public getDensity()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->density:F

    return v0
.end method

.method public getDiagonalInches()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->diagonalInches:F

    return v0
.end method

.method public getHeightInPixels(F)I
    .locals 2
    .param p1, "inches"    # F

    .prologue
    .line 118
    iget v1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->heightInches:F

    div-float v0, p1, v1

    .line 119
    .local v0, "ratio":F
    iget v1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public getHeightInches()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->heightInches:F

    return v0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->heightPixels:I

    return v0
.end method

.method public getScreenSize()Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->screenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    return-object v0
.end method

.method public getWidthInPixels(F)I
    .locals 2
    .param p1, "inches"    # F

    .prologue
    .line 124
    iget v1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->widthInches:F

    div-float v0, p1, v1

    .line 125
    .local v0, "ratio":F
    iget v1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public getWidthInches()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->widthInches:F

    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->widthPixels:I

    return v0
.end method

.method public setDensity(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 134
    int-to-float v0, p1

    iget v1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setDensity(F)V
    .locals 0
    .param p1, "density"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->density:F

    .line 78
    return-void
.end method

.method public setDiagonalInches(F)V
    .locals 1
    .param p1, "diagonalInches"    # F

    .prologue
    .line 102
    iput p1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->diagonalInches:F

    .line 104
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->SMALL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->getSize()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 105
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->SMALL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    iput-object v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->screenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->screenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    sput-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize;->deviceScreenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    .line 114
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->NORMAL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->getSize()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 107
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->NORMAL:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    iput-object v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->screenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->LARGE:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    invoke-virtual {v0}, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->getSize()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 109
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->LARGE:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    iput-object v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->screenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    goto :goto_0

    .line 111
    :cond_2
    sget-object v0, Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;->EXTRA_LARGE:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    iput-object v0, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->screenSize:Lcom/nativex/monetization/ui/DeviceScreenSize$SCREEN_SIZE;

    goto :goto_0
.end method

.method public setHeightInches(F)V
    .locals 0
    .param p1, "heightInches"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->heightInches:F

    .line 98
    return-void
.end method

.method public setHeightPixels(I)V
    .locals 0
    .param p1, "heightPixels"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->heightPixels:I

    .line 88
    return-void
.end method

.method public setWidthInches(F)V
    .locals 0
    .param p1, "widthInches"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->widthInches:F

    .line 93
    return-void
.end method

.method public setWidthPixels(I)V
    .locals 0
    .param p1, "widthPixels"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/nativex/monetization/ui/DeviceScreenSize;->widthPixels:I

    .line 83
    return-void
.end method
