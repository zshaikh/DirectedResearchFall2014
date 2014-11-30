.class public final enum Lcom/acmeaom/android/a/i/g;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/i/g;

.field private static final synthetic b:[Lcom/acmeaom/android/a/i/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/acmeaom/android/a/i/g;

    const-string v1, "UI_GESTURE_RECOGNIZER_STATE_ENDED"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/i/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/i/g;->a:Lcom/acmeaom/android/a/i/g;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/acmeaom/android/a/i/g;

    sget-object v1, Lcom/acmeaom/android/a/i/g;->a:Lcom/acmeaom/android/a/i/g;

    aput-object v1, v0, v2

    sput-object v0, Lcom/acmeaom/android/a/i/g;->b:[Lcom/acmeaom/android/a/i/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/i/g;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/acmeaom/android/a/i/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/i/g;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/i/g;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/acmeaom/android/a/i/g;->b:[Lcom/acmeaom/android/a/i/g;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/i/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/i/g;

    return-object v0
.end method
