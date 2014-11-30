.class Lcom/dolphin/browser/bookmark/au;
.super Lcom/dolphin/browser/util/f;
.source "BookmarkHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/dolphin/browser/bookmark/at;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/au;->b:Lcom/dolphin/browser/bookmark/at;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/au;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/au;->b:Lcom/dolphin/browser/bookmark/at;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/au;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/at;->a(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/au;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/au;->b:Lcom/dolphin/browser/bookmark/at;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/at;->a(Lcom/dolphin/browser/bookmark/at;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/au;->b:Lcom/dolphin/browser/bookmark/at;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/at;->b(Lcom/dolphin/browser/bookmark/at;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 108
    iput-object v0, p0, Lcom/dolphin/browser/bookmark/au;->c:Landroid/app/ProgressDialog;

    .line 109
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/au;->c:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/au;->b:Lcom/dolphin/browser/bookmark/at;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/at;->b(Lcom/dolphin/browser/bookmark/at;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00b9

    :goto_0
    invoke-static {v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 122
    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00b8

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/au;->a(Ljava/lang/Boolean;)V

    return-void
.end method
