.class Lcom/dolphin/browser/DolphinService/ui/ad;
.super Ljava/lang/Object;
.source "DolphinAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ad;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 192
    packed-switch p2, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 195
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ad;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ad;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ad;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    invoke-virtual {v2}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 209
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "photos"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ad;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 216
    const-string v1, "output"

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ad;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ad;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/DolphinService/ui/DolphinAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
