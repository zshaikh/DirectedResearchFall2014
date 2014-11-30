.class public final enum Lcom/dolphin/browser/util/t;
.super Ljava/lang/Enum;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/util/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/util/t;

.field public static final enum b:Lcom/dolphin/browser/util/t;

.field public static final enum c:Lcom/dolphin/browser/util/t;

.field private static final synthetic e:[Lcom/dolphin/browser/util/t;


# instance fields
.field d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/dolphin/browser/util/t;

    const-string v1, "LOW"

    sget-object v2, Lcom/dolphin/browser/util/f;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v3, v2}, Lcom/dolphin/browser/util/t;-><init>(Ljava/lang/String;ILjava/util/concurrent/Executor;)V

    sput-object v0, Lcom/dolphin/browser/util/t;->a:Lcom/dolphin/browser/util/t;

    .line 17
    new-instance v0, Lcom/dolphin/browser/util/t;

    const-string v1, "NORMAL"

    sget-object v2, Lcom/dolphin/browser/util/f;->h:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v4, v2}, Lcom/dolphin/browser/util/t;-><init>(Ljava/lang/String;ILjava/util/concurrent/Executor;)V

    sput-object v0, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    .line 21
    new-instance v0, Lcom/dolphin/browser/util/t;

    const-string v1, "HIGH"

    sget-object v2, Lcom/dolphin/browser/util/f;->g:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v5, v2}, Lcom/dolphin/browser/util/t;-><init>(Ljava/lang/String;ILjava/util/concurrent/Executor;)V

    sput-object v0, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dolphin/browser/util/t;

    sget-object v1, Lcom/dolphin/browser/util/t;->a:Lcom/dolphin/browser/util/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/util/t;->e:[Lcom/dolphin/browser/util/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/dolphin/browser/util/t;->d:Ljava/util/concurrent/Executor;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/util/t;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dolphin/browser/util/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/t;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/util/t;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dolphin/browser/util/t;->e:[Lcom/dolphin/browser/util/t;

    invoke-virtual {v0}, [Lcom/dolphin/browser/util/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/util/t;

    return-object v0
.end method
