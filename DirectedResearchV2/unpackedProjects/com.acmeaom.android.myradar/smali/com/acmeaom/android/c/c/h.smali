.class Lcom/acmeaom/android/c/c/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/c/c/f;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/c/f;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/acmeaom/android/c/c/h;->a:Lcom/acmeaom/android/c/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/acmeaom/android/c/c/h;->a:Lcom/acmeaom/android/c/c/f;

    invoke-static {v0}, Lcom/acmeaom/android/c/c/f;->a(Lcom/acmeaom/android/c/c/f;)V

    .line 80
    return-void
.end method
