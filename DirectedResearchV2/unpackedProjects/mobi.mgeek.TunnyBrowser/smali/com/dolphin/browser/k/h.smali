.class public final enum Lcom/dolphin/browser/k/h;
.super Ljava/lang/Enum;
.source "MenuBarStateObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/k/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/k/h;

.field public static final enum b:Lcom/dolphin/browser/k/h;

.field public static final enum c:Lcom/dolphin/browser/k/h;

.field public static final enum d:Lcom/dolphin/browser/k/h;

.field public static final enum e:Lcom/dolphin/browser/k/h;

.field private static final synthetic f:[Lcom/dolphin/browser/k/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/dolphin/browser/k/h;

    const-string v1, "STATE_UNKNOW"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/k/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    new-instance v0, Lcom/dolphin/browser/k/h;

    const-string v1, "STATE_ENABLE"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/k/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/k/h;->b:Lcom/dolphin/browser/k/h;

    new-instance v0, Lcom/dolphin/browser/k/h;

    const-string v1, "STATE_DISABLE"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/k/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/k/h;->c:Lcom/dolphin/browser/k/h;

    new-instance v0, Lcom/dolphin/browser/k/h;

    const-string v1, "STATE_VISIABLE"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/k/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/k/h;->d:Lcom/dolphin/browser/k/h;

    new-instance v0, Lcom/dolphin/browser/k/h;

    const-string v1, "STATE_GONE"

    invoke-direct {v0, v1, v6}, Lcom/dolphin/browser/k/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/k/h;->e:Lcom/dolphin/browser/k/h;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dolphin/browser/k/h;

    sget-object v1, Lcom/dolphin/browser/k/h;->a:Lcom/dolphin/browser/k/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/k/h;->b:Lcom/dolphin/browser/k/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/k/h;->c:Lcom/dolphin/browser/k/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/k/h;->d:Lcom/dolphin/browser/k/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dolphin/browser/k/h;->e:Lcom/dolphin/browser/k/h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/k/h;->f:[Lcom/dolphin/browser/k/h;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/k/h;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/dolphin/browser/k/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/h;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/k/h;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dolphin/browser/k/h;->f:[Lcom/dolphin/browser/k/h;

    invoke-virtual {v0}, [Lcom/dolphin/browser/k/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/k/h;

    return-object v0
.end method
