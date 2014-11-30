.class final Lcom/aarki/d$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aarki/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aarki/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aarki/d$1;


# direct methods
.method constructor <init>(Lcom/aarki/d$1;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to get user rewards. Http status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v0, v0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    iget-object v1, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v1, v1, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v1}, Lcom/aarki/d;->b(Lcom/aarki/d;)J

    move-result-wide v1

    const/4 v3, 0x1

    shl-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aarki/d;->a(Lcom/aarki/d;J)J

    .line 143
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const-string v0, "Set timer to MAX: "

    const-string v0, " sec."

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/aarki/b;->a()Lcom/aarki/b;

    move-result-object v0

    .line 78
    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    :try_start_0
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "rewards"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONArray: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 89
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 90
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 91
    const-string v4, "reward"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 92
    const-string v5, "user_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    const-string v6, "placement_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    const-string v7, "sha1_signature"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    const-string v7, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/aarki/b;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/aarki/c;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 106
    :goto_2
    :try_start_2
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Reward: user_id: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", placement_id: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", rewards: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", sha1_signature: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v3, v3, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v3}, Lcom/aarki/d;->a(Lcom/aarki/d;)Lcom/aarki/Aarki$RewardListener;

    move-result-object v3

    invoke-interface {v3, v6, v4}, Lcom/aarki/Aarki$RewardListener;->onFinished(Ljava/lang/String;I)V

    .line 112
    iget-object v3, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v3, v3, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    const-wide/16 v4, 0xe10

    invoke-static {v3, v4, v5}, Lcom/aarki/d;->a(Lcom/aarki/d;J)J

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set timer to MAX: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v4, v4, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v4}, Lcom/aarki/d;->b(Lcom/aarki/d;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 100
    :catch_0
    move-exception v8

    .line 101
    invoke-virtual {v8}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 132
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 102
    :catch_2
    move-exception v8

    .line 103
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 116
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 121
    :cond_3
    sget-boolean v0, Lcom/aarki/d;->a:Z

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v0, v0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    const-wide/16 v1, 0xe10

    invoke-static {v0, v1, v2}, Lcom/aarki/d;->a(Lcom/aarki/d;J)J

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set timer to MAX: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v1, v1, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v1}, Lcom/aarki/d;->b(Lcom/aarki/d;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v0, v0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    iget-object v1, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v1, v1, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v1}, Lcom/aarki/d;->b(Lcom/aarki/d;)J

    move-result-wide v1

    const/4 v3, 0x1

    shl-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aarki/d;->a(Lcom/aarki/d;J)J

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not justLaunched. Increase timer interval to : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aarki/d$1$1;->a:Lcom/aarki/d$1;

    iget-object v1, v1, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v1}, Lcom/aarki/d;->b(Lcom/aarki/d;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
