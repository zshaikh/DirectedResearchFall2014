.class Ldolphin/webkit/hs;
.super Ldolphin/util/j;
.source "WebSettingsClassic.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/hr;


# direct methods
.method constructor <init>(Ldolphin/webkit/hr;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 318
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    iget-object v1, v0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    iget-object v0, v0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    # getter for: Ldolphin/webkit/WebSettingsClassic;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebSettingsClassic;->access$000(Ldolphin/webkit/WebSettingsClassic;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    iget v0, v0, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    iget-object v0, v0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    iget-object v2, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    iget-object v2, v2, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    # getter for: Ldolphin/webkit/WebSettingsClassic;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v2}, Ldolphin/webkit/WebSettingsClassic;->access$000(Ldolphin/webkit/WebSettingsClassic;)Ldolphin/webkit/BrowserFrame;

    move-result-object v2

    iget v2, v2, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    # invokes: Ldolphin/webkit/WebSettingsClassic;->nativeSync(I)V
    invoke-static {v0, v2}, Ldolphin/webkit/WebSettingsClassic;->access$100(Ldolphin/webkit/WebSettingsClassic;I)V

    .line 322
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    iget-object v0, v0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    const/4 v2, 0x0

    # setter for: Ldolphin/webkit/WebSettingsClassic;->mSyncPending:Z
    invoke-static {v0, v2}, Ldolphin/webkit/WebSettingsClassic;->access$202(Ldolphin/webkit/WebSettingsClassic;Z)Z

    .line 323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object v0, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    iget-object v0, v0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    # getter for: Ldolphin/webkit/WebSettingsClassic;->mPostSyncObservers:Ljava/util/Vector;
    invoke-static {v0}, Ldolphin/webkit/WebSettingsClassic;->access$300(Ldolphin/webkit/WebSettingsClassic;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ht;

    .line 327
    iget-object v2, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    iget-object v2, v2, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    invoke-interface {v0, v2}, Ldolphin/webkit/ht;->a(Ldolphin/webkit/WebSettingsClassic;)V

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 332
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    invoke-static {v0}, Ldolphin/webkit/hr;->a(Ldolphin/webkit/hr;)V

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v0, p0, Ldolphin/webkit/hs;->a:Ldolphin/webkit/hr;

    iget-object v0, v0, Ldolphin/webkit/hr;->a:Ldolphin/webkit/WebSettingsClassic;

    # getter for: Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Ldolphin/webkit/WebSettingsClassic;->access$500(Ldolphin/webkit/WebSettingsClassic;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "WebViewSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    const-string v1, "double_tap_toast_count"

    # getter for: Ldolphin/webkit/WebSettingsClassic;->mDoubleTapToastCount:I
    invoke-static {}, Ldolphin/webkit/WebSettingsClassic;->access$600()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
