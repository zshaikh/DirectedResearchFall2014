.class Lcom/acmeaom/android/c/b/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/c/b/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/b/a;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/acmeaom/android/c/b/c;->a:Lcom/acmeaom/android/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/acmeaom/android/c/b/c;->a:Lcom/acmeaom/android/c/b/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/b/a;->e()V

    .line 49
    return-void
.end method
