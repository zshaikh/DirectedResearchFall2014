.class Lcom/dolphin/browser/bookmark/bg;
.super Ljava/lang/Object;
.source "BookmarkMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/bookmark/be;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/be;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bg;->b:Lcom/dolphin/browser/bookmark/be;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/bg;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bg;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bg;->b:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/be;->c(Lcom/dolphin/browser/bookmark/be;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bg;->b:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/be;->a(Lcom/dolphin/browser/bookmark/be;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/bg;->b:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v2}, Lcom/dolphin/browser/bookmark/be;->b(Lcom/dolphin/browser/bookmark/be;)J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JLjava/lang/String;)I

    move-result v0

    .line 279
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bg;->b:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/be;->a(Lcom/dolphin/browser/bookmark/be;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01ec

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
