.class Lmobi/mgeek/TunnyBrowser/f;
.super Ljava/lang/Object;
.source "AddSpeedDail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/AddSpeedDail;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/f;->a:Lmobi/mgeek/TunnyBrowser/AddSpeedDail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const v6, 0x7f0e0225

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/f;->a:Lmobi/mgeek/TunnyBrowser/AddSpeedDail;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->a(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 47
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/f;->a:Lmobi/mgeek/TunnyBrowser/AddSpeedDail;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->b(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 49
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 50
    :goto_1
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/f;->a:Lmobi/mgeek/TunnyBrowser/AddSpeedDail;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 51
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/f;->a:Lmobi/mgeek/TunnyBrowser/AddSpeedDail;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->a(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    if-eqz v1, :cond_2

    .line 56
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/f;->a:Lmobi/mgeek/TunnyBrowser/AddSpeedDail;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->b(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 69
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 48
    goto :goto_0

    :cond_4
    move v1, v2

    .line 49
    goto :goto_1

    .line 62
    :cond_5
    :try_start_0
    invoke-static {v4}, Lcom/dolphin/browser/util/BrowserUtil;->getBookmarkUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionAddSpeeddial2(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/f;->a:Lmobi/mgeek/TunnyBrowser/AddSpeedDail;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->finish()V

    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/f;->a:Lmobi/mgeek/TunnyBrowser/AddSpeedDail;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/AddSpeedDail;->b(Lmobi/mgeek/TunnyBrowser/AddSpeedDail;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
