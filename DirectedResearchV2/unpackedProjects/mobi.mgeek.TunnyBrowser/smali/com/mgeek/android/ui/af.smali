.class Lcom/mgeek/android/ui/af;
.super Ljava/lang/Object;
.source "MainScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/MainScreen;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/MainScreen;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mgeek/android/ui/af;->a:Lcom/mgeek/android/ui/MainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mgeek/android/ui/af;->a:Lcom/mgeek/android/ui/MainScreen;

    invoke-static {v0}, Lcom/mgeek/android/ui/MainScreen;->c(Lcom/mgeek/android/ui/MainScreen;)Lcom/mgeek/android/ui/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mgeek/android/ui/af;->a:Lcom/mgeek/android/ui/MainScreen;

    invoke-static {v0}, Lcom/mgeek/android/ui/MainScreen;->c(Lcom/mgeek/android/ui/MainScreen;)Lcom/mgeek/android/ui/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgeek/android/ui/ag;->c()V

    .line 207
    :cond_0
    return-void
.end method
