.class public abstract Lcom/dolphin/browser/DolphinService/a;
.super Ljava/lang/Object;
.source "AccountTokenRequester.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/accounts/Account;

.field protected final b:Lcom/dolphin/browser/DolphinService/b;

.field private c:Landroid/app/Activity;

.field private final d:Landroid/os/HandlerThread;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/dolphin/browser/DolphinService/b;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/DolphinService/a;->e:Z

    .line 28
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/a;->a:Landroid/accounts/Account;

    .line 29
    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/a;->b:Lcom/dolphin/browser/DolphinService/b;

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "accoutThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/a;->d:Landroid/os/HandlerThread;

    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 7

    .prologue
    .line 42
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/a;->c:Landroid/app/Activity;

    .line 43
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/a;->a:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v6, Landroid/os/Handler;

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 47
    return-void
.end method

.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 57
    const-string v2, "authtoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 58
    :try_start_1
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/a;->b:Lcom/dolphin/browser/DolphinService/b;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/a;->b:Lcom/dolphin/browser/DolphinService/b;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/a;->a:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/dolphin/browser/DolphinService/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/a;->b:Lcom/dolphin/browser/DolphinService/b;

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/dolphin/browser/DolphinService/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 64
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/a;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/dolphin/browser/DolphinService/a;->e:Z

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/DolphinService/a;->e:Z

    .line 66
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/a;->c:Landroid/app/Activity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/a;->c:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 69
    :catch_2
    move-exception v0

    .line 70
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/a;->b:Lcom/dolphin/browser/DolphinService/b;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/dolphin/browser/DolphinService/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :catch_3
    move-exception v1

    goto :goto_1
.end method
