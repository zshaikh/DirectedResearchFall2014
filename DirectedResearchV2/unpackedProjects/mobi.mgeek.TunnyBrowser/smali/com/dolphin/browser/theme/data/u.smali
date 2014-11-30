.class public Lcom/dolphin/browser/theme/data/u;
.super Lcom/dolphin/browser/theme/data/a;
.source "WallPaper.java"


# instance fields
.field protected q:Ljava/lang/String;

.field protected r:Lcom/dolphin/browser/theme/data/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/a;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/data/a;-><init>(I)V

    .line 32
    return-void
.end method

.method public static final b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/u;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 129
    :goto_0
    return-object v0

    .line 124
    :cond_1
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/u;->a(Ljava/lang/String;)I

    move-result v2

    .line 125
    new-instance v0, Lcom/dolphin/browser/theme/data/u;

    invoke-direct {v0, v2}, Lcom/dolphin/browser/theme/data/u;-><init>(I)V

    .line 126
    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/theme/data/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 129
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/u;->r:Lcom/dolphin/browser/theme/data/t;

    new-instance v1, Lcom/dolphin/browser/theme/c/o;

    invoke-direct {v1, p1, p0}, Lcom/dolphin/browser/theme/c/o;-><init>(Lcom/dolphin/browser/theme/c/g;Lcom/dolphin/browser/theme/data/u;)V

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/theme/data/t;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;)V
    .locals 1

    .prologue
    .line 68
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/data/a;->a(Lcom/dolphin/browser/theme/data/a;)V

    .line 72
    instance-of v0, p1, Lcom/dolphin/browser/theme/data/u;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/dolphin/browser/theme/data/u;

    iget-object v0, p1, Lcom/dolphin/browser/theme/data/u;->r:Lcom/dolphin/browser/theme/data/t;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/u;->r:Lcom/dolphin/browser/theme/data/t;

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 87
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/u;->b:Ljava/lang/String;

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iput-object p2, p0, Lcom/dolphin/browser/theme/data/u;->f:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/u;->c:Ljava/lang/String;

    .line 91
    const-string v0, "icon_v10"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/u;->d:Ljava/lang/String;

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/u;->q:Ljava/lang/String;

    .line 97
    :cond_1
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    sget-object v0, Lcom/dolphin/browser/theme/data/t;->m:Lcom/dolphin/browser/theme/data/t;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/u;->r:Lcom/dolphin/browser/theme/data/t;

    .line 113
    :goto_0
    const-string v0, "package"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/dolphin/browser/theme/data/u;->g:Ljava/lang/String;

    .line 115
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/dolphin/browser/theme/data/u;->l:Ljava/lang/String;

    .line 117
    return-void

    .line 103
    :cond_2
    :try_start_0
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 108
    :goto_1
    new-instance v1, Lcom/dolphin/browser/theme/data/t;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/theme/data/t;-><init>(II)V

    iput-object v1, p0, Lcom/dolphin/browser/theme/data/u;->r:Lcom/dolphin/browser/theme/data/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    sget-object v0, Lcom/dolphin/browser/theme/data/t;->m:Lcom/dolphin/browser/theme/data/t;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/u;->r:Lcom/dolphin/browser/theme/data/t;

    goto :goto_0

    .line 106
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/data/a;->a(Z)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/theme/data/u;->a(J)V

    .line 61
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->g(I)V

    goto :goto_0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/u;->r:Lcom/dolphin/browser/theme/data/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/t;->k()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->e()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->f()I

    move-result v0

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/u;->q:Ljava/lang/String;

    return-object v0
.end method
