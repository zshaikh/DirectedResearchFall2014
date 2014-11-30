.class public final enum Lcom/dolphin/browser/util/cl;
.super Ljava/lang/Enum;
.source "StorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/util/cl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/util/cl;

.field public static final enum b:Lcom/dolphin/browser/util/cl;

.field private static final synthetic c:[Lcom/dolphin/browser/util/cl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    new-instance v0, Lcom/dolphin/browser/util/cl;

    const-string v1, "Low"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/util/cl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/util/cl;->a:Lcom/dolphin/browser/util/cl;

    .line 282
    new-instance v0, Lcom/dolphin/browser/util/cl;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/util/cl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/util/cl;->b:Lcom/dolphin/browser/util/cl;

    .line 272
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolphin/browser/util/cl;

    sget-object v1, Lcom/dolphin/browser/util/cl;->a:Lcom/dolphin/browser/util/cl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/util/cl;->b:Lcom/dolphin/browser/util/cl;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/util/cl;->c:[Lcom/dolphin/browser/util/cl;

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
    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/util/cl;
    .locals 1

    .prologue
    .line 272
    const-class v0, Lcom/dolphin/browser/util/cl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/cl;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/util/cl;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/dolphin/browser/util/cl;->c:[Lcom/dolphin/browser/util/cl;

    invoke-virtual {v0}, [Lcom/dolphin/browser/util/cl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/util/cl;

    return-object v0
.end method
