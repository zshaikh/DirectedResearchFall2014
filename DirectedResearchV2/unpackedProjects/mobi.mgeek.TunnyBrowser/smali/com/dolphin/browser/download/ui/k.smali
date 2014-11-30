.class Lcom/dolphin/browser/download/ui/k;
.super Ljava/lang/Object;
.source "BrowserFileManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;ZLjava/io/File;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/k;->c:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    iput-boolean p2, p0, Lcom/dolphin/browser/download/ui/k;->a:Z

    iput-object p3, p0, Lcom/dolphin/browser/download/ui/k;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->c:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/download/b;->g()Lcom/dolphin/browser/download/a;

    move-result-object v0

    .line 515
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/k;->a(Lcom/dolphin/browser/download/a;)V

    .line 516
    return-void
.end method

.method private a(Lcom/dolphin/browser/download/a;)V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->c:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/download/m;->a()Lcom/dolphin/browser/download/ui/bn;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bn;->a()Ljava/util/List;

    move-result-object v1

    .line 534
    invoke-static {v1, p1}, Lcom/dolphin/browser/download/e;->a(Ljava/util/List;Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/b;

    move-result-object v1

    .line 535
    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v1}, Lcom/dolphin/browser/download/b;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/download/b;->a(I)V

    .line 537
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bn;->notifyDataSetChanged()V

    .line 539
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->c:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->f(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)V

    .line 510
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->c:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/m;->a(Landroid/content/Context;)Lcom/dolphin/browser/download/m;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/k;->c:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->g(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/download/b;->g()Lcom/dolphin/browser/download/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/m;->a(Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/ui/bl;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bl;->a()Ljava/util/List;

    move-result-object v1

    .line 523
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 524
    if-ltz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 525
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 527
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bl;->notifyDataSetChanged()V

    .line 528
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/dolphin/browser/download/ui/k;->a:Z

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->c:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/ui/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v1, :cond_2

    .line 498
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/k;->a(Ljava/io/File;)V

    .line 505
    :cond_0
    :goto_1
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->c:Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;->e(Lcom/dolphin/browser/download/ui/BrowserFileManagerActivity;)Lcom/dolphin/browser/download/ui/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->c:Lcom/dolphin/browser/download/ui/p;

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/k;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/k;->b(Ljava/io/File;)V

    .line 502
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/k;->a()V

    goto :goto_1
.end method
