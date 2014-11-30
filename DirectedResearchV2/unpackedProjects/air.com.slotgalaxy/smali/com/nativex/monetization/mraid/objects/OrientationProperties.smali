.class public Lcom/nativex/monetization/mraid/objects/OrientationProperties;
.super Ljava/lang/Object;
.source "OrientationProperties.java"


# instance fields
.field private allowOrientationChange:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowOrientationChange"
    .end annotation
.end field

.field private forceOrientation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceOrientation"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowOrientationChange()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getForceOrientation()Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/OrientationProperties;->forceOrientation:Ljava/lang/String;

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->getOrientation(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public setAllowOrientationChange(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowOrientationChange"    # Ljava/lang/Boolean;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/OrientationProperties;->allowOrientationChange:Ljava/lang/Boolean;

    .line 40
    return-void
.end method

.method public setForceOrientation(Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;)V
    .locals 1
    .param p1, "forceOrientation"    # Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$Orientation;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/objects/OrientationProperties;->forceOrientation:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setForceOrientation(Ljava/lang/String;)V
    .locals 0
    .param p1, "forceOrientation"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/OrientationProperties;->forceOrientation:Ljava/lang/String;

    .line 49
    return-void
.end method
