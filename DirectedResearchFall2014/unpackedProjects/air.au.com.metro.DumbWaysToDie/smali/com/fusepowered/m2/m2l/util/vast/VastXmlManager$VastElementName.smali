.class final enum Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;
.super Ljava/lang/Enum;
.source "VastXmlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VastElementName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK_THROUGH:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

.field public static final enum CLICK_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

.field private static final synthetic ENUM$VALUES:[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

.field public static final enum IMPRESSION_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

.field public static final enum MEDIA_FILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

.field public static final enum MP_IMPRESSION_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

.field public static final enum VAST_AD_TAG:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

.field public static final enum VIDEO_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    const-string v1, "IMPRESSION_TRACKER"

    const-string v2, "Impression"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->IMPRESSION_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    .line 26
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    const-string v1, "VIDEO_TRACKER"

    const-string v2, "Tracking"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->VIDEO_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    .line 27
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    const-string v1, "CLICK_THROUGH"

    const-string v2, "ClickThrough"

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->CLICK_THROUGH:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    .line 28
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    const-string v1, "CLICK_TRACKER"

    const-string v2, "ClickTracking"

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->CLICK_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    .line 29
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    const-string v1, "MEDIA_FILE"

    const-string v2, "MediaFile"

    invoke-direct {v0, v1, v8, v2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->MEDIA_FILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    .line 30
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    const-string v1, "VAST_AD_TAG"

    const/4 v2, 0x5

    const-string v3, "VASTAdTagURI"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->VAST_AD_TAG:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    .line 31
    new-instance v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    const-string v1, "MP_IMPRESSION_TRACKER"

    const/4 v2, 0x6

    const-string v3, "MP_TRACKING_URL"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->MP_IMPRESSION_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->IMPRESSION_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->VIDEO_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->CLICK_THROUGH:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->CLICK_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->MEDIA_FILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->VAST_AD_TAG:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->MP_IMPRESSION_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->ENUM$VALUES:[Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    array-length v1, v0

    new-array v2, v1, [Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->name:Ljava/lang/String;

    return-object v0
.end method
