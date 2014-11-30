.class Lcom/mgeek/android/util/g;
.super Landroid/os/Handler;
.source "DataSyncScheduler.java"


# instance fields
.field final synthetic a:Lcom/mgeek/android/util/e;


# direct methods
.method public constructor <init>(Lcom/mgeek/android/util/e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mgeek/android/util/g;->a:Lcom/mgeek/android/util/e;

    .line 174
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 175
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 226
    const-string v0, "preload_time_consuming"

    const-string v1, "getdata_failed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preload Speeddial Data"

    invoke-static {v3}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 230
    if-nez p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "preload_data"

    const-string v1, "getdata_failed"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    .line 240
    const-string v0, "empty"

    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 242
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_0
    const-string v1, "preload_data"

    const-string v2, "getdata_success"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v0, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 248
    const-string v0, "preload_time_consuming"

    const-string v1, "getdata_success"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preload Speeddial Data"

    invoke-static {v3}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 252
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 182
    aget-object v1, v0, v7

    check-cast v1, Lcom/mgeek/android/util/h;

    .line 183
    aget-object v2, v0, v5

    .line 184
    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, [Lorg/apache/http/Header;

    check-cast v0, [Lorg/apache/http/Header;

    .line 185
    invoke-virtual {v1, v7}, Lcom/mgeek/android/util/h;->a(I)V

    .line 186
    instance-of v3, v1, Lcom/dolphin/browser/ui/launcher/a/g;

    if-eqz v3, :cond_0

    .line 187
    const-string v3, "App Start(First Start), load online home data successfully"

    invoke-static {v3}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/mgeek/android/util/g;->a:Lcom/mgeek/android/util/e;

    invoke-static {v3}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "start process data for url %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/mgeek/android/util/h;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mgeek/android/util/g;->a:Lcom/mgeek/android/util/e;

    invoke-static {v4}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Process data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mgeek/android/util/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v4

    .line 193
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 194
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v0}, Lcom/mgeek/android/util/h;->a(Lorg/json/JSONObject;[Lorg/apache/http/Header;)V

    .line 200
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/dolphin/browser/util/cw;->a()J

    .line 202
    invoke-virtual {v1}, Lcom/mgeek/android/util/h;->g()V

    goto :goto_0

    .line 195
    :cond_2
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 196
    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lcom/mgeek/android/util/g;->a(Lorg/json/JSONArray;)V

    .line 197
    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v0}, Lcom/mgeek/android/util/h;->a(Lorg/json/JSONArray;[Lorg/apache/http/Header;)V

    goto :goto_1

    .line 205
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 206
    aget-object v1, v0, v7

    check-cast v1, Lcom/mgeek/android/util/h;

    .line 207
    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Exception;

    .line 208
    invoke-virtual {v1, v5}, Lcom/mgeek/android/util/h;->a(I)V

    .line 209
    instance-of v2, v1, Lcom/dolphin/browser/ui/launcher/a/g;

    if-eqz v2, :cond_3

    .line 210
    const-string v2, "App Start(First Start), load online home data failed"

    invoke-static {v2}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 211
    invoke-direct {p0, v0}, Lcom/mgeek/android/util/g;->a(Ljava/lang/Exception;)V

    .line 213
    :cond_3
    iget-object v2, p0, Lcom/mgeek/android/util/g;->a:Lcom/mgeek/android/util/e;

    invoke-static {v2}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to get data for url %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/mgeek/android/util/h;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 214
    invoke-virtual {v1, v0}, Lcom/mgeek/android/util/h;->a(Ljava/lang/Exception;)V

    .line 215
    invoke-virtual {v1}, Lcom/mgeek/android/util/h;->g()V

    goto/16 :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/mgeek/android/util/g;->a:Lcom/mgeek/android/util/e;

    invoke-virtual {v0}, Lcom/mgeek/android/util/e;->b()V

    goto/16 :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
