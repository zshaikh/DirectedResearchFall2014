.class public final enum Lcom/dolphin/browser/core/d;
.super Ljava/lang/Enum;
.source "ConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/core/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/core/d;

.field public static final enum b:Lcom/dolphin/browser/core/d;

.field public static final enum c:Lcom/dolphin/browser/core/d;

.field public static final enum d:Lcom/dolphin/browser/core/d;

.field public static final enum e:Lcom/dolphin/browser/core/d;

.field private static final synthetic f:[Lcom/dolphin/browser/core/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/dolphin/browser/core/d;

    const-string v1, "TIP"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/core/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/d;->a:Lcom/dolphin/browser/core/d;

    new-instance v0, Lcom/dolphin/browser/core/d;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/core/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/d;->b:Lcom/dolphin/browser/core/d;

    new-instance v0, Lcom/dolphin/browser/core/d;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/core/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/d;->c:Lcom/dolphin/browser/core/d;

    new-instance v0, Lcom/dolphin/browser/core/d;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/core/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/d;->d:Lcom/dolphin/browser/core/d;

    new-instance v0, Lcom/dolphin/browser/core/d;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v6}, Lcom/dolphin/browser/core/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/core/d;->e:Lcom/dolphin/browser/core/d;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dolphin/browser/core/d;

    sget-object v1, Lcom/dolphin/browser/core/d;->a:Lcom/dolphin/browser/core/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/core/d;->b:Lcom/dolphin/browser/core/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/core/d;->c:Lcom/dolphin/browser/core/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/core/d;->d:Lcom/dolphin/browser/core/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/core/d;->e:Lcom/dolphin/browser/core/d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/core/d;->f:[Lcom/dolphin/browser/core/d;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/d;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/dolphin/browser/core/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/d;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/core/d;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/dolphin/browser/core/d;->f:[Lcom/dolphin/browser/core/d;

    invoke-virtual {v0}, [Lcom/dolphin/browser/core/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/core/d;

    return-object v0
.end method
