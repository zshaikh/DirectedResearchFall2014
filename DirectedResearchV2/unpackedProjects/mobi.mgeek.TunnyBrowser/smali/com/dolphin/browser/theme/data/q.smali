.class public Lcom/dolphin/browser/theme/data/q;
.super Lcom/dolphin/browser/theme/data/f;
.source "PromotedTheme.java"

# interfaces
.implements Lcom/dolphin/browser/theme/data/n;


# instance fields
.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field private u:Lcom/dolphin/browser/theme/data/n;

.field private v:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/data/f;-><init>(Lcom/dolphin/browser/theme/data/s;)V

    .line 27
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/theme/data/q;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 141
    if-nez p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 146
    :try_start_0
    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 148
    new-instance v1, Lcom/dolphin/browser/theme/data/q;

    invoke-direct {v1}, Lcom/dolphin/browser/theme/data/q;-><init>()V

    .line 149
    iput v3, v1, Lcom/dolphin/browser/theme/data/q;->a:I

    .line 150
    if-ne v2, v4, :cond_2

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/dolphin/browser/theme/data/q;->v:Z

    move-object v0, v1

    .line 153
    goto :goto_0

    .line 154
    :cond_2
    if-le v2, v4, :cond_0

    .line 155
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    const-string v3, "icon"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v4, "download_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    const-string v5, "c_version"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 159
    const-string v6, "version"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 160
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/dolphin/browser/theme/data/q;->j:Z

    .line 161
    iput-object v2, v1, Lcom/dolphin/browser/theme/data/q;->b:Ljava/lang/String;

    .line 162
    iput-object v3, v1, Lcom/dolphin/browser/theme/data/q;->p:Ljava/lang/String;

    .line 163
    iput-object v4, v1, Lcom/dolphin/browser/theme/data/q;->o:Ljava/lang/String;

    .line 164
    iput v5, v1, Lcom/dolphin/browser/theme/data/q;->r:I

    .line 165
    iput v6, v1, Lcom/dolphin/browser/theme/data/q;->q:I

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/dolphin/browser/theme/data/q;->h:J

    .line 167
    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/q;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 168
    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    const-string v1, "failed to parse a faked theme."

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/data/n;->a(Landroid/net/Uri;)V

    .line 110
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/o;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/data/n;->a(Lcom/dolphin/browser/theme/data/o;)V

    .line 101
    return-void
.end method

.method public b(Lcom/dolphin/browser/theme/data/o;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/data/n;->b(Lcom/dolphin/browser/theme/data/o;)V

    .line 106
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c_()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/q;->v:Z

    return v0
.end method

.method public d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->p:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e_()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->e_()V

    .line 81
    return-void
.end method

.method public f_()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->f_()I

    move-result v0

    return v0
.end method

.method public g_()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->g_()V

    .line 96
    return-void
.end method

.method public h_()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/q;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->i()Landroid/net/Uri;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->j()V

    .line 189
    :cond_0
    return-void
.end method

.method public q()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/dolphin/browser/theme/data/f;->q()Lorg/json/JSONObject;

    move-result-object v1

    .line 130
    :try_start_0
    const-string v0, "c_version"

    iget v2, p0, Lcom/dolphin/browser/theme/data/q;->r:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v0, "version"

    iget v2, p0, Lcom/dolphin/browser/theme/data/q;->q:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string v0, "download_url"

    iget-object v2, p0, Lcom/dolphin/browser/theme/data/q;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v0, "icon"

    iget-object v2, p0, Lcom/dolphin/browser/theme/data/q;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public z()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/dolphin/browser/theme/data/j;

    iget v1, p0, Lcom/dolphin/browser/theme/data/q;->a:I

    iget-object v2, p0, Lcom/dolphin/browser/theme/data/q;->o:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/theme/data/j;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/q;->u:Lcom/dolphin/browser/theme/data/n;

    .line 76
    :cond_0
    return-void
.end method
