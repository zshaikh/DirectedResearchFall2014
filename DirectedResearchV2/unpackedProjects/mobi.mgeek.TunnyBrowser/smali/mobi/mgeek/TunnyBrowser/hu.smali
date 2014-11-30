.class public Lmobi/mgeek/TunnyBrowser/hu;
.super Ljava/lang/Object;
.source "UploadHandler.java"


# instance fields
.field private a:Lcom/dolphin/browser/core/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hu;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    return-object v0
.end method

.method private varargs a([Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/hu;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 183
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hu;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 188
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/hu;->d:Z

    .line 189
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hu;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->b()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    .line 193
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->c()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->d()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->e()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/hu;->a([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 208
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    return-object v1
.end method

.method private c()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "photos"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 233
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

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/hu;->b:Ljava/lang/String;

    .line 235
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/hu;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    return-object v0
.end method

.method private d()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private e()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a(ILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 46
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/hu;->d:Z

    if-eqz v0, :cond_0

    .line 49
    iput-boolean v4, p0, Lmobi/mgeek/TunnyBrowser/hu;->d:Z

    .line 76
    :goto_0
    return-void

    .line 53
    :cond_0
    if-eqz p2, :cond_1

    if-eq p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_1
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    if-ne p1, v1, :cond_2

    .line 63
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/hu;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hu;->e:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    :cond_2
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hu;->a:Lcom/dolphin/browser/core/ValueCallback;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/hu;->c:Z

    .line 75
    iput-boolean v4, p0, Lmobi/mgeek/TunnyBrowser/hu;->d:Z

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method a(Lcom/dolphin/browser/core/ValueCallback;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 80
    const-string v0, "image/*"

    .line 81
    const-string v0, "video/*"

    .line 82
    const-string v0, "audio/*"

    .line 83
    const-string v0, "capture"

    .line 84
    const-string v0, "camera"

    .line 85
    const-string v0, "filesystem"

    .line 86
    const-string v0, "camcorder"

    .line 87
    const-string v0, "microphone"

    .line 91
    const-string v0, ""

    .line 93
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hu;->a:Lcom/dolphin/browser/core/ValueCallback;

    if-eqz v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 98
    :cond_0
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hu;->a:Lcom/dolphin/browser/core/ValueCallback;

    .line 101
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 102
    aget-object v4, v3, v2

    .line 104
    array-length v5, v3

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v3, v1

    .line 105
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 106
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 108
    const-string v7, "capture"

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    aget-object v0, v6, v9

    .line 104
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/hu;->b:Ljava/lang/String;

    .line 117
    const-string v1, "image/*"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    const-string v1, "camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->c()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v1, "filesystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    const-string v0, "image/*"

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_4
    new-array v0, v9, [Landroid/content/Intent;

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->c()Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    const-string v1, "android.intent.extra.INTENT"

    const-string v2, "image/*"

    invoke-direct {p0, v2}, Lmobi/mgeek/TunnyBrowser/hu;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    :cond_5
    const-string v1, "video/*"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 137
    const-string v1, "camcorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->d()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 142
    :cond_6
    const-string v1, "filesystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    const-string v0, "video/*"

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 150
    :cond_7
    new-array v0, v9, [Landroid/content/Intent;

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->d()Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 151
    const-string v1, "android.intent.extra.INTENT"

    const-string v2, "video/*"

    invoke-direct {p0, v2}, Lmobi/mgeek/TunnyBrowser/hu;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 155
    :cond_8
    const-string v1, "audio/*"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 156
    const-string v1, "microphone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 159
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    :cond_9
    const-string v1, "filesystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 164
    const-string v0, "audio/*"

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 169
    :cond_a
    new-array v0, v9, [Landroid/content/Intent;

    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->e()Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a([Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    const-string v1, "android.intent.extra.INTENT"

    const-string v2, "audio/*"

    invoke-direct {p0, v2}, Lmobi/mgeek/TunnyBrowser/hu;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 178
    :cond_b
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/hu;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/hu;->a(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/hu;->c:Z

    return v0
.end method
