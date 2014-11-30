.class Lcom/dolphin/browser/bookmark/ab;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ab;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/ab;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ab;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1559
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1561
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ab;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->q(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/al;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ab;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    new-instance v2, Lcom/dolphin/browser/bookmark/al;

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/ab;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {v2, v3}, Lcom/dolphin/browser/bookmark/al;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/al;)Lcom/dolphin/browser/bookmark/al;

    .line 1565
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ab;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->q(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/al;->a(Ljava/lang/String;)V

    .line 1571
    :goto_0
    return-void

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ab;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00a1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
