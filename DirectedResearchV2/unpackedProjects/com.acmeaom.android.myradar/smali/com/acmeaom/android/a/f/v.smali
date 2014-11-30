.class Lcom/acmeaom/android/a/f/v;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/acmeaom/android/a/f/t;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/f/t;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/acmeaom/android/a/f/v;->b:Lcom/acmeaom/android/a/f/t;

    iput-object p2, p0, Lcom/acmeaom/android/a/f/v;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/acmeaom/android/a/f/v;->b:Lcom/acmeaom/android/a/f/t;

    iget-object v0, v0, Lcom/acmeaom/android/a/f/t;->a:Lcom/acmeaom/android/a/f/y;

    iget-object v1, p0, Lcom/acmeaom/android/a/f/v;->b:Lcom/acmeaom/android/a/f/t;

    iget-object v2, p0, Lcom/acmeaom/android/a/f/v;->a:Ljava/lang/Object;

    invoke-static {v2}, Lcom/acmeaom/android/a/j/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/acmeaom/android/a/f/y;->a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V

    .line 174
    return-void
.end method
