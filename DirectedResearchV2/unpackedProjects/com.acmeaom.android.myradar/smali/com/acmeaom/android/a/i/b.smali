.class public final enum Lcom/acmeaom/android/a/i/b;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/i/b;

.field private static final synthetic b:[Lcom/acmeaom/android/a/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/acmeaom/android/a/i/b;

    const-string v1, "GLKViewDrawableDepthFormat24"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/i/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/i/b;->a:Lcom/acmeaom/android/a/i/b;

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/acmeaom/android/a/i/b;

    sget-object v1, Lcom/acmeaom/android/a/i/b;->a:Lcom/acmeaom/android/a/i/b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/acmeaom/android/a/i/b;->b:[Lcom/acmeaom/android/a/i/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/i/b;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/acmeaom/android/a/i/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/i/b;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/i/b;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/acmeaom/android/a/i/b;->b:[Lcom/acmeaom/android/a/i/b;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/i/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/i/b;

    return-object v0
.end method
