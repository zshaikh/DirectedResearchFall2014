.class public final enum Lcom/dolphin/browser/k/l;
.super Ljava/lang/Enum;
.source "PanelMenuStateObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/k/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/k/l;

.field public static final enum b:Lcom/dolphin/browser/k/l;

.field public static final enum c:Lcom/dolphin/browser/k/l;

.field public static final enum d:Lcom/dolphin/browser/k/l;

.field private static final synthetic e:[Lcom/dolphin/browser/k/l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/dolphin/browser/k/l;

    const-string v1, "STATE_UNKNOW"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/k/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    new-instance v0, Lcom/dolphin/browser/k/l;

    const-string v1, "STATE_DISABLE"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/k/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/k/l;->b:Lcom/dolphin/browser/k/l;

    new-instance v0, Lcom/dolphin/browser/k/l;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/k/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/k/l;->c:Lcom/dolphin/browser/k/l;

    new-instance v0, Lcom/dolphin/browser/k/l;

    const-string v1, "STATE_ON"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/k/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/k/l;->d:Lcom/dolphin/browser/k/l;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dolphin/browser/k/l;

    sget-object v1, Lcom/dolphin/browser/k/l;->a:Lcom/dolphin/browser/k/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/k/l;->b:Lcom/dolphin/browser/k/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/k/l;->c:Lcom/dolphin/browser/k/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/k/l;->d:Lcom/dolphin/browser/k/l;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/k/l;->e:[Lcom/dolphin/browser/k/l;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/dolphin/browser/k/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/l;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/k/l;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dolphin/browser/k/l;->e:[Lcom/dolphin/browser/k/l;

    invoke-virtual {v0}, [Lcom/dolphin/browser/k/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/k/l;

    return-object v0
.end method
