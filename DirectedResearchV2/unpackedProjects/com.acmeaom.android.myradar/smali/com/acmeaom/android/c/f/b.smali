.class Lcom/acmeaom/android/c/f/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/c/f/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/f/a;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/acmeaom/android/c/f/b;->a:Lcom/acmeaom/android/c/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/acmeaom/android/c/f/b;->a:Lcom/acmeaom/android/c/f/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/f/a;->h()V

    .line 40
    return-void
.end method
