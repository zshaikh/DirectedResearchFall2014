.class public final enum Lcom/acmeaom/android/a/a/c/h;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/a/c/h;

.field public static final enum b:Lcom/acmeaom/android/a/a/c/h;

.field private static final synthetic c:[Lcom/acmeaom/android/a/a/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/acmeaom/android/a/a/c/h;

    const-string v1, "kCGImageAlphaNone"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/a/c/h;->a:Lcom/acmeaom/android/a/a/c/h;

    .line 12
    new-instance v0, Lcom/acmeaom/android/a/a/c/h;

    const-string v1, "kCGImageAlphaPremultipliedLast"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/a/a/c/h;->b:Lcom/acmeaom/android/a/a/c/h;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/acmeaom/android/a/a/c/h;

    sget-object v1, Lcom/acmeaom/android/a/a/c/h;->a:Lcom/acmeaom/android/a/a/c/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/a/a/c/h;->b:Lcom/acmeaom/android/a/a/c/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/acmeaom/android/a/a/c/h;->c:[Lcom/acmeaom/android/a/a/c/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/a/c/h;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/acmeaom/android/a/a/c/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/c/h;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/a/c/h;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/acmeaom/android/a/a/c/h;->c:[Lcom/acmeaom/android/a/a/c/h;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/a/c/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/a/c/h;

    return-object v0
.end method
