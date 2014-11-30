.class Lcom/dolphin/browser/download/ui/i;
.super Ljava/lang/Object;
.source "BrowserFileManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/download/e;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;Landroid/widget/EditText;Lcom/dolphin/browser/download/e;Ljava/io/File;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/i;->e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/i;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/dolphin/browser/download/ui/i;->b:Lcom/dolphin/browser/download/e;

    iput-object p4, p0, Lcom/dolphin/browser/download/ui/i;->c:Ljava/io/File;

    iput-object p5, p0, Lcom/dolphin/browser/download/ui/i;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->f(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    .line 415
    return-void
.end method

.method private b(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/i;->e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/download/b;->g()Lcom/dolphin/browser/download/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bl;->a()Ljava/util/List;

    move-result-object v1

    .line 422
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 423
    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 424
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bl;->notifyDataSetChanged()V

    .line 425
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 378
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/i;->b:Lcom/dolphin/browser/download/e;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/e;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->b:Lcom/dolphin/browser/download/e;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/i;->e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->c(Landroid/content/Context;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/i;->e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v2}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->a(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 383
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/i;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/i;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0292

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0273

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 394
    :cond_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/ui/p;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v2, :cond_5

    .line 398
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->c:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/download/ui/i;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/ui/p;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/download/ui/p;->c:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v2, :cond_0

    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->c:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/download/ui/i;->b(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 407
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/i;->b:Lcom/dolphin/browser/download/e;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/i;->e:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->b(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
