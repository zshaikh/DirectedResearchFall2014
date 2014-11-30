.class Lcom/dolphin/browser/bookmark/u;
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
    .line 1101
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/u;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/u;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/u;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1107
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/u;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->d()I

    move-result v1

    .line 1108
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/u;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/u;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v3}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->h(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)J

    move-result-wide v3

    invoke-static {v2, v0, v3, v4, v1}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;JI)I

    move-result v0

    .line 1111
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/u;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01ec

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 1116
    :cond_0
    return-void
.end method
