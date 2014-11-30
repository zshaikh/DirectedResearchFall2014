.class public Lcom/dolphin/browser/theme/data/r;
.super Lcom/dolphin/browser/theme/data/g;
.source "PromotedWallPaper.java"

# interfaces
.implements Lcom/dolphin/browser/theme/data/n;


# instance fields
.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field private s:Lcom/dolphin/browser/theme/data/n;

.field private t:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/data/g;-><init>(Lcom/dolphin/browser/theme/data/u;)V

    .line 26
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/theme/data/r;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 137
    if-nez p0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 142
    :try_start_0
    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 144
    new-instance v1, Lcom/dolphin/browser/theme/data/r;

    invoke-direct {v1}, Lcom/dolphin/browser/theme/data/r;-><init>()V

    .line 145
    iput v3, v1, Lcom/dolphin/browser/theme/data/r;->a:I

    .line 146
    if-ne v2, v4, :cond_2

    .line 148
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/dolphin/browser/theme/data/r;->t:Z

    move-object v0, v1

    .line 149
    goto :goto_0

    .line 150
    :cond_2
    if-le v2, v4, :cond_0

    .line 151
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    const-string v3, "icon"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    const-string v4, "download_url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/dolphin/browser/theme/data/r;->j:Z

    .line 155
    iput-object v2, v1, Lcom/dolphin/browser/theme/data/r;->b:Ljava/lang/String;

    .line 156
    iput-object v3, v1, Lcom/dolphin/browser/theme/data/r;->p:Ljava/lang/String;

    .line 157
    iput-object v4, v1, Lcom/dolphin/browser/theme/data/r;->o:Ljava/lang/String;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/dolphin/browser/theme/data/r;->h:J

    .line 159
    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/r;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 160
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    const-string v1, "failed to parse a faked wallpaper."

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/data/n;->a(Landroid/net/Uri;)V

    .line 107
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/o;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/data/n;->a(Lcom/dolphin/browser/theme/data/o;)V

    .line 97
    return-void
.end method

.method public b(Lcom/dolphin/browser/theme/data/o;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/data/n;->b(Lcom/dolphin/browser/theme/data/o;)V

    .line 103
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c_()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/r;->t:Z

    return v0
.end method

.method public d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->p:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e_()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->e_()V

    .line 77
    return-void
.end method

.method public f_()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->f_()I

    move-result v0

    return v0
.end method

.method public g_()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->g_()V

    .line 92
    return-void
.end method

.method public h_()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/data/r;->n:Z

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
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->i()Landroid/net/Uri;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->j()V

    .line 182
    :cond_0
    return-void
.end method

.method public q()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/dolphin/browser/theme/data/g;->q()Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    :try_start_0
    const-string v0, "download_url"

    iget-object v2, p0, Lcom/dolphin/browser/theme/data/r;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v0, "icon"

    iget-object v2, p0, Lcom/dolphin/browser/theme/data/r;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/dolphin/browser/theme/data/r;->h:J

    return-wide v0
.end method

.method public x()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/dolphin/browser/theme/data/j;

    iget v1, p0, Lcom/dolphin/browser/theme/data/r;->a:I

    iget-object v2, p0, Lcom/dolphin/browser/theme/data/r;->o:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/theme/data/j;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/r;->s:Lcom/dolphin/browser/theme/data/n;

    .line 72
    :cond_0
    return-void
.end method
