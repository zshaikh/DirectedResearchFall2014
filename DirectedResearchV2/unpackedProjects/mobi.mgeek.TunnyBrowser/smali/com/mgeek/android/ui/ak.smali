.class public final enum Lcom/mgeek/android/ui/ak;
.super Ljava/lang/Enum;
.source "MotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mgeek/android/ui/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mgeek/android/ui/ak;

.field public static final enum b:Lcom/mgeek/android/ui/ak;

.field public static final enum c:Lcom/mgeek/android/ui/ak;

.field private static final synthetic d:[Lcom/mgeek/android/ui/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/mgeek/android/ui/ak;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/mgeek/android/ui/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    new-instance v0, Lcom/mgeek/android/ui/ak;

    const-string v1, "VIRTICAL_SCROLL"

    invoke-direct {v0, v1, v3}, Lcom/mgeek/android/ui/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ak;->b:Lcom/mgeek/android/ui/ak;

    new-instance v0, Lcom/mgeek/android/ui/ak;

    const-string v1, "HORIZONTAL_SCROLL"

    invoke-direct {v0, v1, v4}, Lcom/mgeek/android/ui/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgeek/android/ui/ak;->c:Lcom/mgeek/android/ui/ak;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mgeek/android/ui/ak;

    sget-object v1, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mgeek/android/ui/ak;->b:Lcom/mgeek/android/ui/ak;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mgeek/android/ui/ak;->c:Lcom/mgeek/android/ui/ak;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mgeek/android/ui/ak;->d:[Lcom/mgeek/android/ui/ak;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgeek/android/ui/ak;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/mgeek/android/ui/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ak;

    return-object v0
.end method

.method public static values()[Lcom/mgeek/android/ui/ak;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/mgeek/android/ui/ak;->d:[Lcom/mgeek/android/ui/ak;

    invoke-virtual {v0}, [Lcom/mgeek/android/ui/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgeek/android/ui/ak;

    return-object v0
.end method
