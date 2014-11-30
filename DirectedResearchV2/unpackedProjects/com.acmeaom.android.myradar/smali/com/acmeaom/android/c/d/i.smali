.class synthetic Lcom/acmeaom/android/c/d/i;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Lcom/acmeaom/android/a/i/p;->values()[Lcom/acmeaom/android/a/i/p;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/acmeaom/android/c/d/i;->a:[I

    :try_start_0
    sget-object v0, Lcom/acmeaom/android/c/d/i;->a:[I

    sget-object v1, Lcom/acmeaom/android/a/i/p;->b:Lcom/acmeaom/android/a/i/p;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/p;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/acmeaom/android/c/d/i;->a:[I

    sget-object v1, Lcom/acmeaom/android/a/i/p;->a:Lcom/acmeaom/android/a/i/p;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/p;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
