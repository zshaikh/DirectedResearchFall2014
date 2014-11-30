.class public Lcom/dolphin/browser/theme/d/d;
.super Ljava/lang/Object;
.source "ThemeInstallerImpl.java"


# instance fields
.field private a:Lcom/dolphin/browser/theme/d/i;

.field private b:Lcom/dolphin/browser/theme/d/h;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/theme/d/i;Lcom/dolphin/browser/theme/d/h;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/dolphin/browser/theme/d/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/theme/d/e;-><init>(Lcom/dolphin/browser/theme/d/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/d/d;->c:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/dolphin/browser/theme/d/d;->a:Lcom/dolphin/browser/theme/d/i;

    .line 71
    iput-object p2, p0, Lcom/dolphin/browser/theme/d/d;->b:Lcom/dolphin/browser/theme/d/h;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/d/d;)Lcom/dolphin/browser/theme/d/i;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/d;->a:Lcom/dolphin/browser/theme/d/i;

    return-object v0
.end method

.method private a(Landroid/net/Uri;IZZZZ)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v2, 0x1

    .line 139
    const/4 v1, 0x0

    .line 141
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/d;->c:Landroid/os/Handler;

    .line 145
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    :cond_0
    const-string v0, "ThemeInstaller"

    const-string v2, "theme file does not exists."

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v0, Lcom/dolphin/browser/theme/d/j;->a:Lcom/dolphin/browser/theme/d/j;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    :goto_1
    return-void

    .line 142
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/dolphin/browser/theme/d/d;->b:Lcom/dolphin/browser/theme/d/h;

    invoke-interface {v4, p2, v0}, Lcom/dolphin/browser/theme/d/h;->a(ILjava/io/File;)Lcom/dolphin/browser/theme/b/a;

    move-result-object v4

    .line 154
    if-nez v4, :cond_2

    .line 155
    const-string v0, "ThemeInstaller"

    const-string v2, "file type not supported."

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/dolphin/browser/theme/d/j;->b:Lcom/dolphin/browser/theme/d/j;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {v4, v0}, Lcom/dolphin/browser/theme/b/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    const-string v0, "ThemeInstaller"

    const-string v2, "config file not found or bad formated."

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lcom/dolphin/browser/theme/d/j;->b:Lcom/dolphin/browser/theme/d/j;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 169
    :cond_3
    if-eqz p6, :cond_6

    invoke-virtual {v4}, Lcom/dolphin/browser/theme/b/a;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 171
    if-eqz p3, :cond_4

    move v0, v2

    :goto_2
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 172
    if-eqz p4, :cond_5

    :goto_3
    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 173
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/d;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    move v0, v3

    .line 171
    goto :goto_2

    :cond_5
    move v2, v3

    .line 172
    goto :goto_3

    .line 176
    :cond_6
    invoke-direct {p0, v4, p3, p4, p5}, Lcom/dolphin/browser/theme/d/d;->a(Lcom/dolphin/browser/theme/b/a;ZZZ)V

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/theme/b/a;ZZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 182
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/b/a;->g()Ljava/io/File;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/b/a;->i()Ljava/io/File;

    move-result-object v1

    .line 184
    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/File;Z)V

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/dolphin/browser/theme/d/d;->c:Landroid/os/Handler;

    .line 191
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 194
    invoke-virtual {p1, v0, v3}, Lcom/dolphin/browser/theme/b/a;->a(Ljava/io/File;Ljava/io/InputStream;)V

    .line 195
    const-string v0, "ThemeInstaller"

    const-string v3, "install successfully!"

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    .line 198
    :goto_1
    iget-object v3, p0, Lcom/dolphin/browser/theme/d/d;->c:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 199
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dolphin/browser/theme/d/a; {:try_start_0 .. :try_end_0} :catch_2

    .line 217
    :goto_2
    if-eqz p4, :cond_0

    .line 218
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    .line 196
    :cond_3
    if-eqz p3, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 203
    sget-object v3, Lcom/dolphin/browser/theme/d/j;->a:Lcom/dolphin/browser/theme/d/j;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 205
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 206
    :catch_1
    move-exception v0

    .line 207
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 208
    sget-object v3, Lcom/dolphin/browser/theme/d/j;->a:Lcom/dolphin/browser/theme/d/j;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 210
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 211
    :catch_2
    move-exception v0

    .line 212
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 213
    sget-object v3, Lcom/dolphin/browser/theme/d/j;->b:Lcom/dolphin/browser/theme/d/j;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 215
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/d/a;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/d/d;Landroid/net/Uri;IZZZZ)V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/dolphin/browser/theme/d/d;->a(Landroid/net/Uri;IZZZZ)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/theme/d/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/d;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;IZZ)V
    .locals 6

    .prologue
    .line 89
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/theme/d/d;->a(Landroid/net/Uri;IZZZ)V

    .line 90
    return-void
.end method

.method public a(Landroid/net/Uri;IZZZ)V
    .locals 7

    .prologue
    .line 94
    new-instance v0, Lcom/dolphin/browser/theme/d/f;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/theme/d/f;-><init>(Lcom/dolphin/browser/theme/d/d;Landroid/net/Uri;IZZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/d/f;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 109
    return-void
.end method

.method public a(Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    .line 113
    new-instance v0, Lcom/dolphin/browser/theme/d/g;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/theme/d/g;-><init>(Lcom/dolphin/browser/theme/d/d;Ljava/lang/String;Ljava/io/InputStream;ZZ)V

    .line 134
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 135
    return-void
.end method
