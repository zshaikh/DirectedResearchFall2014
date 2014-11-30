.class public abstract Lcom/dolphin/browser/bookmarks/i;
.super Lcom/dolphin/browser/util/f;
.source "ImportBookmarksTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/bookmarks/k;

.field private c:I

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/bookmarks/k;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/bookmarks/i;->c:I

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/bookmarks/i;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/dolphin/browser/bookmarks/i;->b:Lcom/dolphin/browser/bookmarks/k;

    .line 32
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/dolphin/browser/bookmarks/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->d:Landroid/app/ProgressDialog;

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->d:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/dolphin/browser/bookmarks/i;->a:Landroid/content/Context;

    sget v2, Lcom/dolphin/browser/core/R$string;->importing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->d:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/dolphin/browser/bookmarks/j;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmarks/j;-><init>(Lcom/dolphin/browser/bookmarks/i;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->d:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->b:Lcom/dolphin/browser/bookmarks/k;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->b:Lcom/dolphin/browser/bookmarks/k;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/bookmarks/k;->a(Lcom/dolphin/browser/util/f;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/bookmarks/i;->c:I

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dolphin/browser/bookmarks/i;->a:Landroid/content/Context;

    sget v2, Lcom/dolphin/browser/core/R$string;->import_n_bookmarks:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->b:Lcom/dolphin/browser/bookmarks/k;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->b:Lcom/dolphin/browser/bookmarks/k;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/dolphin/browser/bookmarks/k;->a(Lcom/dolphin/browser/util/f;I)V

    .line 75
    :cond_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmarks/i;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->b:Lcom/dolphin/browser/bookmarks/k;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/i;->b:Lcom/dolphin/browser/bookmarks/k;

    iget v1, p0, Lcom/dolphin/browser/bookmarks/i;->c:I

    invoke-interface {v0, p0, v1}, Lcom/dolphin/browser/bookmarks/k;->a(Lcom/dolphin/browser/util/f;I)V

    .line 84
    :cond_0
    return-void
.end method
