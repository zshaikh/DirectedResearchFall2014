.class public final enum Lcom/acmeaom/android/a/c/b;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/c/b;

.field private static final synthetic b:[Lcom/acmeaom/android/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/acmeaom/android/a/c/b;

    const-string v1, "DISPATCH_TIME_NOW"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/c/b;->a:Lcom/acmeaom/android/a/c/b;

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/acmeaom/android/a/c/b;

    sget-object v1, Lcom/acmeaom/android/a/c/b;->a:Lcom/acmeaom/android/a/c/b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/acmeaom/android/a/c/b;->b:[Lcom/acmeaom/android/a/c/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/c/b;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/acmeaom/android/a/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/c/b;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/c/b;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/acmeaom/android/a/c/b;->b:[Lcom/acmeaom/android/a/c/b;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/c/b;

    return-object v0
.end method
