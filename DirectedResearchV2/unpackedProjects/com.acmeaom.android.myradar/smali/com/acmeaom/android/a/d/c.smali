.class public Lcom/acmeaom/android/a/d/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Lcom/acmeaom/android/a/d/f;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/d/f;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/acmeaom/android/a/d/c;->a:Lcom/acmeaom/android/a/d/f;

    .line 10
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/acmeaom/android/a/d/c;->a:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/d/f;->setZoom(F)V

    .line 22
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/d/a;)V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/acmeaom/android/a/d/c;->a:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/d/f;->setMapCenter(Lcom/acmeaom/android/a/d/a;)V

    .line 14
    return-void
.end method

.method public b(Lcom/acmeaom/android/a/d/a;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/a/d/c;->a(Lcom/acmeaom/android/a/d/a;)V

    .line 30
    return-void
.end method
