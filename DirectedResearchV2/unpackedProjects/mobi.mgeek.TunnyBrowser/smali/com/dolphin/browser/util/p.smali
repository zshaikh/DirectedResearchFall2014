.class public final enum Lcom/dolphin/browser/util/p;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/util/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/util/p;

.field public static final enum b:Lcom/dolphin/browser/util/p;

.field public static final enum c:Lcom/dolphin/browser/util/p;

.field private static final synthetic d:[Lcom/dolphin/browser/util/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 310
    new-instance v0, Lcom/dolphin/browser/util/p;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/util/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/util/p;->a:Lcom/dolphin/browser/util/p;

    .line 314
    new-instance v0, Lcom/dolphin/browser/util/p;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/util/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/util/p;->b:Lcom/dolphin/browser/util/p;

    .line 318
    new-instance v0, Lcom/dolphin/browser/util/p;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/util/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    .line 306
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dolphin/browser/util/p;

    sget-object v1, Lcom/dolphin/browser/util/p;->a:Lcom/dolphin/browser/util/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/util/p;->b:Lcom/dolphin/browser/util/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/util/p;->d:[Lcom/dolphin/browser/util/p;

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
    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/util/p;
    .locals 1

    .prologue
    .line 306
    const-class v0, Lcom/dolphin/browser/util/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/p;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/util/p;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/dolphin/browser/util/p;->d:[Lcom/dolphin/browser/util/p;

    invoke-virtual {v0}, [Lcom/dolphin/browser/util/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/util/p;

    return-object v0
.end method
