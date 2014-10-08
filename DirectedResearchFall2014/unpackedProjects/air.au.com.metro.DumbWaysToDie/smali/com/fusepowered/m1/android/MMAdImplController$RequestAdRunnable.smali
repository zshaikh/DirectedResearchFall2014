.class Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;
.super Ljava/lang/Object;
.source "MMAdImplController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMAdImplController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestAdRunnable"
.end annotation


# instance fields
.field adUrl:Ljava/lang/String;

.field mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

.field final synthetic this$0:Lcom/fusepowered/m1/android/MMAdImplController;


# direct methods
.method private constructor <init>(Lcom/fusepowered/m1/android/MMAdImplController;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m1/android/MMAdImplController;Lcom/fusepowered/m1/android/MMAdImplController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m1/android/MMAdImplController;
    .param p2, "x1"    # Lcom/fusepowered/m1/android/MMAdImplController$1;

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;-><init>(Lcom/fusepowered/m1/android/MMAdImplController;)V

    return-void
.end method

.method private isAdUrlBuildable()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 532
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    iget-object v7, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v7, v7, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    .line 536
    iget-object v7, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v7, v7, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 540
    .restart local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :cond_0
    if-eqz v0, :cond_2

    .line 542
    :try_start_0
    new-instance v6, Ljava/util/TreeMap;

    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v6, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 544
    .local v6, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v6}, Lcom/fusepowered/m1/android/MMAdImpl;->insertUrlAdMetaValues(Ljava/util/Map;)V

    .line 545
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/fusepowered/m1/android/MMSDK;->insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

    .line 547
    const-string v7, "ua"

    iget-object v8, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-virtual {v8}, Lcom/fusepowered/m1/android/MMAdImplController;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusepowered/m1/android/HandShake;->getAdUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, "adUrlBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 551
    .local v3, "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 552
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 553
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "%s=%s&"

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v10, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v7, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    .end local v1    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 565
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/fusepowered/m1/android/MMException;

    invoke-direct {v7, v2}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v7}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/fusepowered/m1/android/MMException;)Z

    move-result v7

    .line 567
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    return v7

    .line 554
    .restart local v1    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v12

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    .line 556
    const-string v7, "Calling for an advertisement: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "adUrlBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    move v7, v12

    .line 567
    goto :goto_1

    .line 560
    :cond_2
    new-instance v7, Lcom/fusepowered/m1/android/MMException;

    const/16 v8, 0x19

    invoke-direct {v7, v8}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-virtual {p0, v7}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private isHandledHtmlResponse(Lorg/apache/http/HttpEntity;)Z
    .locals 9
    .param p1, "httpEntity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v8, 0x1

    .line 728
    const/4 v1, 0x0

    .line 729
    .local v1, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :try_start_0
    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    .line 731
    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v4, v4, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    move-object v1, v0

    .line 733
    :cond_0
    if-eqz v1, :cond_2

    .line 735
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->isBanner()Z

    move-result v4

    if-nez v4, :cond_3

    .line 737
    new-instance v2, Lcom/fusepowered/m1/android/InterstitialAd;

    invoke-direct {v2}, Lcom/fusepowered/m1/android/InterstitialAd;-><init>()V

    .line 738
    .local v2, "interstitialAd":Lcom/fusepowered/m1/android/InterstitialAd;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/m1/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    .line 739
    iget-object v4, v1, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/m1/android/InterstitialAd;->setId(Ljava/lang/String;)V

    .line 740
    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    iput-object v4, v2, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    .line 741
    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    iput-object v4, v2, Lcom/fusepowered/m1/android/InterstitialAd;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    .line 742
    sget v4, Lcom/fusepowered/m1/android/MMSDK;->logLevel:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 744
    const-string v4, "Received interstitial ad with url %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    iget-object v4, v2, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 747
    :cond_1
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/fusepowered/m1/android/AdCache;->save(Landroid/content/Context;Lcom/fusepowered/m1/android/CachedAd;)Z

    .line 748
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/InterstitialAd;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/fusepowered/m1/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->fetchStartedCaching(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 750
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestCompleted(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .end local v2    # "interstitialAd":Lcom/fusepowered/m1/android/InterstitialAd;
    :cond_2
    :goto_0
    move v4, v8

    .line 768
    :goto_1
    return v4

    .line 755
    :cond_3
    iget-object v4, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v4, :cond_4

    .line 757
    iget-object v4, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v5, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    invoke-virtual {v4, v5}, Lcom/fusepowered/m1/android/MMAdImplController;->setLastHeaders(Lcom/fusepowered/m1/android/HttpMMHeaders;)V

    .line 758
    iget-object v4, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/m1/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/fusepowered/m1/android/MMAdImplController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_4
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestCompleted(Lcom/fusepowered/m1/android/MMAdImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 764
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 766
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Lcom/fusepowered/m1/android/MMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception raised in HTTP stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v4}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/fusepowered/m1/android/MMException;)Z

    move-result v4

    goto :goto_1
.end method

.method private isHandledJsonResponse(Lorg/apache/http/HttpEntity;)Z
    .locals 9
    .param p1, "httpEntity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/16 v8, 0xf

    .line 650
    const/4 v5, 0x0

    .line 652
    .local v5, "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    const/4 v1, 0x0

    .line 653
    .local v1, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    iget-object v6, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v6, v6, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    .line 655
    iget-object v6, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v6, v6, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    check-cast v1, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 657
    .restart local v1    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :cond_0
    if-eqz v1, :cond_2

    .line 659
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->isBanner()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 661
    new-instance v6, Lcom/fusepowered/m1/android/MMException;

    const-string v7, "Millennial ad return unsupported format."

    invoke-direct {v6, v7, v8}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/fusepowered/m1/android/MMException;)Z

    move-result v6

    .line 721
    :goto_0
    return v6

    .line 666
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/m1/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, "json":Ljava/lang/String;
    invoke-static {v4}, Lcom/fusepowered/m1/android/CachedAd;->parseJSON(Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/fusepowered/m1/android/VideoAd;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 680
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/fusepowered/m1/android/VideoAd;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cached video ad JSON received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/fusepowered/m1/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v5}, Lcom/fusepowered/m1/android/VideoAd;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 687
    const-string v6, "New ad has expiration date in the past. Not downloading ad content."

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fusepowered/m1/android/VideoAd;->delete(Landroid/content/Context;)V

    .line 689
    new-instance v6, Lcom/fusepowered/m1/android/MMException;

    invoke-direct {v6, v8}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {v1, v6}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    .line 721
    .end local v4    # "json":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 669
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 671
    .local v2, "illegalE":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 672
    new-instance v6, Lcom/fusepowered/m1/android/MMException;

    const-string v7, "Millennial ad return failed. Invalid response data."

    invoke-direct {v6, v7, v2}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v6}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z

    move-result v6

    goto :goto_0

    .line 674
    .end local v2    # "illegalE":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 676
    .local v3, "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 677
    new-instance v6, Lcom/fusepowered/m1/android/MMException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Millennial ad return failed. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v6}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z

    move-result v6

    goto/16 :goto_0

    .line 691
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fusepowered/m1/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 694
    const-string v6, "Previously fetched ad exists in the playback queue. Not downloading ad content."

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fusepowered/m1/android/VideoAd;->delete(Landroid/content/Context;)V

    .line 696
    new-instance v6, Lcom/fusepowered/m1/android/MMException;

    const/16 v7, 0x11

    invoke-direct {v6, v7}, Lcom/fusepowered/m1/android/MMException;-><init>(I)V

    invoke-static {v1, v6}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    goto :goto_1

    .line 700
    :cond_4
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/fusepowered/m1/android/AdCache;->save(Landroid/content/Context;Lcom/fusepowered/m1/android/CachedAd;)Z

    .line 701
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fusepowered/m1/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 704
    iget-object v6, v5, Lcom/fusepowered/m1/android/VideoAd;->cacheMissURL:Ljava/lang/String;

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 705
    const-string v6, "Downloading ad..."

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 706
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->fetchStartedCaching(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 707
    const/4 v6, 0x3

    iput v6, v5, Lcom/fusepowered/m1/android/VideoAd;->downloadPriority:I

    .line 708
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    invoke-static {v6, v7, v5, v8}, Lcom/fusepowered/m1/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m1/android/CachedAd;Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;)Z

    goto/16 :goto_1

    .line 713
    :cond_5
    const-string v6, "Cached ad is valid. Moving it to the front of the queue."

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/fusepowered/m1/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/fusepowered/m1/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->fetchStartedCaching(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 716
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestCompleted(Lcom/fusepowered/m1/android/MMAdImpl;)V

    goto/16 :goto_1
.end method

.method private isHandledResponse(Lorg/apache/http/HttpResponse;)Z
    .locals 12
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/16 v11, 0xf

    const/16 v10, 0xe

    const/4 v9, 0x0

    .line 572
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 573
    .local v2, "httpEntity":Lorg/apache/http/HttpEntity;
    if-nez v2, :cond_0

    .line 575
    new-instance v5, Lcom/fusepowered/m1/android/MMException;

    const-string v6, "Null HTTP entity"

    invoke-direct {v5, v6, v10}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z

    move v5, v9

    .line 628
    :goto_0
    return v5

    .line 579
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 581
    new-instance v5, Lcom/fusepowered/m1/android/MMException;

    const-string v6, "Millennial ad return failed. Zero content length returned."

    invoke-direct {v5, v6, v10}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z

    move v5, v9

    .line 582
    goto :goto_0

    .line 585
    :cond_1
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->saveMacId(Lorg/apache/http/HttpResponse;)V

    .line 587
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    .line 588
    .local v3, "httpHeader":Lorg/apache/http/Header;
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 591
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 593
    invoke-direct {p0, v2}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->isHandledJsonResponse(Lorg/apache/http/HttpEntity;)Z

    .line 628
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 595
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 598
    const-string v5, "X-MM-Video"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 600
    .local v4, "xHeader":Lorg/apache/http/Header;
    new-instance v5, Lcom/fusepowered/m1/android/HttpMMHeaders;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fusepowered/m1/android/HttpMMHeaders;-><init>([Lorg/apache/http/Header;)V

    iput-object v5, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    .line 602
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    iget-object v5, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v5, v5, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_3

    .line 607
    iget-object v5, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v5, v5, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 609
    .restart local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :cond_3
    if-eqz v0, :cond_4

    .line 611
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 612
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v5

    iget-object v6, v0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/fusepowered/m1/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 615
    .end local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    .end local v1    # "context":Landroid/content/Context;
    :cond_4
    invoke-direct {p0, v2}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->isHandledHtmlResponse(Lorg/apache/http/HttpEntity;)Z

    goto :goto_1

    .line 619
    .end local v4    # "xHeader":Lorg/apache/http/Header;
    :cond_5
    new-instance v5, Lcom/fusepowered/m1/android/MMException;

    const-string v6, "Millennial ad return failed. Invalid (JSON/HTML expected) mime type returned."

    invoke-direct {v5, v6, v11}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z

    move v5, v9

    .line 620
    goto/16 :goto_0

    .line 625
    :cond_6
    new-instance v5, Lcom/fusepowered/m1/android/MMException;

    const-string v6, "Millennial ad return failed. HTTP Header value null."

    invoke-direct {v5, v6, v11}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v5}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z

    move v5, v9

    .line 626
    goto/16 :goto_0
.end method

.method private saveMacId(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 633
    const-string v8, "Set-Cookie"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 634
    .local v2, "cookieHeaders":[Lorg/apache/http/Header;
    move-object v0, v2

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    .line 637
    .local v1, "cookieHeader":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 638
    .local v7, "value":Ljava/lang/String;
    const-string v8, "MAC-ID="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 639
    .local v5, "index":I
    if-ltz v5, :cond_0

    .line 641
    const/16 v8, 0x3b

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 642
    .local v3, "endIndex":I
    if-le v3, v5, :cond_0

    .line 643
    add-int/lit8 v8, v5, 0x7

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/fusepowered/m1/android/MMSDK;->macId:Ljava/lang/String;

    .line 634
    .end local v3    # "endIndex":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 646
    .end local v1    # "cookieHeader":Lorg/apache/http/Header;
    .end local v5    # "index":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method fail(Lcom/fusepowered/m1/android/MMException;)Z
    .locals 2
    .param p1, "mmError"    # Lcom/fusepowered/m1/android/MMException;

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, v1, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 472
    .restart local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :cond_0
    invoke-static {v0, p1}, Lcom/fusepowered/m1/android/MMSDK$Event;->requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    .line 473
    const/4 v1, 0x0

    return v1
.end method

.method failWithErrorMessage(Lcom/fusepowered/m1/android/MMException;)Z
    .locals 1
    .param p1, "mmError"    # Lcom/fusepowered/m1/android/MMException;

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->fail(Lcom/fusepowered/m1/android/MMException;)Z

    move-result v0

    return v0
.end method

.method failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z
    .locals 1
    .param p1, "mmError"    # Lcom/fusepowered/m1/android/MMException;

    .prologue
    .line 461
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->fail(Lcom/fusepowered/m1/android/MMException;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 483
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    .line 485
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 487
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 491
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->isAdUrlBuildable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v6, v3, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    .line 528
    .end local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :goto_0
    return-void

    .line 496
    .restart local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :cond_0
    :try_start_1
    new-instance v3, Lcom/fusepowered/m1/android/HttpGetRequest;

    invoke-direct {v3}, Lcom/fusepowered/m1/android/HttpGetRequest;-><init>()V

    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->adUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fusepowered/m1/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 497
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v2, :cond_1

    .line 499
    new-instance v3, Lcom/fusepowered/m1/android/MMException;

    const-string v4, "HTTP response is null."

    const/16 v5, 0xe

    invoke-direct {v3, v4, v5}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/fusepowered/m1/android/MMException;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v6, v3, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .line 503
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lcom/fusepowered/m1/android/MMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad request HTTP error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    invoke-direct {v3, v4, v5}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithErrorMessage(Lcom/fusepowered/m1/android/MMException;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 525
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v6, v3, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .line 509
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_3
    invoke-direct {p0, v2}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->isHandledResponse(Lorg/apache/http/HttpResponse;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 525
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v6, v3, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .line 514
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_4
    new-instance v3, Lcom/fusepowered/m1/android/MMException;

    const-string v4, "No network available, can\'t call for ads."

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 525
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v6, v3, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .end local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :cond_3
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v6, v3, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .line 519
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 521
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v3, Lcom/fusepowered/m1/android/MMException;

    const-string v4, "Request not filled, can\'t call for ads."

    const/16 v5, 0xe

    invoke-direct {v3, v4, v5}, Lcom/fusepowered/m1/android/MMException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->failWithInfoMessage(Lcom/fusepowered/m1/android/MMException;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 525
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v6, v3, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;->this$0:Lcom/fusepowered/m1/android/MMAdImplController;

    iput-object v6, v4, Lcom/fusepowered/m1/android/MMAdImplController;->requestAdRunnable:Lcom/fusepowered/m1/android/MMAdImplController$RequestAdRunnable;

    throw v3
.end method
