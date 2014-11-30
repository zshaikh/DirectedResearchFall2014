.class public final enum Lcom/mgeek/android/ui/ac;
.super Ljava/lang/Enum;
.source "IFullscreenController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mgeek/android/ui/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mgeek/android/ui/ac;

.field public static final enum b:Lcom/mgeek/android/ui/ac;

.field public static final enum c:Lcom/mgeek/android/ui/ac;

.field private static final synthetic d:[Lcom/mgeek/android/ui/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/mgeek/android/ui/ac;

    const-string v1, "FULL_SCREEN_VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/mgeek/android/ui/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ac;->a:Lcom/mgeek/android/ui/ac;

    .line 36
    new-instance v0, Lcom/mgeek/android/ui/ac;

    const-string v1, "FULL_SCREEN_INVISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/mgeek/android/ui/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ac;->b:Lcom/mgeek/android/ui/ac;

    .line 37
    new-instance v0, Lcom/mgeek/android/ui/ac;

    const-string v1, "NONE_FULL_SCREEN"

    invoke-direct {v0, v1, v4}, Lcom/mgeek/android/ui/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ac;->c:Lcom/mgeek/android/ui/ac;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mgeek/android/ui/ac;

    sget-object v1, Lcom/mgeek/android/ui/ac;->a:Lcom/mgeek/android/ui/ac;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mgeek/android/ui/ac;->b:Lcom/mgeek/android/ui/ac;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mgeek/android/ui/ac;->c:Lcom/mgeek/android/ui/ac;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mgeek/android/ui/ac;->d:[Lcom/mgeek/android/ui/ac;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgeek/android/ui/ac;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/mgeek/android/ui/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ac;

    return-object v0
.end method

.method public static values()[Lcom/mgeek/android/ui/ac;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mgeek/android/ui/ac;->d:[Lcom/mgeek/android/ui/ac;

    invoke-virtual {v0}, [Lcom/mgeek/android/ui/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgeek/android/ui/ac;

    return-object v0
.end method
