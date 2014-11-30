.class Lcom/acmeaom/android/c/g/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/c/g/b;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/c/g/b;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/acmeaom/android/c/g/c;->a:Lcom/acmeaom/android/c/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/acmeaom/android/c/g/c;->a:Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/g/b;->n()V

    .line 168
    return-void
.end method
