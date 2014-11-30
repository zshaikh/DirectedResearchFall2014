.class public final enum Lcom/dolphin/browser/util/Tracker$Priority;
.super Ljava/lang/Enum;
.source "Tracker.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/util/Tracker$Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Critical:Lcom/dolphin/browser/util/Tracker$Priority;

.field public static final enum Normal:Lcom/dolphin/browser/util/Tracker$Priority;

.field private static final synthetic a:[Lcom/dolphin/browser/util/Tracker$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1415
    new-instance v0, Lcom/dolphin/browser/util/Tracker$Priority;

    const-string v1, "Critical"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    .line 1416
    new-instance v0, Lcom/dolphin/browser/util/Tracker$Priority;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/util/Tracker$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    .line 1413
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolphin/browser/util/Tracker$Priority;

    sget-object v1, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/util/Tracker$Priority;->a:[Lcom/dolphin/browser/util/Tracker$Priority;

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
    .line 1414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/util/Tracker$Priority;
    .locals 1

    .prologue
    .line 1413
    const-class v0, Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/Tracker$Priority;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/util/Tracker$Priority;
    .locals 1

    .prologue
    .line 1413
    sget-object v0, Lcom/dolphin/browser/util/Tracker$Priority;->a:[Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-virtual {v0}, [Lcom/dolphin/browser/util/Tracker$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/util/Tracker$Priority;

    return-object v0
.end method
