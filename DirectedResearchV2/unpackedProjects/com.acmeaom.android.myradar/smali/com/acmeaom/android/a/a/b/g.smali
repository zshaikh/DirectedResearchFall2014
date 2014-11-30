.class public final enum Lcom/acmeaom/android/a/a/b/g;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/a/a/b/g;

.field private static final synthetic c:[Lcom/acmeaom/android/a/a/b/g;


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/acmeaom/android/a/a/b/g;

    const-string v1, "whitespaceAndNewlineCharacterSet"

    const-string v2, "[\\s]"

    invoke-direct {v0, v1, v3, v2}, Lcom/acmeaom/android/a/a/b/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/acmeaom/android/a/a/b/g;->a:Lcom/acmeaom/android/a/a/b/g;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/acmeaom/android/a/a/b/g;

    sget-object v1, Lcom/acmeaom/android/a/a/b/g;->a:Lcom/acmeaom/android/a/a/b/g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/acmeaom/android/a/a/b/g;->c:[Lcom/acmeaom/android/a/a/b/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/acmeaom/android/a/a/b/g;->b:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/a/a/b/g;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/acmeaom/android/a/a/b/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/g;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/a/a/b/g;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/acmeaom/android/a/a/b/g;->c:[Lcom/acmeaom/android/a/a/b/g;

    invoke-virtual {v0}, [Lcom/acmeaom/android/a/a/b/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/a/a/b/g;

    return-object v0
.end method
