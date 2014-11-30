.class Lcom/dolphin/browser/sidebar/r;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Lcom/dolphin/browser/sync/d;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/r;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/r;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0, p1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/r;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/i;->f(Lcom/dolphin/browser/sidebar/i;)V

    .line 498
    return-void
.end method
