.class public final enum Lcom/mgeek/android/ui/ad;
.super Ljava/lang/Enum;
.source "IFullscreenController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mgeek/android/ui/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mgeek/android/ui/ad;

.field public static final enum b:Lcom/mgeek/android/ui/ad;

.field public static final enum c:Lcom/mgeek/android/ui/ad;

.field public static final enum d:Lcom/mgeek/android/ui/ad;

.field private static final synthetic e:[Lcom/mgeek/android/ui/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/mgeek/android/ui/ad;

    const-string v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v2}, Lcom/mgeek/android/ui/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ad;->a:Lcom/mgeek/android/ui/ad;

    .line 29
    new-instance v0, Lcom/mgeek/android/ui/ad;

    const-string v1, "RIGHT_BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/mgeek/android/ui/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ad;->b:Lcom/mgeek/android/ui/ad;

    .line 30
    new-instance v0, Lcom/mgeek/android/ui/ad;

    const-string v1, "RIGHT_CENTER"

    invoke-direct {v0, v1, v4}, Lcom/mgeek/android/ui/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ad;->c:Lcom/mgeek/android/ui/ad;

    .line 31
    new-instance v0, Lcom/mgeek/android/ui/ad;

    const-string v1, "LEFT_CENTER"

    invoke-direct {v0, v1, v5}, Lcom/mgeek/android/ui/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ad;->d:Lcom/mgeek/android/ui/ad;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mgeek/android/ui/ad;

    sget-object v1, Lcom/mgeek/android/ui/ad;->a:Lcom/mgeek/android/ui/ad;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mgeek/android/ui/ad;->b:Lcom/mgeek/android/ui/ad;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mgeek/android/ui/ad;->c:Lcom/mgeek/android/ui/ad;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mgeek/android/ui/ad;->d:Lcom/mgeek/android/ui/ad;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mgeek/android/ui/ad;->e:[Lcom/mgeek/android/ui/ad;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgeek/android/ui/ad;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/mgeek/android/ui/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ad;

    return-object v0
.end method

.method public static values()[Lcom/mgeek/android/ui/ad;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mgeek/android/ui/ad;->e:[Lcom/mgeek/android/ui/ad;

    invoke-virtual {v0}, [Lcom/mgeek/android/ui/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgeek/android/ui/ad;

    return-object v0
.end method
