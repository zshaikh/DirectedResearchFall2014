.class public Lcom/dolphin/browser/theme/data/s;
.super Lcom/dolphin/browser/theme/data/a;
.source "Theme.java"


# instance fields
.field private m:Lcom/dolphin/browser/theme/data/b;

.field protected q:I

.field protected r:I

.field protected s:Lcom/dolphin/browser/theme/data/t;

.field protected t:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Lcom/dolphin/browser/theme/data/a;-><init>()V

    .line 29
    iput v0, p0, Lcom/dolphin/browser/theme/data/s;->q:I

    .line 30
    iput v0, p0, Lcom/dolphin/browser/theme/data/s;->r:I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/data/a;-><init>(I)V

    .line 29
    iput v0, p0, Lcom/dolphin/browser/theme/data/s;->q:I

    .line 30
    iput v0, p0, Lcom/dolphin/browser/theme/data/s;->r:I

    .line 41
    return-void
.end method

.method public static final b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/dolphin/browser/theme/data/s;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 187
    :goto_0
    return-object v0

    .line 181
    :cond_1
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/s;->a(Ljava/lang/String;)I

    move-result v2

    .line 182
    new-instance v0, Lcom/dolphin/browser/theme/data/s;

    invoke-direct {v0, v2}, Lcom/dolphin/browser/theme/data/s;-><init>(I)V

    .line 183
    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/theme/data/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 187
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/s;->s:Lcom/dolphin/browser/theme/data/t;

    new-instance v1, Lcom/dolphin/browser/theme/c/l;

    iget-object v2, p0, Lcom/dolphin/browser/theme/data/s;->f:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/dolphin/browser/theme/c/l;-><init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/theme/data/t;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/dolphin/browser/theme/data/b;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/s;->m:Lcom/dolphin/browser/theme/data/b;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/s;->m:Lcom/dolphin/browser/theme/data/b;

    .line 62
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/theme/data/s;->r:I

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 54
    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/dolphin/browser/theme/data/b;->a:Lcom/dolphin/browser/theme/data/b;

    .line 61
    :goto_1
    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->m:Lcom/dolphin/browser/theme/data/b;

    goto :goto_0

    .line 56
    :cond_1
    if-lez v0, :cond_2

    .line 57
    sget-object v0, Lcom/dolphin/browser/theme/data/b;->c:Lcom/dolphin/browser/theme/data/b;

    goto :goto_1

    .line 59
    :cond_2
    sget-object v0, Lcom/dolphin/browser/theme/data/b;->b:Lcom/dolphin/browser/theme/data/b;

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/theme/data/s;

    if-eqz v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/data/a;->a(Lcom/dolphin/browser/theme/data/a;)V

    .line 113
    check-cast p1, Lcom/dolphin/browser/theme/data/s;

    .line 114
    iget v0, p1, Lcom/dolphin/browser/theme/data/s;->q:I

    iput v0, p0, Lcom/dolphin/browser/theme/data/s;->q:I

    .line 115
    iget v0, p1, Lcom/dolphin/browser/theme/data/s;->r:I

    iput v0, p0, Lcom/dolphin/browser/theme/data/s;->r:I

    .line 116
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/s;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->c:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/dolphin/browser/theme/data/s;->s:Lcom/dolphin/browser/theme/data/t;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->s:Lcom/dolphin/browser/theme/data/t;

    .line 118
    iput-object v1, p0, Lcom/dolphin/browser/theme/data/s;->e:Ljava/lang/ref/SoftReference;

    .line 119
    iput-object v1, p0, Lcom/dolphin/browser/theme/data/s;->m:Lcom/dolphin/browser/theme/data/b;

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 141
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/s;->a(Ljava/lang/String;)I

    move-result v0

    .line 142
    const-string v1, "compatibility"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/data/s;->a(Ljava/lang/String;)I

    move-result v1

    .line 143
    iput v0, p0, Lcom/dolphin/browser/theme/data/s;->q:I

    .line 144
    iput v1, p0, Lcom/dolphin/browser/theme/data/s;->r:I

    .line 145
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->b:Ljava/lang/String;

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
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

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->c:Ljava/lang/String;

    .line 148
    const-string v0, "icon_v10"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
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

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->d:Ljava/lang/String;

    .line 152
    :cond_0
    iput-object p2, p0, Lcom/dolphin/browser/theme/data/s;->f:Ljava/lang/String;

    .line 154
    :cond_1
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    sget-object v0, Lcom/dolphin/browser/theme/data/t;->m:Lcom/dolphin/browser/theme/data/t;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->s:Lcom/dolphin/browser/theme/data/t;

    .line 170
    :goto_0
    const-string v0, "package"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->g:Ljava/lang/String;

    .line 172
    const-string v0, "theme_pkg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->t:Ljava/lang/String;

    .line 174
    return-void

    .line 160
    :cond_2
    :try_start_0
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 165
    :goto_1
    new-instance v1, Lcom/dolphin/browser/theme/data/t;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/theme/data/t;-><init>(II)V

    iput-object v1, p0, Lcom/dolphin/browser/theme/data/s;->s:Lcom/dolphin/browser/theme/data/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    sget-object v0, Lcom/dolphin/browser/theme/data/t;->m:Lcom/dolphin/browser/theme/data/t;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/s;->s:Lcom/dolphin/browser/theme/data/t;

    goto :goto_0

    .line 163
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
    .line 68
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/data/a;->a(Z)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/theme/data/s;->a(J)V

    .line 74
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->g(I)V

    goto :goto_0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/s;->s:Lcom/dolphin/browser/theme/data/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/t;->k()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->i()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->j()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/s;->t:Ljava/lang/String;

    return-object v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/dolphin/browser/theme/data/s;->r:I

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/dolphin/browser/theme/data/s;->q:I

    return v0
.end method
