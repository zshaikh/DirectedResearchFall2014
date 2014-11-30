.class public final enum Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "IWebSettings.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

.field public static final enum FAR:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

.field public static final enum MEDIUM:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

.field private static final synthetic b:[Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    const-string v1, "FAR"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v3, v2}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->FAR:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    .line 76
    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    const-string v1, "MEDIUM"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->MEDIUM:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    .line 77
    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    const-string v1, "CLOSE"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v5, v2}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->CLOSE:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->FAR:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->MEDIUM:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->CLOSE:Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->b:[Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->a:I

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->b:[Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    invoke-virtual {v0}, [Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    return-object v0
.end method
