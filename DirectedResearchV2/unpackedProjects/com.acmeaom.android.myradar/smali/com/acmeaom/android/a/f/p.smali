.class Lcom/acmeaom/android/a/f/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/a/b/i;

.field final synthetic b:Lcom/acmeaom/android/a/f/o;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/f/o;Lcom/acmeaom/android/a/a/b/i;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/acmeaom/android/a/f/p;->b:Lcom/acmeaom/android/a/f/o;

    iput-object p2, p0, Lcom/acmeaom/android/a/f/p;->a:Lcom/acmeaom/android/a/a/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/acmeaom/android/a/f/p;->b:Lcom/acmeaom/android/a/f/o;

    iget-object v0, v0, Lcom/acmeaom/android/a/f/o;->a:Lcom/acmeaom/android/a/f/y;

    iget-object v1, p0, Lcom/acmeaom/android/a/f/p;->b:Lcom/acmeaom/android/a/f/o;

    iget-object v2, p0, Lcom/acmeaom/android/a/f/p;->a:Lcom/acmeaom/android/a/a/b/i;

    invoke-interface {v0, v1, v2}, Lcom/acmeaom/android/a/f/y;->a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V

    .line 60
    return-void
.end method
