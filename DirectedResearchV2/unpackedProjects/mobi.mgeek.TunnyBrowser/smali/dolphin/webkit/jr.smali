.class Ldolphin/webkit/jr;
.super Ldolphin/util/j;
.source "WebViewCore.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/jq;


# direct methods
.method constructor <init>(Ldolphin/webkit/jq;)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1423
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1440
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1982
    :cond_0
    :goto_0
    return-void

    .line 1425
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    invoke-static {v1}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;)I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    invoke-static {v0, v1}, Ldolphin/webkit/jq;->a(Ldolphin/webkit/jq;I)I

    .line 1426
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    invoke-static {v0}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1428
    invoke-static {}, Ldolphin/webkit/WebViewCore;->pauseTimers()V

    .line 1429
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$1000(Ldolphin/webkit/WebViewCore;I)V

    goto :goto_0

    .line 1435
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    invoke-static {v0}, Ldolphin/webkit/jq;->b(Ldolphin/webkit/jq;)I

    move-result v0

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    invoke-static {v1}, Ldolphin/webkit/jq;->c(Ldolphin/webkit/jq;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1436
    invoke-static {}, Ldolphin/webkit/WebViewCore;->resumeTimers()V

    goto :goto_0

    .line 1447
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    invoke-static {v0}, Ldolphin/webkit/jq;->d(Ldolphin/webkit/jq;)Z

    move-result v0

    if-ne v0, v6, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1455
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 1485
    :pswitch_3
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeRevealSelection(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$1800(Ldolphin/webkit/WebViewCore;I)V

    goto :goto_0

    .line 1457
    :pswitch_4
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # invokes: Ldolphin/webkit/WebViewCore;->webkitDraw()V
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1300(Ldolphin/webkit/WebViewCore;)V

    goto :goto_0

    .line 1463
    :pswitch_5
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    monitor-enter v1

    .line 1464
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1400(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/ae;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ae;->c()V

    .line 1467
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1400(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/ae;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1468
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1400(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/ae;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1469
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1470
    :try_start_2
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->g()V

    .line 1471
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    const/4 v2, 0x0

    # setter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0, v2}, Ldolphin/webkit/WebViewCore;->access$1502(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/BrowserFrame;)Ldolphin/webkit/BrowserFrame;

    .line 1472
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1600(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->onDestroyed()V

    .line 1473
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    const/4 v2, 0x0

    # setter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v0, v2}, Ldolphin/webkit/WebViewCore;->access$302(Ldolphin/webkit/WebViewCore;I)I

    .line 1474
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, v0, Ldolphin/webkit/WebViewCore;->mBaseLayerMessages:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1475
    :goto_1
    :try_start_3
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v0, v0, Ldolphin/webkit/WebViewCore;->mBaseLayerMessages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1476
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v0, v0, Ldolphin/webkit/WebViewCore;->mBaseLayerMessages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1477
    iget-object v3, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v3, v3, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # invokes: Ldolphin/webkit/WebViewCore;->nativeDeleteBaseLayer(I)V
    invoke-static {v3, v0}, Ldolphin/webkit/WebViewCore;->access$1700(Ldolphin/webkit/WebViewCore;I)V

    goto :goto_1

    .line 1479
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1481
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1469
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1479
    :cond_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1480
    :try_start_8
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    const/4 v2, 0x0

    # setter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0, v2}, Ldolphin/webkit/WebViewCore;->access$1102(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewClassic;

    .line 1481
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 1490
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 1491
    const/4 v0, 0x0

    .line 1495
    :goto_2
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeScrollFocusedTextInput(IFI)V
    invoke-static {v1, v2, v0, v3}, Ldolphin/webkit/WebViewCore;->access$1900(Ldolphin/webkit/WebViewCore;IFI)V

    goto/16 :goto_0

    .line 1493
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_2

    .line 1500
    :pswitch_7
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/CookieManagerClassic;

    invoke-virtual {v0}, Ldolphin/webkit/CookieManagerClassic;->b()V

    .line 1501
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/jv;

    .line 1502
    iget-boolean v1, v0, Ldolphin/webkit/jv;->c:Z

    if-eqz v1, :cond_5

    .line 1503
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1600(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1, v6}, Ldolphin/webkit/WebSettingsClassic;->setJavascriptCanAccessCrossOriginSync(Z)V

    .line 1505
    :cond_5
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, v0, Ldolphin/webkit/jv;->a:Ljava/lang/String;

    iget-object v3, v0, Ldolphin/webkit/jv;->b:Ljava/util/Map;

    # invokes: Ldolphin/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v1, v2, v3}, Ldolphin/webkit/WebViewCore;->access$2000(Ldolphin/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    .line 1506
    iget-boolean v0, v0, Ldolphin/webkit/jv;->c:Z

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mSettings:Ldolphin/webkit/WebSettingsClassic;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1600(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0, v7}, Ldolphin/webkit/WebSettingsClassic;->setJavascriptCanAccessCrossOriginSync(Z)V

    goto/16 :goto_0

    .line 1513
    :pswitch_8
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/CookieManagerClassic;

    invoke-virtual {v0}, Ldolphin/webkit/CookieManagerClassic;->b()V

    .line 1514
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/jy;

    .line 1515
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, v0, Ldolphin/webkit/jy;->a:Ljava/lang/String;

    iget-object v0, v0, Ldolphin/webkit/jy;->b:[B

    # invokes: Ldolphin/webkit/WebViewCore;->postUrl(Ljava/lang/String;[B)V
    invoke-static {v1, v2, v0}, Ldolphin/webkit/WebViewCore;->access$2100(Ldolphin/webkit/WebViewCore;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 1519
    :pswitch_9
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/CookieManagerClassic;

    invoke-virtual {v0}, Ldolphin/webkit/CookieManagerClassic;->b()V

    .line 1520
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/jo;

    .line 1521
    iget-object v1, v0, Ldolphin/webkit/jo;->a:Ljava/lang/String;

    .line 1522
    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # invokes: Ldolphin/webkit/WebViewCore;->loadData(Ljava/lang/String;Ldolphin/webkit/jo;)V
    invoke-static {v2, v1, v0}, Ldolphin/webkit/WebViewCore;->access$2200(Ldolphin/webkit/WebViewCore;Ljava/lang/String;Ldolphin/webkit/jo;)V

    goto/16 :goto_0

    .line 1530
    :pswitch_a
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1532
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->e()V

    .line 1535
    :cond_6
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->stopLoading()V

    goto/16 :goto_0

    .line 1539
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1540
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 1544
    :pswitch_c
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v1, v0, v2, v6}, Ldolphin/webkit/WebViewCore;->access$2300(Ldolphin/webkit/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_0

    .line 1548
    :pswitch_d
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v1, v0, v2, v7}, Ldolphin/webkit/WebViewCore;->access$2300(Ldolphin/webkit/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_0

    .line 1552
    :pswitch_e
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->keyPress(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$2400(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1556
    :pswitch_f
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/jh;

    # invokes: Ldolphin/webkit/WebViewCore;->viewSizeChanged(Ldolphin/webkit/jh;)V
    invoke-static {v1, v0}, Ldolphin/webkit/WebViewCore;->access$2500(Ldolphin/webkit/WebViewCore;Ldolphin/webkit/jh;)V

    goto/16 :goto_0

    .line 1562
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    .line 1563
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v3

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_7

    move v1, v6

    :goto_3
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V
    invoke-static {v2, v3, v1, v4, v0}, Ldolphin/webkit/WebViewCore;->access$2600(Ldolphin/webkit/WebViewCore;IZII)V

    goto/16 :goto_0

    :cond_7
    move v1, v7

    goto :goto_3

    .line 1568
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/graphics/Rect;

    .line 1569
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSetGlobalBounds(IIIII)V
    invoke-static/range {v0 .. v5}, Ldolphin/webkit/WebViewCore;->access$2700(Ldolphin/webkit/WebViewCore;IIIII)V

    goto/16 :goto_0

    .line 1576
    :pswitch_12
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->a()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->d()I

    move-result v0

    if-nez v0, :cond_8

    .line 1579
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0, v6}, Ldolphin/webkit/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 1581
    :cond_8
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/BrowserFrame;->a(I)V

    goto/16 :goto_0

    .line 1586
    :pswitch_13
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->stopLoading()V

    .line 1587
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->restoreState(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$2800(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1592
    :pswitch_14
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # invokes: Ldolphin/webkit/WebViewCore;->pause()V
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$2900(Ldolphin/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1596
    :pswitch_15
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeResume(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$3000(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1600
    :pswitch_16
    const-string v0, "dolphinwebcore"

    const-string v1, "free memory~~~"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # invokes: Ldolphin/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v0, v7}, Ldolphin/webkit/WebViewCore;->access$3100(Ldolphin/webkit/WebViewCore;Z)V

    .line 1602
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeFreeMemory(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$3200(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1606
    :pswitch_17
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_9

    .line 1607
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1610
    :cond_9
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_a

    :goto_4
    invoke-virtual {v0, v6}, Ldolphin/webkit/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_0

    :cond_a
    move v6, v7

    goto :goto_4

    .line 1615
    :pswitch_18
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_b

    .line 1616
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1619
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 1620
    sget-object v2, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "subtype"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1625
    :pswitch_19
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_c

    :goto_5
    # invokes: Ldolphin/webkit/WebViewCore;->clearCache(Z)V
    invoke-static {v0, v6}, Ldolphin/webkit/WebViewCore;->access$3100(Ldolphin/webkit/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_c
    move v6, v7

    goto :goto_5

    .line 1629
    :pswitch_1a
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mCallbackProxy:Ldolphin/webkit/ae;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1400(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/ae;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ae;->e()Ldolphin/webkit/WebBackForwardList;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    iget v1, v1, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebBackForwardList;->close(I)V

    goto/16 :goto_0

    .line 1634
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ldolphin/webkit/jz;

    .line 1635
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, v7, Ldolphin/webkit/jz;->a:Ljava/lang/String;

    iget v5, v7, Ldolphin/webkit/jz;->b:I

    iget v6, v7, Ldolphin/webkit/jz;->c:I

    iget v7, v7, Ldolphin/webkit/jz;->d:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeReplaceTextfieldText(IIILjava/lang/String;III)V
    invoke-static/range {v0 .. v7}, Ldolphin/webkit/WebViewCore;->access$3300(Ldolphin/webkit/WebViewCore;IIILjava/lang/String;III)V

    goto/16 :goto_0

    .line 1641
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ldolphin/webkit/jx;

    .line 1642
    iget-object v9, v3, Ldolphin/webkit/jx;->b:Landroid/view/KeyEvent;

    .line 1643
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 1644
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    .line 1645
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1646
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget-object v3, v3, Ldolphin/webkit/jx;->a:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_d

    :goto_6
    invoke-virtual {v9}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    invoke-virtual {v9}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v8

    invoke-virtual {v9}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v9

    # invokes: Ldolphin/webkit/WebViewCore;->passToJs(IILjava/lang/String;IIZZZZ)V
    invoke-static/range {v0 .. v9}, Ldolphin/webkit/WebViewCore;->access$3400(Ldolphin/webkit/WebViewCore;IILjava/lang/String;IIZZZZ)V

    goto/16 :goto_0

    :cond_d
    move v6, v7

    goto :goto_6

    .line 1657
    :pswitch_1d
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$3500(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1664
    :pswitch_1e
    invoke-static {}, Ldolphin/webkit/gt;->a()Ldolphin/webkit/gt;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/gt;->b()V

    .line 1665
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$1000(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1669
    :pswitch_1f
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v6, :cond_e

    :goto_7
    # invokes: Ldolphin/webkit/WebViewCore;->nativeSetFocusControllerActive(IZ)V
    invoke-static {v0, v1, v6}, Ldolphin/webkit/WebViewCore;->access$3600(Ldolphin/webkit/WebViewCore;IZ)V

    goto/16 :goto_0

    :cond_e
    move v6, v7

    goto :goto_7

    .line 1673
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/jw;

    .line 1674
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    iget-object v2, v0, Ldolphin/webkit/jw;->a:Ljava/lang/Object;

    iget-object v0, v0, Ldolphin/webkit/jw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/BrowserFrame;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1679
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/jw;

    .line 1680
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    iget-object v0, v0, Ldolphin/webkit/jw;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ldolphin/webkit/BrowserFrame;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1685
    :pswitch_22
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Ldolphin/webkit/BrowserFrame;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1690
    :pswitch_23
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Ldolphin/webkit/BrowserFrame;->b(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1694
    :pswitch_24
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v0, v1, v2, v3}, Ldolphin/webkit/WebViewCore;->access$3700(Ldolphin/webkit/WebViewCore;III)V

    goto/16 :goto_0

    .line 1698
    :pswitch_25
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Ldolphin/webkit/WebViewCore;->performHitTest(IIIZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v0, v1, v2, v6, v7}, Ldolphin/webkit/WebViewCore;->access$3800(Ldolphin/webkit/WebViewCore;IIIZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;

    move-result-object v1

    .line 1699
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1700
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1701
    const-string v3, "url"

    iget-object v4, v1, Ldolphin/webkit/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const-string v3, "title"

    iget-object v4, v1, Ldolphin/webkit/WebViewCore$WebKitHitTest;->mAnchorText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-string v3, "src"

    iget-object v1, v1, Ldolphin/webkit/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1709
    :pswitch_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1710
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/BrowserFrame;->documentHasImages()Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_8
    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 1712
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_f
    move v6, v7

    .line 1710
    goto :goto_8

    .line 1716
    :pswitch_27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/kb;

    .line 1718
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    iget v3, v0, Ldolphin/webkit/kb;->a:I

    iget v0, v0, Ldolphin/webkit/kb;->b:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeDeleteSelection(IIII)V
    invoke-static {v1, v2, v3, v0, v4}, Ldolphin/webkit/WebViewCore;->access$3900(Ldolphin/webkit/WebViewCore;IIII)V

    goto/16 :goto_0

    .line 1723
    :pswitch_28
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSetSelection(III)V
    invoke-static {v0, v1, v2, v3}, Ldolphin/webkit/WebViewCore;->access$4000(Ldolphin/webkit/WebViewCore;III)V

    goto/16 :goto_0

    .line 1727
    :pswitch_29
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # setter for: Ldolphin/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v0, v6}, Ldolphin/webkit/WebViewCore;->access$4102(Ldolphin/webkit/WebViewCore;I)I

    .line 1729
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeModifySelection(III)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Ldolphin/webkit/WebViewCore;->access$4200(Ldolphin/webkit/WebViewCore;III)Ljava/lang/String;

    move-result-object v0

    .line 1732
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1735
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # setter for: Ldolphin/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v0, v7}, Ldolphin/webkit/WebViewCore;->access$4102(Ldolphin/webkit/WebViewCore;I)I

    goto/16 :goto_0

    .line 1740
    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 1742
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1743
    new-array v2, v1, [Z

    .line 1744
    :goto_9
    if-ge v7, v1, :cond_10

    .line 1745
    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    aput-boolean v3, v2, v7

    .line 1744
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1747
    :cond_10
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v3, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v3, v3, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v3}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v3

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSendListBoxChoices(I[ZI)V
    invoke-static {v0, v3, v2, v1}, Ldolphin/webkit/WebViewCore;->access$4300(Ldolphin/webkit/WebViewCore;I[ZI)V

    goto/16 :goto_0

    .line 1752
    :pswitch_2b
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSendListBoxChoice(II)V
    invoke-static {v0, v1, v2}, Ldolphin/webkit/WebViewCore;->access$4400(Ldolphin/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1756
    :pswitch_2c
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSetBackgroundColor(II)V
    invoke-static {v0, v1, v2}, Ldolphin/webkit/WebViewCore;->access$4500(Ldolphin/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1760
    :pswitch_2d
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v6, :cond_11

    :goto_a
    # invokes: Ldolphin/webkit/WebViewCore;->nativeDumpDomTree(IZ)V
    invoke-static {v0, v1, v6}, Ldolphin/webkit/WebViewCore;->access$4600(Ldolphin/webkit/WebViewCore;IZ)V

    goto/16 :goto_0

    :cond_11
    move v6, v7

    goto :goto_a

    .line 1764
    :pswitch_2e
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v6, :cond_12

    :goto_b
    # invokes: Ldolphin/webkit/WebViewCore;->nativeDumpRenderTree(IZ)V
    invoke-static {v0, v1, v6}, Ldolphin/webkit/WebViewCore;->access$4700(Ldolphin/webkit/WebViewCore;IZ)V

    goto/16 :goto_0

    :cond_12
    move v6, v7

    goto :goto_b

    .line 1768
    :pswitch_2f
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v6, :cond_13

    :goto_c
    # invokes: Ldolphin/webkit/WebViewCore;->nativeDumpGraphicsTree(IZ)V
    invoke-static {v0, v1, v6}, Ldolphin/webkit/WebViewCore;->access$4800(Ldolphin/webkit/WebViewCore;IZ)V

    goto/16 :goto_0

    :cond_13
    move v6, v7

    goto :goto_c

    .line 1772
    :pswitch_30
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSetJsFlags(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Ldolphin/webkit/WebViewCore;->access$4900(Ldolphin/webkit/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1776
    :pswitch_31
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeContentInvalidateAll(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$5000(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1780
    :pswitch_32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/je;

    .line 1782
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, v0, Ldolphin/webkit/je;->a:Ljava/lang/String;

    iget-boolean v3, v0, Ldolphin/webkit/je;->b:Z

    # invokes: Ldolphin/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Ldolphin/webkit/WebViewCore;->access$5100(Ldolphin/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldolphin/webkit/je;->d:Ljava/lang/String;

    .line 1784
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1789
    :pswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/jt;

    .line 1791
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    iget-object v3, v0, Ldolphin/webkit/jt;->a:Ljava/lang/String;

    iget-boolean v4, v0, Ldolphin/webkit/jt;->b:Z

    iget-boolean v0, v0, Ldolphin/webkit/jt;->c:Z

    # invokes: Ldolphin/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V
    invoke-static {v1, v2, v3, v4, v0}, Ldolphin/webkit/WebViewCore;->access$5200(Ldolphin/webkit/WebViewCore;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1799
    :pswitch_34
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewCore;->clearContent()V

    goto/16 :goto_0

    .line 1802
    :pswitch_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1806
    :pswitch_36
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    # invokes: Ldolphin/webkit/WebViewCore;->nativeProvideVisitedHistory(I[Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Ldolphin/webkit/WebViewCore;->access$5300(Ldolphin/webkit/WebViewCore;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1810
    :pswitch_37
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeFullScreenPluginHidden(II)V
    invoke-static {v0, v1, v2}, Ldolphin/webkit/WebViewCore;->access$5400(Ldolphin/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1814
    :pswitch_38
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativePluginSurfaceReady(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$5500(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1818
    :pswitch_39
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$5600(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1822
    :pswitch_3a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1823
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # invokes: Ldolphin/webkit/WebViewCore;->nativeContextMenuSelected(I)V
    invoke-static {v1, v0}, Ldolphin/webkit/WebViewCore;->access$5700(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1827
    :pswitch_3b
    sget-object v0, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_14

    .line 1828
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1831
    :cond_14
    sget-object v1, Ldolphin/webkit/BrowserFrame;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v1, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 1836
    :pswitch_3c
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # invokes: Ldolphin/webkit/WebViewCore;->setUseMockDeviceOrientation()V
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$5800(Ldolphin/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 1840
    :pswitch_3d
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeAutoFillForm(II)V
    invoke-static {v0, v1, v2}, Ldolphin/webkit/WebViewCore;->access$5900(Ldolphin/webkit/WebViewCore;II)V

    .line 1841
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x86

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1846
    :pswitch_3e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ldolphin/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1855
    :pswitch_3f
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1856
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    .line 1857
    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v3, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v3, v3, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v3}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v3

    # invokes: Ldolphin/webkit/WebViewCore;->nativeScrollLayer(IILandroid/graphics/Rect;)V
    invoke-static {v2, v3, v1, v0}, Ldolphin/webkit/WebViewCore;->access$6000(Ldolphin/webkit/WebViewCore;IILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1862
    :pswitch_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    move-object v5, v0

    check-cast v5, [I

    .line 1863
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    aget v2, v5, v7

    aget v3, v5, v6

    aget v4, v5, v4

    aget v5, v5, v8

    # invokes: Ldolphin/webkit/WebViewCore;->nativeDeleteText(IIIII)V
    invoke-static/range {v0 .. v5}, Ldolphin/webkit/WebViewCore;->access$6100(Ldolphin/webkit/WebViewCore;IIIII)V

    goto/16 :goto_0

    .line 1868
    :pswitch_41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    move-object v5, v0

    check-cast v5, [I

    .line 1869
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    aget v2, v5, v7

    aget v3, v5, v6

    aget v4, v5, v4

    aget v5, v5, v8

    # invokes: Ldolphin/webkit/WebViewCore;->nativeGetText(IIIII)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Ldolphin/webkit/WebViewCore;->access$6200(Ldolphin/webkit/WebViewCore;IIIII)Ljava/lang/String;

    move-result-object v0

    .line 1872
    if-eqz v0, :cond_0

    .line 1873
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    # invokes: Ldolphin/webkit/WebViewCore;->nativeClearTextSelection(I)V
    invoke-static {v1, v2}, Ldolphin/webkit/WebViewCore;->access$6300(Ldolphin/webkit/WebViewCore;I)V

    .line 1874
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x8d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1881
    :pswitch_42
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Ldolphin/webkit/WebViewCore;->nativeInsertText(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Ldolphin/webkit/WebViewCore;->access$6400(Ldolphin/webkit/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1884
    :pswitch_43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1885
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSelectText(IIII)V
    invoke-static {v1, v2, v0, v3, v4}, Ldolphin/webkit/WebViewCore;->access$6500(Ldolphin/webkit/WebViewCore;IIII)V

    goto/16 :goto_0

    .line 1889
    :pswitch_44
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # setter for: Ldolphin/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v0, v4}, Ldolphin/webkit/WebViewCore;->access$4102(Ldolphin/webkit/WebViewCore;I)I

    .line 1891
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1892
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1893
    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v3, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v3, v3, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v3}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v3

    # invokes: Ldolphin/webkit/WebViewCore;->nativeClearTextSelection(I)V
    invoke-static {v2, v3}, Ldolphin/webkit/WebViewCore;->access$6300(Ldolphin/webkit/WebViewCore;I)V

    .line 1894
    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v3, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v3, v3, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v3}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v3

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSelectWordAt(III)Z
    invoke-static {v2, v3, v0, v1}, Ldolphin/webkit/WebViewCore;->access$6600(Ldolphin/webkit/WebViewCore;III)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1895
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1898
    :cond_15
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # setter for: Ldolphin/webkit/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v0, v7}, Ldolphin/webkit/WebViewCore;->access$4102(Ldolphin/webkit/WebViewCore;I)I

    goto/16 :goto_0

    .line 1903
    :pswitch_45
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSelectAll(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$6700(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1906
    :pswitch_46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/js;

    .line 1907
    if-eqz v0, :cond_16

    .line 1908
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    iget-object v3, v0, Ldolphin/webkit/js;->a:Ljava/lang/String;

    # invokes: Ldolphin/webkit/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v1, v2, v3}, Ldolphin/webkit/WebViewCore;->access$6800(Ldolphin/webkit/WebViewCore;ILjava/lang/String;)I

    move-result v1

    .line 1909
    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v3, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v3, v3, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v3}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v3

    # invokes: Ldolphin/webkit/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v2, v3, v6}, Ldolphin/webkit/WebViewCore;->access$6900(Ldolphin/webkit/WebViewCore;IZ)I

    move-result v2

    .line 1910
    monitor-enter v0

    .line 1911
    :try_start_9
    iput v1, v0, Ldolphin/webkit/js;->b:I

    .line 1912
    iput v2, v0, Ldolphin/webkit/js;->c:I

    .line 1913
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1914
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1918
    :goto_d
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x7e

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1914
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1

    .line 1916
    :cond_16
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    # invokes: Ldolphin/webkit/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v1, v2, v3}, Ldolphin/webkit/WebViewCore;->access$6800(Ldolphin/webkit/WebViewCore;ILjava/lang/String;)I

    goto :goto_d

    .line 1923
    :pswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/js;

    .line 1924
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_17

    :goto_e
    # invokes: Ldolphin/webkit/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v1, v2, v6}, Ldolphin/webkit/WebViewCore;->access$6900(Ldolphin/webkit/WebViewCore;IZ)I

    move-result v1

    .line 1925
    monitor-enter v0

    .line 1926
    :try_start_b
    iput v1, v0, Ldolphin/webkit/js;->c:I

    .line 1927
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1928
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0x7e

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_17
    move v6, v7

    .line 1924
    goto :goto_e

    .line 1927
    :catchall_4
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1

    .line 1933
    :pswitch_48
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSetInitialFocus(II)V
    invoke-static {v0, v1, v2}, Ldolphin/webkit/WebViewCore;->access$7000(Ldolphin/webkit/WebViewCore;II)V

    goto/16 :goto_0

    .line 1937
    :pswitch_49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    .line 1938
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 1939
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1941
    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v3, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v3, v3, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v3}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->n()I

    move-result v3

    # invokes: Ldolphin/webkit/WebViewCore;->performHitTest(IIIZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v2, v1, v0, v3, v7}, Ldolphin/webkit/WebViewCore;->access$3800(Ldolphin/webkit/WebViewCore;IIIZ)Ldolphin/webkit/WebViewCore$WebKitHitTest;

    move-result-object v0

    .line 1943
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0xa1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1948
    :pswitch_4a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/ka;

    .line 1949
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v2, v0, Ldolphin/webkit/ka;->a:Ljava/io/OutputStream;

    iget-object v0, v0, Ldolphin/webkit/ka;->b:Ldolphin/webkit/ValueCallback;

    # invokes: Ldolphin/webkit/WebViewCore;->saveViewState(Ljava/io/OutputStream;Ldolphin/webkit/ValueCallback;)V
    invoke-static {v1, v2, v0}, Ldolphin/webkit/WebViewCore;->access$7100(Ldolphin/webkit/WebViewCore;Ljava/io/OutputStream;Ldolphin/webkit/ValueCallback;)V

    goto/16 :goto_0

    .line 1953
    :pswitch_4b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/ju;

    .line 1954
    iget-object v1, v0, Ldolphin/webkit/ju;->a:Ljava/lang/String;

    .line 1955
    iget-object v2, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v2, v2, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v2

    # invokes: Ldolphin/webkit/WebViewCore;->nativeGetBitmapByUrl(ILjava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2, v1}, Ldolphin/webkit/WebViewCore;->access$7200(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1956
    if-nez v2, :cond_18

    .line 1957
    const-string v3, "dolphinwebcore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get bitmap by url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :goto_f
    monitor-enter v0

    .line 1963
    :try_start_d
    iput-object v2, v0, Ldolphin/webkit/ju;->b:Landroid/graphics/Bitmap;

    .line 1964
    const/4 v1, 0x1

    iput-boolean v1, v0, Ldolphin/webkit/ju;->c:Z

    .line 1965
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1966
    monitor-exit v0

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v1

    .line 1960
    :cond_18
    const-string v3, "dolphinwebcore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get bitmap by url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " success."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1971
    :pswitch_4c
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$1500(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/BrowserFrame;->n()Ldolphin/webkit/WebView$PageInformation;

    move-result-object v0

    .line 1972
    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mWebViewClassic:Ldolphin/webkit/WebViewClassic;
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$1100(Ldolphin/webkit/WebViewCore;)Ldolphin/webkit/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v2, 0xa2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1977
    :pswitch_4d
    iget-object v0, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v0, v0, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jr;->a:Ldolphin/webkit/jq;

    iget-object v1, v1, Ldolphin/webkit/jq;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeClearTextSelection(I)V
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewCore;->access$6300(Ldolphin/webkit/WebViewCore;I)V

    goto/16 :goto_0

    .line 1423
    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1455
    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_2
        :pswitch_2
        :pswitch_19
        :pswitch_1a
        :pswitch_28
        :pswitch_1b
        :pswitch_1c
        :pswitch_11
        :pswitch_2
        :pswitch_2
        :pswitch_17
        :pswitch_26
        :pswitch_2
        :pswitch_27
        :pswitch_2a
        :pswitch_2b
        :pswitch_35
        :pswitch_2c
        :pswitch_2
        :pswitch_1d
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_34
        :pswitch_24
        :pswitch_2
        :pswitch_25
        :pswitch_20
        :pswitch_9
        :pswitch_2
        :pswitch_2
        :pswitch_1f
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_2
        :pswitch_32
        :pswitch_2
        :pswitch_21
        :pswitch_1e
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_22
        :pswitch_23
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_2
        :pswitch_30
        :pswitch_31
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_33
        :pswitch_36
        :pswitch_37
        :pswitch_18
        :pswitch_3b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_29
        :pswitch_3c
        :pswitch_3d
        :pswitch_2
        :pswitch_3e
        :pswitch_38
        :pswitch_39
        :pswitch_2
        :pswitch_3f
        :pswitch_2
        :pswitch_5
        :pswitch_3a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_41
        :pswitch_40
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_46
        :pswitch_47
        :pswitch_e
        :pswitch_48
        :pswitch_4a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4b
        :pswitch_49
        :pswitch_2
        :pswitch_4c
        :pswitch_4d
    .end packed-switch
.end method
