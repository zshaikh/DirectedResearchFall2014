.class Lcom/dolphin/browser/util/dl;
.super Lcom/dolphin/browser/util/f;
.source "UninstallWatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dolphin/browser/util/dk;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/util/dk;Z)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dolphin/browser/util/dl;->b:Lcom/dolphin/browser/util/dk;

    iput-boolean p2, p0, Lcom/dolphin/browser/util/dl;->a:Z

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/dl;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/dolphin/browser/util/dl;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v2

    .line 110
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/dk;->j()V

    .line 111
    invoke-virtual {p0}, Lcom/dolphin/browser/util/dl;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/util/dl;->b:Lcom/dolphin/browser/util/dk;

    invoke-static {v1}, Lcom/dolphin/browser/util/dk;->a(Lcom/dolphin/browser/util/dk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/dk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/dolphin/browser/util/dl;->a:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/util/dl;->b:Lcom/dolphin/browser/util/dk;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/dk;->e()V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/dl;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/util/dl;->b:Lcom/dolphin/browser/util/dk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/dk;->a(Lcom/dolphin/browser/util/dk;Lcom/dolphin/browser/util/f;)Lcom/dolphin/browser/util/f;

    .line 127
    return-void
.end method
