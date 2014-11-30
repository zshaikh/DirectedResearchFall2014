.class Lcom/acmeaom/android/a/f/x;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/acmeaom/android/a/f/w;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/f/w;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/acmeaom/android/a/f/x;->b:Lcom/acmeaom/android/a/f/w;

    iput-object p2, p0, Lcom/acmeaom/android/a/f/x;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/acmeaom/android/a/f/x;->b:Lcom/acmeaom/android/a/f/w;

    iget-object v0, v0, Lcom/acmeaom/android/a/f/w;->a:Lcom/acmeaom/android/a/f/y;

    iget-object v1, p0, Lcom/acmeaom/android/a/f/x;->b:Lcom/acmeaom/android/a/f/w;

    iget-object v2, p0, Lcom/acmeaom/android/a/f/x;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/acmeaom/android/a/f/y;->a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V

    .line 192
    return-void
.end method
