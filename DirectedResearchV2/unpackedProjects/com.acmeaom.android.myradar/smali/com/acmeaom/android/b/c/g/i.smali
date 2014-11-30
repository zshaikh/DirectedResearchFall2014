.class Lcom/acmeaom/android/b/c/g/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/b/c/g/h;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/b/c/g/h;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/acmeaom/android/b/c/g/i;->a:Lcom/acmeaom/android/b/c/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/i;->a:Lcom/acmeaom/android/b/c/g/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/h;->r()V

    .line 72
    return-void
.end method
