.class public Lcom/dolphin/browser/s/q;
.super Ljava/lang/Object;
.source "SparkTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/dolphin/browser/s/q;->f:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/dolphin/browser/s/q;->g:Ljava/lang/String;

    .line 51
    iput-boolean p6, p0, Lcom/dolphin/browser/s/q;->c:Z

    .line 52
    iput-boolean p7, p0, Lcom/dolphin/browser/s/q;->d:Z

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/s/q;->h:Ljava/util/Stack;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    .line 32
    iput-boolean v0, p0, Lcom/dolphin/browser/s/q;->c:Z

    .line 33
    iput-boolean v0, p0, Lcom/dolphin/browser/s/q;->d:Z

    .line 34
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/s/q;->h:Ljava/util/Stack;

    .line 35
    const-string v0, "body"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    const-string v1, "*"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    .line 39
    :cond_0
    const-string v0, "title"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    const-string v1, "*"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/s/q;->g:Ljava/lang/String;

    .line 43
    :cond_1
    return-void
.end method

.method public static a(Lcom/dolphin/browser/s/q;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    :try_start_0
    const-string v1, "tid"

    iget-object v2, p0, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "entry"

    iget-object v2, p0, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v1, "textToSharePlain"

    iget-object v2, p0, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "textToShareEncoded"

    iget-object v2, p0, Lcom/dolphin/browser/s/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v1, "title"

    iget-object v2, p0, Lcom/dolphin/browser/s/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v1, "confirmed"

    iget-boolean v2, p0, Lcom/dolphin/browser/s/q;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 164
    const-string v1, "readyToShow"

    iget-boolean v2, p0, Lcom/dolphin/browser/s/q;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 170
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/dolphin/browser/s/q;
    .locals 9

    .prologue
    .line 176
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/dolphin/browser/s/q;

    const-string v1, "tid"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "entry"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "textToSharePlain"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "textToShareEncoded"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "confirmed"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "readyToShow"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/s/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 188
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dolphin/browser/s/q;->f:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/dolphin/browser/s/q;->c:Z

    .line 94
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/s/q;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/dolphin/browser/s/q;->d:Z

    .line 102
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/s/q;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    check-cast p1, Lcom/dolphin/browser/s/q;

    .line 135
    iget-object v2, p0, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 136
    iget-object v2, p1, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 137
    goto :goto_0

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 139
    goto :goto_0

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 141
    iget-object v2, p1, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 142
    goto :goto_0

    .line 143
    :cond_6
    iget-object v2, p0, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 144
    goto :goto_0

    .line 145
    :cond_7
    iget-object v2, p0, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 146
    iget-object v2, p1, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_8
    iget-object v2, p0, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/dolphin/browser/s/q;->c:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/dolphin/browser/s/q;->d:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 121
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 123
    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SparkTask [mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/s/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/s/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfirmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dolphin/browser/s/q;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTextToSharePlain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/s/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTextToShareEncoded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/s/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/s/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/s/q;->h:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
