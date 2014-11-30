.class final Lcom/dolphin/browser/util/av;
.super Lcom/dolphin/browser/addons/bg;
.source "DolphinUIUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/dolphin/browser/addons/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->n()V

    .line 218
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->d()V

    .line 219
    return-void
.end method

.method public a(Lcom/dolphin/browser/addons/AlertDialogBuilder;)V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->n()V

    .line 199
    new-instance v0, Lcom/dolphin/browser/util/aw;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/util/aw;-><init>(Lcom/dolphin/browser/util/av;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.TITLE_BAR_ACTION"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->m()Lcom/dolphin/browser/extensions/bd;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->u()V

    .line 228
    :cond_0
    return-void
.end method
