.class public final enum Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;
.super Ljava/lang/Enum;
.source "PHCloseButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/views/interstitial/PHCloseButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

.field public static final enum Down:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

.field public static final enum Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;


# instance fields
.field private android_state:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    const-string v1, "Down"

    const v2, 0x10100a7

    invoke-direct {v0, v1, v3, v2}, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Down:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    .line 31
    new-instance v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    const-string v1, "Up"

    const v2, 0x101009e

    invoke-direct {v0, v1, v4, v2}, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    sget-object v1, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Down:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->Up:Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    aput-object v1, v0, v4

    sput-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->$VALUES:[Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "android_state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->android_state:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->$VALUES:[Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    invoke-virtual {v0}, [Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;

    return-object v0
.end method


# virtual methods
.method public getAndroidState()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lv2/com/playhaven/views/interstitial/PHCloseButton$CloseButtonState;->android_state:I

    return v0
.end method
