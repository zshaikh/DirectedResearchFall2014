.class public final enum Lcom/dolphin/browser/core/IWebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "IWebSettings.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/core/IWebSettings$RenderPriority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HIGH:Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

.field public static final enum LOW:Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

.field public static final enum NORMAL:Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

.field private static final synthetic a:[Lcom/dolphin/browser/core/IWebSettings$RenderPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->HIGH:Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    new-instance v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->LOW:Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->NORMAL:Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->HIGH:Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->LOW:Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->a:[Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/core/IWebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->a:[Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    invoke-virtual {v0}, [Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/core/IWebSettings$RenderPriority;

    return-object v0
.end method
