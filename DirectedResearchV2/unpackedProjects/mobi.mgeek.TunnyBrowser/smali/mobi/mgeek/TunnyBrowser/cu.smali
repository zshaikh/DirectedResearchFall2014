.class Lmobi/mgeek/TunnyBrowser/cu;
.super Ljava/lang/Object;
.source "CrashReportController.java"

# interfaces
.implements Lmobi/mgeek/util/CrashReporter/k;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cs;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cs;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cu;->a:Lmobi/mgeek/TunnyBrowser/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(I[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 287
    packed-switch p1, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 289
    :pswitch_1
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const-string v1, ""

    .line 293
    const-string v1, ""

    .line 294
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cu;->a:Lmobi/mgeek/TunnyBrowser/cs;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cs;->i()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lmobi/mgeek/TunnyBrowser/cs;->a(Lmobi/mgeek/TunnyBrowser/cs;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    const-string v1, "Dolphin"

    .line 296
    const-string v0, "java_crash"

    .line 304
    :goto_1
    const-string v2, "crash_error"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v2, v0, v1, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cu;->a:Lmobi/mgeek/TunnyBrowser/cs;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cs;->j()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lmobi/mgeek/TunnyBrowser/cs;->a(Lmobi/mgeek/TunnyBrowser/cs;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cu;->a:Lmobi/mgeek/TunnyBrowser/cs;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/cs;->a(Lmobi/mgeek/TunnyBrowser/cs;)Ljava/lang/String;

    move-result-object v1

    .line 299
    const-string v0, "dolphin_engine_crash"

    goto :goto_1

    .line 301
    :cond_2
    const-string v1, "java"

    .line 302
    const-string v0, "dandroid_system_crash"

    goto :goto_1

    .line 311
    :pswitch_2
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    .line 313
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/BrowserSettings;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 315
    invoke-static {v0}, Lcom/dolphin/browser/util/ae;->a(Ljava/lang/String;)V

    .line 319
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab()Ljava/io/File;

    move-result-object v1

    const-string v2, "minidump.dmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->d(Ljava/io/File;)Z

    goto :goto_0

    .line 328
    :pswitch_3
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    const-string v0, "crash_error"

    const-string v1, "dolphin_engine_crash"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/cu;->a:Lmobi/mgeek/TunnyBrowser/cs;

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/cs;->a(Lmobi/mgeek/TunnyBrowser/cs;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0

    .line 334
    :cond_4
    const-string v0, "crash_error"

    const-string v1, "default_engine_crash"

    const-string v2, "native"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto/16 :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
