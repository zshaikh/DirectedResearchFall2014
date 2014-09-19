.class final Lcom/vungle/sdk/VungleAdvert$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/VungleAdvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/sdk/VungleAdvert;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VungleAdvert;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/vungle/sdk/VungleAdvert$1;->b:Lcom/vungle/sdk/VungleAdvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/VungleAdvert$1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vungle/sdk/VungleAdvert$1;->a:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v4, "VungleAdvertCTA"

    .line 137
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$1;->a:Ljava/lang/String;

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    const-string v0, "VungleAdvertCTA"

    const-string v0, "CTA is either null or empty."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 143
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    iget-object v2, p0, Lcom/vungle/sdk/VungleAdvert$1;->b:Lcom/vungle/sdk/VungleAdvert;

    invoke-virtual {v2, v1}, Lcom/vungle/sdk/VungleAdvert;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amzn://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "VungleAdvertCTA"

    const-string v0, "Clicked, but Amazon Appstore was not available."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$1;->b:Lcom/vungle/sdk/VungleAdvert;

    const-string v1, "Amazon AppStore needs to be installed for this link to work."

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, "VungleAdvertCTA"

    const-string v0, "Clicked, but could not find an activity to service the CTA."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$1;->b:Lcom/vungle/sdk/VungleAdvert;

    const-string v1, "We encountered an error while trying to open that link. Sorry \'bout that! :X"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
