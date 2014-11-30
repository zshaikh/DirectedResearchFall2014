.class public Lcom/facebook/orca/attachments/AudioAttachmentPlayer;
.super Ljava/lang/Object;
.source "AudioAttachmentPlayer.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "orca:AudioAttachmentPlayer"

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c:Landroid/net/Uri;

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 43
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "audio/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "orca:AudioAttachmentPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
