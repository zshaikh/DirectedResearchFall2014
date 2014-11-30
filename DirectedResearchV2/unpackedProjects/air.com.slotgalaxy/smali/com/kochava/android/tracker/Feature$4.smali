.class Lcom/kochava/android/tracker/Feature$4;
.super Ljava/lang/Thread;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/android/tracker/Feature;->getAd(Landroid/webkit/WebView;Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kochava/android/tracker/Feature;

.field private final synthetic val$adWebview:Landroid/webkit/WebView;

.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$height:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/kochava/android/tracker/Feature;Landroid/app/Activity;IILandroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    iput-object p2, p0, Lcom/kochava/android/tracker/Feature$4;->val$context:Landroid/app/Activity;

    iput p3, p0, Lcom/kochava/android/tracker/Feature$4;->val$width:I

    iput p4, p0, Lcom/kochava/android/tracker/Feature$4;->val$height:I

    iput-object p5, p0, Lcom/kochava/android/tracker/Feature$4;->val$adWebview:Landroid/webkit/WebView;

    .line 1785
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1796
    const-string v27, ""

    .line 1801
    .local v27, "responseString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->val$context:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 1804
    .local v23, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object v5, v0

    # invokes: Lcom/kochava/android/tracker/Feature;->getAppPackageName()Ljava/lang/String;
    invoke-static {v5}, Lcom/kochava/android/tracker/Feature;->access$38(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1808
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v11, :cond_4

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v12, v5

    :goto_1
    check-cast v12, Ljava/lang/String;

    .line 1811
    .local v12, "applicationName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object v5, v0

    const/4 v6, 0x0

    # invokes: Lcom/kochava/android/tracker/Feature;->createHttpClient(Z)Lorg/apache/http/client/HttpClient;
    invoke-static {v5, v6}, Lcom/kochava/android/tracker/Feature;->access$31(Lcom/kochava/android/tracker/Feature;Z)Lorg/apache/http/client/HttpClient;

    move-result-object v17

    .line 1813
    .local v17, "httpclient":Lorg/apache/http/client/HttpClient;
    const/16 v24, 0x0

    .line 1815
    .local v24, "reader":Ljava/io/Reader;
    const/16 v26, 0x0

    .line 1818
    .local v26, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://bidder.kochava.com/adserver/request/?w="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kochava/android/tracker/Feature$4;->val$width:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1820
    const-string v6, "&h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kochava/android/tracker/Feature$4;->val$height:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1821
    const-string v6, "&odin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object v6, v0

    # invokes: Lcom/kochava/android/tracker/Feature;->getOdin()Ljava/lang/String;
    invoke-static {v6}, Lcom/kochava/android/tracker/Feature;->access$39(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1822
    const-string v6, "&open_udid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/kochava/android/tracker/Feature;->getOpenUDID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1823
    const-string v6, "&aid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object v6, v0

    # getter for: Lcom/kochava/android/tracker/Feature;->mAppId:Ljava/lang/String;
    invoke-static {v6}, Lcom/kochava/android/tracker/Feature;->access$40(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1824
    const-string v6, "&an="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1825
    const-string v6, "&av="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Android20130401"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1826
    const-string v6, "&kochava_device_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->this$0:Lcom/kochava/android/tracker/Feature;

    move-object v6, v0

    # invokes: Lcom/kochava/android/tracker/Feature;->getDeviceId()Ljava/lang/String;
    invoke-static {v6}, Lcom/kochava/android/tracker/Feature;->access$13(Lcom/kochava/android/tracker/Feature;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1818
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1831
    .local v18, "httppost":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface/range {v17 .. v18}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v26

    .line 1834
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    .line 1837
    .local v16, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v16, :cond_0

    .line 1839
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v19

    .line 1840
    .local v19, "is":Ljava/io/InputStream;
    new-instance v25, Ljava/io/InputStreamReader;

    const-string v5, "ISO-8859-1"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1841
    .end local v24    # "reader":Ljava/io/Reader;
    .local v25, "reader":Ljava/io/Reader;
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1842
    .local v13, "buffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x400

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v29, v0

    .line 1844
    .local v29, "tmp":[C
    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v20

    .local v20, "l":I
    const/4 v5, -0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_5

    .line 1849
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v27

    move-object/from16 v24, v25

    .line 1869
    .end local v13    # "buffer":Ljava/lang/StringBuilder;
    .end local v16    # "entity":Lorg/apache/http/HttpEntity;
    .end local v18    # "httppost":Lorg/apache/http/client/methods/HttpGet;
    .end local v19    # "is":Ljava/io/InputStream;
    .end local v20    # "l":I
    .end local v25    # "reader":Ljava/io/Reader;
    .end local v29    # "tmp":[C
    .restart local v24    # "reader":Ljava/io/Reader;
    :cond_0
    :goto_3
    const-string v28, ""

    .line 1870
    .local v28, "temp":Ljava/lang/String;
    const-string v10, ""

    .line 1872
    .local v10, "adUrl":Ljava/lang/String;
    sget-boolean v5, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1873
    const-string v5, "KochavaAds"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Response:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_1
    const-string v5, "href=\'(.*?)\'"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v22

    .line 1876
    .local v22, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 1877
    .local v21, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1879
    const/4 v5, 0x1

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    .line 1882
    :cond_2
    move-object/from16 v9, v28

    .line 1940
    .local v9, "clickUrl":Ljava/lang/String;
    const-string v5, "src=\'(.*?)\'"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v22

    .line 1941
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 1942
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1944
    const/4 v5, 0x1

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 1947
    :cond_3
    move-object v7, v10

    .line 1950
    .local v7, "fAdUrl":Ljava/lang/String;
    new-instance v4, Lcom/kochava/android/tracker/Feature$4$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->val$adWebview:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->val$context:Landroid/app/Activity;

    move-object v8, v0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/kochava/android/tracker/Feature$4$1;-><init>(Lcom/kochava/android/tracker/Feature$4;Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2022
    .local v4, "updateUI":Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kochava/android/tracker/Feature$4;->val$context:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2028
    return-void

    .line 1805
    .end local v4    # "updateUI":Ljava/lang/Thread;
    .end local v7    # "fAdUrl":Ljava/lang/String;
    .end local v9    # "clickUrl":Ljava/lang/String;
    .end local v10    # "adUrl":Ljava/lang/String;
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "applicationName":Ljava/lang/String;
    .end local v17    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v21    # "matcher":Ljava/util/regex/Matcher;
    .end local v22    # "pattern":Ljava/util/regex/Pattern;
    .end local v24    # "reader":Ljava/io/Reader;
    .end local v26    # "response":Lorg/apache/http/HttpResponse;
    .end local v28    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 1806
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v11, 0x0

    .restart local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_0

    .line 1808
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v5, "(unknown)"

    move-object v12, v5

    goto/16 :goto_1

    .line 1846
    .restart local v12    # "applicationName":Ljava/lang/String;
    .restart local v13    # "buffer":Ljava/lang/StringBuilder;
    .restart local v16    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v17    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v18    # "httppost":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "is":Ljava/io/InputStream;
    .restart local v20    # "l":I
    .restart local v25    # "reader":Ljava/io/Reader;
    .restart local v26    # "response":Lorg/apache/http/HttpResponse;
    .restart local v29    # "tmp":[C
    :cond_5
    const/4 v5, 0x0

    :try_start_3
    move-object v0, v13

    move-object/from16 v1, v29

    move v2, v5

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 1853
    .end local v13    # "buffer":Ljava/lang/StringBuilder;
    .end local v20    # "l":I
    .end local v29    # "tmp":[C
    :catch_1
    move-exception v5

    move-object v14, v5

    move-object/from16 v24, v25

    .line 1855
    .end local v16    # "entity":Lorg/apache/http/HttpEntity;
    .end local v18    # "httppost":Lorg/apache/http/client/methods/HttpGet;
    .end local v19    # "is":Ljava/io/InputStream;
    .end local v25    # "reader":Ljava/io/Reader;
    .local v14, "e":Ljava/io/IOException;
    .restart local v24    # "reader":Ljava/io/Reader;
    :goto_4
    sget-boolean v5, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 1856
    const-string v5, "KochavaAds"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problem grabbing ad: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_6
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1859
    .end local v14    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v15, v5

    .line 1861
    .local v15, "e1":Ljava/security/NoSuchAlgorithmException;
    :goto_5
    sget-boolean v5, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 1862
    const-string v5, "KochavaAds"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problem grabbing ad: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_7
    invoke-virtual {v15}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_3

    .line 1859
    .end local v15    # "e1":Ljava/security/NoSuchAlgorithmException;
    .end local v24    # "reader":Ljava/io/Reader;
    .restart local v16    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "httppost":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "is":Ljava/io/InputStream;
    .restart local v25    # "reader":Ljava/io/Reader;
    :catch_3
    move-exception v5

    move-object v15, v5

    move-object/from16 v24, v25

    .end local v25    # "reader":Ljava/io/Reader;
    .restart local v24    # "reader":Ljava/io/Reader;
    goto :goto_5

    .line 1853
    .end local v16    # "entity":Lorg/apache/http/HttpEntity;
    .end local v18    # "httppost":Lorg/apache/http/client/methods/HttpGet;
    .end local v19    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    move-object v14, v5

    goto :goto_4
.end method
