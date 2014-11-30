.class public Lcom/acmeaom/android/a/a/b/af;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/acmeaom/android/a/a/b/af;->b:I

    iput v0, p0, Lcom/acmeaom/android/a/a/b/af;->a:I

    .line 12
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/acmeaom/android/a/a/b/af;->a:I

    iput p2, p0, Lcom/acmeaom/android/a/a/b/af;->b:I

    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/acmeaom/android/a/a/b/af;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/acmeaom/android/a/a/b/af;->b:I

    return v0
.end method
