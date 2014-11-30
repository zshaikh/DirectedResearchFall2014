.class Lcom/dolphin/browser/feedback/b;
.super Lcom/dolphin/browser/util/f;
.source "BugReportHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/feedback/a;

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/dolphin/browser/feedback/c;

.field private d:Lcom/dolphin/browser/core/IWebView;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/feedback/a;Ljava/util/HashSet;Lcom/dolphin/browser/feedback/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dolphin/browser/feedback/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    iput-object p1, p0, Lcom/dolphin/browser/feedback/b;->a:Lcom/dolphin/browser/feedback/a;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/dolphin/browser/feedback/b;->b:Ljava/util/HashSet;

    .line 244
    iput-object p3, p0, Lcom/dolphin/browser/feedback/b;->c:Lcom/dolphin/browser/feedback/c;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/b;->d:Lcom/dolphin/browser/core/IWebView;

    .line 246
    return-void
.end method

.method private a(Lcom/dolphin/browser/core/IWebView;ZZ)Ljava/lang/String;
    .locals 5

    .prologue
    .line 351
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    if-eqz p2, :cond_1

    .line 355
    if-nez p1, :cond_5

    const/4 v0, 0x0

    .line 356
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "null"

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v0, "\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_1
    if-eqz p3, :cond_4

    .line 362
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 363
    invoke-static {v1, v0}, Lmobi/mgeek/util/CrashReporter/ac;->a(Landroid/content/Context;Ljava/util/Properties;)Ljava/util/Properties;

    .line 365
    const-string v1, "AndroidIdHash"

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/Configuration;->getAndroidIdHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v1, "CID"

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/Configuration;->getClientGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "Device Info"

    invoke-static {v0, v1}, Lmobi/mgeek/util/CrashReporter/ac;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {}, Lcom/dolphin/browser/util/ap;->a()Lcom/dolphin/browser/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ap;->d()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "null"

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {}, Lcom/dolphin/browser/util/az;->a()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "null"

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v0, "\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_5
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Lcom/dolphin/browser/core/IWebView;ZZZZZ)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    .line 308
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 309
    if-eqz p5, :cond_0

    .line 310
    iget-object v1, p0, Lcom/dolphin/browser/feedback/b;->a:Lcom/dolphin/browser/feedback/a;

    invoke-static {v1}, Lcom/dolphin/browser/feedback/a;->b(Lcom/dolphin/browser/feedback/a;)Ljava/util/Properties;

    move-result-object v1

    .line 311
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab()Ljava/io/File;

    move-result-object v5

    const-string v6, "browser_setting.txt"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    const-string v5, "Browser Settings"

    invoke-static {v1, v5}, Lmobi/mgeek/util/CrashReporter/ac;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "UTF-8"

    invoke-static {v4, v1, v5}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    if-eqz p3, :cond_1

    .line 320
    iget-object v1, p0, Lcom/dolphin/browser/feedback/b;->a:Lcom/dolphin/browser/feedback/a;

    invoke-static {v1}, Lcom/dolphin/browser/feedback/a;->a(Lcom/dolphin/browser/feedback/a;)Ljava/lang/String;

    move-result-object v1

    .line 321
    iget-object v4, p0, Lcom/dolphin/browser/feedback/b;->d:Lcom/dolphin/browser/core/IWebView;

    invoke-direct {p0, v4}, Lcom/dolphin/browser/feedback/b;->a(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v4

    .line 322
    if-eqz v4, :cond_1

    .line 323
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_1
    if-eqz p4, :cond_2

    .line 331
    :cond_2
    invoke-direct {p0, p1, p2, p6}, Lcom/dolphin/browser/feedback/b;->a(Lcom/dolphin/browser/core/IWebView;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 334
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab()Ljava/io/File;

    move-result-object v2

    const-string v5, "bug_report.zip"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v1, v0

    :cond_4
    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/dw;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/dolphin/browser/feedback/b;->a:Lcom/dolphin/browser/feedback/a;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/feedback/a;->a(Ljava/util/ArrayList;)V

    .line 339
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 345
    :cond_5
    :goto_0
    return-object v0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/core/IWebView;)Z
    .locals 2

    .prologue
    .line 284
    if-eqz p1, :cond_1

    .line 286
    const/16 v0, 0x500

    const/16 v1, 0x500

    :try_start_0
    invoke-static {p1, v0, v1}, Lcom/dolphin/browser/util/dt;->b(Lcom/dolphin/browser/core/IWebView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 289
    const/16 v0, 0x320

    const/16 v1, 0x320

    invoke-static {p1, v0, v1}, Lcom/dolphin/browser/util/dt;->b(Lcom/dolphin/browser/core/IWebView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/feedback/b;->a:Lcom/dolphin/browser/feedback/a;

    invoke-static {v1}, Lcom/dolphin/browser/feedback/a;->a(Lcom/dolphin/browser/feedback/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/aj;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/feedback/b;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/dolphin/browser/feedback/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->d:Lcom/dolphin/browser/core/IWebView;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->b:Ljava/util/HashSet;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->b:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->b:Ljava/util/HashSet;

    const-string v1, "behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 269
    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->b:Ljava/util/HashSet;

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->b:Ljava/util/HashSet;

    const-string v1, "screenshot"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 272
    iget-object v1, p0, Lcom/dolphin/browser/feedback/b;->d:Lcom/dolphin/browser/core/IWebView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/feedback/b;->a(Lcom/dolphin/browser/core/IWebView;ZZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/b;->d:Lcom/dolphin/browser/core/IWebView;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->c:Lcom/dolphin/browser/feedback/c;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->c:Lcom/dolphin/browser/feedback/c;

    invoke-interface {v0}, Lcom/dolphin/browser/feedback/c;->a()V

    .line 258
    :cond_1
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/feedback/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->c:Lcom/dolphin/browser/feedback/c;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/feedback/b;->c:Lcom/dolphin/browser/feedback/c;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/feedback/c;->a(Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method
