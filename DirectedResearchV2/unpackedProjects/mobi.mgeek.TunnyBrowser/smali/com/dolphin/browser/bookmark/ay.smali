.class Lcom/dolphin/browser/bookmark/ay;
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

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/dolphin/browser/bookmark/at;

.field private e:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;JJ)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ay;->d:Lcom/dolphin/browser/bookmark/at;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/ay;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/dolphin/browser/bookmark/ay;->b:J

    iput-wide p5, p0, Lcom/dolphin/browser/bookmark/ay;->c:J

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 334
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ay;->d:Lcom/dolphin/browser/bookmark/at;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ay;->a:Ljava/util/List;

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/ay;->b:J

    iget-wide v4, p0, Lcom/dolphin/browser/bookmark/ay;->c:J

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/at;->b(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;JJ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 319
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/ay;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ay;->d:Lcom/dolphin/browser/bookmark/at;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/at;->a(Lcom/dolphin/browser/bookmark/at;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ay;->d:Lcom/dolphin/browser/bookmark/at;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/at;->b(Lcom/dolphin/browser/bookmark/at;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 328
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 329
    iput-object v0, p0, Lcom/dolphin/browser/bookmark/ay;->e:Landroid/app/ProgressDialog;

    .line 330
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ay;->e:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ay;->d:Lcom/dolphin/browser/bookmark/at;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/at;->b(Lcom/dolphin/browser/bookmark/at;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00c1

    :goto_0
    invoke-static {v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 343
    return-void

    .line 340
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00c0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 319
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/ay;->a(Ljava/lang/Boolean;)V

    return-void
.end method
