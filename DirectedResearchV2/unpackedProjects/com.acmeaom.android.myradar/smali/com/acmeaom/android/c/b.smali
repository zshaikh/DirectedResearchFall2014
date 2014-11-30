.class public final enum Lcom/acmeaom/android/c/b;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/c/b;

.field public static final enum b:Lcom/acmeaom/android/c/b;

.field private static final synthetic c:[Lcom/acmeaom/android/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/acmeaom/android/c/b;

    const-string v1, "FWFilterDefault"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/b;->a:Lcom/acmeaom/android/c/b;

    .line 30
    new-instance v0, Lcom/acmeaom/android/c/b;

    const-string v1, "FWFilterText"

    invoke-direct {v0, v1, v3}, Lcom/acmeaom/android/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acmeaom/android/c/b;->b:Lcom/acmeaom/android/c/b;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/acmeaom/android/c/b;

    sget-object v1, Lcom/acmeaom/android/c/b;->a:Lcom/acmeaom/android/c/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/c/b;->b:Lcom/acmeaom/android/c/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/acmeaom/android/c/b;->c:[Lcom/acmeaom/android/c/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/c/b;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/acmeaom/android/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/b;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/c/b;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/acmeaom/android/c/b;->c:[Lcom/acmeaom/android/c/b;

    invoke-virtual {v0}, [Lcom/acmeaom/android/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/c/b;

    return-object v0
.end method
