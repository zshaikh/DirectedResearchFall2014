.class Lcom/dolphin/browser/sync/am;
.super Ljava/lang/Object;
.source "SyncContoller.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/Account/l;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sync/al;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sync/al;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/dolphin/browser/sync/am;->a:Lcom/dolphin/browser/sync/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/DolphinService/Account/a;)V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/dolphin/browser/DolphinService/Account/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/am;->a(Z)V

    .line 33
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/DolphinService/Account/a;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/sync/am;->a(Z)V

    .line 19
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ad;->l()V

    .line 39
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->l()V

    .line 40
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->m()V

    .line 41
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->l()V

    .line 42
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->m()V

    .line 43
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->l()V

    .line 45
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/aq;->b()V

    .line 49
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->m()V

    .line 26
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->m()V

    .line 27
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->m()V

    .line 28
    return-void
.end method
