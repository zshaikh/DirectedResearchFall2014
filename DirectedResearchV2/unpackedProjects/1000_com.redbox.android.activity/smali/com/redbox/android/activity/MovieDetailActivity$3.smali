.class Lcom/redbox/android/activity/MovieDetailActivity$3;
.super Ljava/lang/Object;
.source "MovieDetailActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/MovieDetailActivity;->getMovieDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/MovieDetailActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/MovieDetailActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/MovieDetailActivity$3;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$3;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/MovieDetailActivity$3;)Lcom/redbox/android/activity/MovieDetailActivity;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$3;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 193
    .line 194
    const-string v0, "<<<<<<<<<<<<<<<<<<<Connection aborted>>>>>>>>>>>>>>>>"

    .line 193
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$3;->aborted:Z

    .line 197
    return-void
.end method

.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$3;->aborted:Z

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/MovieDetailActivity$3;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    invoke-virtual {v0, p1}, Lcom/redbox/android/activity/MovieDetailActivity;->showConnectionError(I)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 138
    iget-boolean v6, p0, Lcom/redbox/android/activity/MovieDetailActivity$3;->aborted:Z

    if-eqz v6, :cond_0

    .line 183
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v0, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 144
    .local v0, "detail":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "json":Lorg/json/JSONObject;
    const-string v6, "d"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 147
    .local v4, "movie":Lorg/json/JSONObject;
    new-instance v3, Lcom/redbox/android/model/MovieDetail;

    invoke-direct {v3, v4}, Lcom/redbox/android/model/MovieDetail;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    .local v3, "md":Lcom/redbox/android/model/MovieDetail;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    .line 151
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/redbox/android/activity/MovieDetailActivity$3;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget-object v7, v7, Lcom/redbox/android/activity/MovieDetailActivity;->movieFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 150
    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 152
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v5, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 166
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/redbox/android/activity/MovieDetailActivity$3;->this$0:Lcom/redbox/android/activity/MovieDetailActivity;

    iget-object v6, v6, Lcom/redbox/android/activity/MovieDetailActivity;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/redbox/android/activity/MovieDetailActivity$3$1;

    invoke-direct {v7, p0, v3}, Lcom/redbox/android/activity/MovieDetailActivity$3$1;-><init>(Lcom/redbox/android/activity/MovieDetailActivity$3;Lcom/redbox/android/model/MovieDetail;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 175
    .end local v0    # "detail":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "md":Lcom/redbox/android/model/MovieDetail;
    .end local v4    # "movie":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 177
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "md":Lcom/redbox/android/model/MovieDetail;
    .restart local v4    # "movie":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 157
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v6, "Error storing movie detail object to cache. FileNotfound"

    .line 156
    invoke-static {p0, v6}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 178
    .end local v0    # "detail":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "md":Lcom/redbox/android/model/MovieDetail;
    .end local v4    # "movie":Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 180
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "md":Lcom/redbox/android/model/MovieDetail;
    .restart local v4    # "movie":Lorg/json/JSONObject;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 162
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "Error storing movie detail object to cache. IOException"

    .line 161
    invoke-static {p0, v6}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1
.end method

.method public status(II)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 186
    return-void
.end method
