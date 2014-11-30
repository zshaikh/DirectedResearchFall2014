.class public final enum Lcom/acmeaom/android/b/e/a/g;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/acmeaom/android/b/e/a/g;

.field public static final enum b:Lcom/acmeaom/android/b/e/a/g;

.field private static final synthetic d:[Lcom/acmeaom/android/b/e/a/g;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/acmeaom/android/b/e/a/g;

    const-string v1, "eGeoJSONIndexLongitude"

    invoke-direct {v0, v1, v2, v2}, Lcom/acmeaom/android/b/e/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/acmeaom/android/b/e/a/g;->a:Lcom/acmeaom/android/b/e/a/g;

    .line 30
    new-instance v0, Lcom/acmeaom/android/b/e/a/g;

    const-string v1, "eGeoJSONIndexLatitude"

    invoke-direct {v0, v1, v3, v3}, Lcom/acmeaom/android/b/e/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/acmeaom/android/b/e/a/g;->b:Lcom/acmeaom/android/b/e/a/g;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/acmeaom/android/b/e/a/g;

    sget-object v1, Lcom/acmeaom/android/b/e/a/g;->a:Lcom/acmeaom/android/b/e/a/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acmeaom/android/b/e/a/g;->b:Lcom/acmeaom/android/b/e/a/g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/acmeaom/android/b/e/a/g;->d:[Lcom/acmeaom/android/b/e/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/acmeaom/android/b/e/a/g;->c:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acmeaom/android/b/e/a/g;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/acmeaom/android/b/e/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/e/a/g;

    return-object v0
.end method

.method public static values()[Lcom/acmeaom/android/b/e/a/g;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/acmeaom/android/b/e/a/g;->d:[Lcom/acmeaom/android/b/e/a/g;

    invoke-virtual {v0}, [Lcom/acmeaom/android/b/e/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/b/e/a/g;

    return-object v0
.end method
