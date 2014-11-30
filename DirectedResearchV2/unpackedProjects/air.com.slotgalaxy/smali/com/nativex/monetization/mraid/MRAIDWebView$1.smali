.class Lcom/nativex/monetization/mraid/MRAIDWebView$1;
.super Ljava/lang/Object;
.source "MRAIDWebView.java"

# interfaces
.implements Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWebView;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/business/RichMediaResponseData;)V
    .locals 27
    .param p1, "httpErrorMsg"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "richMediaResponseData"    # Lcom/nativex/monetization/business/RichMediaResponseData;

    .prologue
    .line 393
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->adReleased:Z
    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$600(Lcom/nativex/monetization/mraid/MRAIDWebView;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v23

    sget-object v24, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string v25, "Ad was released before the content was loaded."

    invoke-virtual/range {v23 .. v25}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 395
    const-string v23, "Downloading ad finished, but ad container was released."

    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 483
    :goto_0
    return-void

    .line 399
    :cond_0
    if-eqz p1, :cond_3

    .line 400
    const-string v23, "NO AD"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 401
    const-string v23, "Downloading ad failed - No ads to show."

    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v23

    sget-object v24, Lcom/nativex/monetization/enums/AdEvent;->NO_AD:Lcom/nativex/monetization/enums/AdEvent;

    const-string v25, "There was no ad to show."

    invoke-virtual/range {v23 .. v25}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAdFailed()V
    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$700(Lcom/nativex/monetization/mraid/MRAIDWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v23

    move-object/from16 v10, v23

    .line 480
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v23

    sget-object v24, Lcom/nativex/monetization/enums/AdEvent;->ERROR:Lcom/nativex/monetization/enums/AdEvent;

    const-string v25, "Error while downloading the ad"

    invoke-virtual/range {v23 .. v25}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 481
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Downloading ad failed"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    const-string v24, "."

    :goto_1
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 405
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    const-string v23, ""

    move-object/from16 v15, v23

    .line 406
    .local v15, "message":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v15

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWebView;->handleLoadAdFailure(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$800(Lcom/nativex/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    .end local v15    # "message":Ljava/lang/String;
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v15, v23

    goto :goto_2

    .line 409
    :cond_3
    if-eqz p3, :cond_d

    .line 412
    invoke-virtual/range {p3 .. p3}, Lcom/nativex/monetization/business/RichMediaResponseData;->getViewTimeOut()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    mul-long v21, v23, v25

    .line 413
    .local v21, "viewTimeOut":J
    const-wide/16 v23, 0x0

    cmp-long v23, v21, v23

    if-lez v23, :cond_4

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWebView;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$200(Lcom/nativex/monetization/mraid/MRAIDWebView;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDManager;->setViewTimeOut(Lcom/nativex/monetization/mraid/MRAIDContainer;J)V

    .line 417
    :cond_4
    const/4 v9, 0x0

    .line 418
    .local v9, "decodedHtml":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/nativex/monetization/business/RichMediaResponseData;->getBase64HtmlContent()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_5

    .line 419
    invoke-virtual/range {p3 .. p3}, Lcom/nativex/monetization/business/RichMediaResponseData;->getBase64HtmlContent()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 421
    .local v8, "decodedBytes":[B
    :try_start_2
    new-instance v9, Ljava/lang/String;

    .end local v9    # "decodedHtml":Ljava/lang/String;
    const-string v23, "UTF-8"

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 428
    .end local v8    # "decodedBytes":[B
    .restart local v9    # "decodedHtml":Ljava/lang/String;
    :cond_5
    :goto_3
    if-nez v9, :cond_6

    .line 429
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    const-string v24, "Error in decoding Richmedia Content"

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWebView;->handleLoadAdFailure(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$800(Lcom/nativex/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    .end local v9    # "decodedHtml":Ljava/lang/String;
    .restart local v8    # "decodedBytes":[B
    :catch_1
    move-exception v23

    move-object/from16 v10, v23

    .line 423
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v9, 0x0

    .line 424
    .restart local v9    # "decodedHtml":Ljava/lang/String;
    const-string v23, "UnSupportedEncodingException obtained while encoding RichMedia content."

    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 433
    .end local v8    # "decodedBytes":[B
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/nativex/monetization/business/RichMediaResponseData;->getOfferIds()Ljava/util/List;

    move-result-object v17

    .line 435
    .local v17, "offerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_c

    .line 436
    invoke-virtual/range {p3 .. p3}, Lcom/nativex/monetization/business/RichMediaResponseData;->getCDNs()Ljava/util/List;

    move-result-object v5

    .line 437
    .local v5, "CDNlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v4, "CDNHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    .local v3, "CDN":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 441
    .local v18, "uri":Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v23

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 444
    .end local v3    # "CDN":Ljava/lang/String;
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 445
    .local v16, "offerId":Ljava/lang/String;
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v23

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lcom/nativex/monetization/manager/CacheDBManager;->getCacheFile(J)Ljava/util/List;

    move-result-object v7

    .line 446
    .local v7, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    const/16 v20, 0x0

    .line 448
    .local v20, "urlMatchFound":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nativex/monetization/business/CacheFile;

    .line 449
    .local v6, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/nativex/monetization/business/CacheFile;->getCDN()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lcom/nativex/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 450
    .local v19, "urlFromCache":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    .line 452
    .local v11, "hostFromCache":Ljava/lang/String;
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 453
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 454
    .local v14, "localCachedFilePath":Ljava/lang/String;
    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 455
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "URL MATCH found from cache"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 456
    const/16 v20, 0x1

    .line 457
    move-object v0, v9

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 463
    .end local v6    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    .end local v11    # "hostFromCache":Ljava/lang/String;
    .end local v14    # "localCachedFilePath":Ljava/lang/String;
    .end local v19    # "urlFromCache":Ljava/lang/String;
    :cond_a
    if-eqz v20, :cond_8

    .line 464
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v23

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    sget-object v26, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual/range {v23 .. v26}, Lcom/nativex/monetization/manager/CacheDBManager;->updateOffersToIN_USE(JLcom/nativex/monetization/enums/FileStatus;)I

    goto/16 :goto_5

    .line 468
    .end local v7    # "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "offerId":Ljava/lang/String;
    .end local v20    # "urlMatchFound":Z
    :cond_b
    const-string v23, "Downloading ad finished successfully"

    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v9

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAdData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$900(Lcom/nativex/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 471
    .end local v4    # "CDNHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "CDNlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    const-string v23, "No cached offers found"

    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    .end local v9    # "decodedHtml":Ljava/lang/String;
    .end local v17    # "offerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "viewTimeOut":J
    :cond_d
    if-eqz p2, :cond_e

    .line 474
    const-string v23, "Downloading ad finished successfully"

    invoke-static/range {v23 .. v23}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWebView;->loadAdData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$900(Lcom/nativex/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/mraid/MRAIDWebView$1;->this$0:Lcom/nativex/monetization/mraid/MRAIDWebView;

    move-object/from16 v23, v0

    const-string v24, "Either empty or Improper RichMedia response format obtained"

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWebView;->handleLoadAdFailure(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/nativex/monetization/mraid/MRAIDWebView;->access$800(Lcom/nativex/monetization/mraid/MRAIDWebView;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 481
    .local v10, "e":Ljava/lang/Exception;
    :cond_f
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_1
.end method
