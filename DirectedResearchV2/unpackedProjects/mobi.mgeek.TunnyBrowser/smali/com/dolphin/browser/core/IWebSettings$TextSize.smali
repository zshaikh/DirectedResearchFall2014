.class public final enum Lcom/dolphin/browser/core/IWebSettings$TextSize;
.super Ljava/lang/Enum;
.source "IWebSettings.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/core/IWebSettings$TextSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LARGER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

.field public static final enum LARGEST:Lcom/dolphin/browser/core/IWebSettings$TextSize;

.field public static final enum NORMAL:Lcom/dolphin/browser/core/IWebSettings$TextSize;

.field public static final enum SMALLER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

.field public static final enum SMALLEST:Lcom/dolphin/browser/core/IWebSettings$TextSize;

.field private static final synthetic b:[Lcom/dolphin/browser/core/IWebSettings$TextSize;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;

    const-string v1, "SMALLEST"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v3, v2}, Lcom/dolphin/browser/core/IWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->SMALLEST:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;

    const-string v1, "SMALLER"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v4, v2}, Lcom/dolphin/browser/core/IWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->SMALLER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;

    const-string v1, "NORMAL"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v5, v2}, Lcom/dolphin/browser/core/IWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;

    const-string v1, "LARGER"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v6, v2}, Lcom/dolphin/browser/core/IWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->LARGER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;

    const-string v1, "LARGEST"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v7, v2}, Lcom/dolphin/browser/core/IWebSettings$TextSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->LARGEST:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dolphin/browser/core/IWebSettings$TextSize;

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$TextSize;->SMALLEST:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$TextSize;->SMALLER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$TextSize;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$TextSize;->LARGER:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$TextSize;->LARGEST:Lcom/dolphin/browser/core/IWebSettings$TextSize;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->b:[Lcom/dolphin/browser/core/IWebSettings$TextSize;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->a:I

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$TextSize;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/core/IWebSettings$TextSize;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->b:[Lcom/dolphin/browser/core/IWebSettings$TextSize;

    invoke-virtual {v0}, [Lcom/dolphin/browser/core/IWebSettings$TextSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/core/IWebSettings$TextSize;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation

    .prologue
    .line 64
    iget v0, p0, Lcom/dolphin/browser/core/IWebSettings$TextSize;->a:I

    return v0
.end method
