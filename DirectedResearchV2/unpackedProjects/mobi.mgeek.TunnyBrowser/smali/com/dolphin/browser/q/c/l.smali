.class Lcom/dolphin/browser/q/c/l;
.super Ljava/lang/Object;
.source "FacebookManager.java"

# interfaces
.implements Lcom/facebook/dolphin/SessionEvents$AuthListener;
.implements Lcom/facebook/dolphin/SessionEvents$LogoutListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/c/b;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/q/c/b;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dolphin/browser/q/c/l;->a:Lcom/dolphin/browser/q/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/c;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/c/l;-><init>(Lcom/dolphin/browser/q/c/b;)V

    return-void
.end method


# virtual methods
.method public onAuthFail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onAuthSucceed()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/q/c/l;->a:Lcom/dolphin/browser/q/c/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/c/b;->a(Lcom/dolphin/browser/q/c/b;)Lcom/facebook/dolphin/Facebook;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/dolphin/SessionStore;->save(Lcom/facebook/dolphin/Facebook;Landroid/content/Context;)Z

    .line 138
    return-void
.end method

.method public onLogoutBegin()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onLogoutFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/SessionStore;->clear(Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/q/c/l;->a:Lcom/dolphin/browser/q/c/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->b()V

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/q/c/l;->a:Lcom/dolphin/browser/q/c/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/c/b;->b(Lcom/dolphin/browser/q/c/b;)Lcom/dolphin/browser/q/c/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/s;->a(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/q/c/l;->a:Lcom/dolphin/browser/q/c/b;

    invoke-static {v0}, Lcom/dolphin/browser/q/c/b;->b(Lcom/dolphin/browser/q/c/b;)Lcom/dolphin/browser/q/c/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/s;->b(Ljava/lang/String;)V

    .line 154
    return-void
.end method
