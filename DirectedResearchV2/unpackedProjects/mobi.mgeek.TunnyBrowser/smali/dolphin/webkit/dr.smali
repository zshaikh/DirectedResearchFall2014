.class public Ldolphin/webkit/dr;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Lcom/dolphin/player/o;


# static fields
.field protected static f:Lcom/dolphin/player/aj;

.field protected static i:Ljava/util/Timer;


# instance fields
.field private a:Z

.field protected c:Ldolphin/webkit/HTML5VideoViewProxy;

.field protected d:I

.field protected e:I

.field protected g:Landroid/net/Uri;

.field protected h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Z

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-boolean v0, p0, Ldolphin/webkit/dr;->k:Z

    .line 325
    iput-boolean v0, p0, Ldolphin/webkit/dr;->a:Z

    .line 148
    return-void
.end method

.method protected static a(Ljava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldolphin/webkit/HTML5VideoViewProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v0

    .line 153
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ldolphin/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 155
    if-eqz v1, :cond_0

    .line 156
    const-string v3, "Cookie"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    .line 159
    const-string v0, "x-hide-urls-from-log"

    const-string v1, "true"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1
    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public a(IILcom/dolphin/player/aj;)V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->m()I

    move-result v0

    invoke-virtual {p3}, Lcom/dolphin/player/aj;->m()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 138
    :cond_0
    sput-object p3, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    .line 141
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/dr;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 142
    iput p1, p0, Ldolphin/webkit/dr;->e:I

    .line 143
    iput p2, p0, Ldolphin/webkit/dr;->d:I

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/dr;->j:Z

    .line 145
    return-void
.end method

.method public a(ILdolphin/webkit/HTML5VideoViewProxy;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public a(Lcom/dolphin/player/j;)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public a(Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Ldolphin/webkit/dr;->a()V

    .line 217
    invoke-virtual {p0, p1}, Ldolphin/webkit/dr;->c(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 219
    invoke-virtual {p0, p1}, Ldolphin/webkit/dr;->d(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 220
    return-void
.end method

.method public a(Ldolphin/webkit/HTML5VideoViewProxy;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 267
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0, p1}, Lcom/dolphin/player/aj;->b(I)V

    goto :goto_0
.end method

.method public b(Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 0

    .prologue
    .line 249
    invoke-virtual {p0}, Ldolphin/webkit/dr;->pause()V

    .line 250
    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Ldolphin/webkit/HTML5VideoViewProxy;->c()V

    .line 253
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 3

    .prologue
    .line 172
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/dr;->g:Landroid/net/Uri;

    .line 173
    invoke-static {p1, p2}, Ldolphin/webkit/dr;->a(Ljava/lang/String;Ldolphin/webkit/HTML5VideoViewProxy;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/dr;->h:Ljava/util/Map;

    .line 175
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    iget-object v1, p0, Ldolphin/webkit/dr;->g:Landroid/net/Uri;

    iget-object v2, p0, Ldolphin/webkit/dr;->h:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/player/aj;->a(Landroid/net/Uri;Ljava/util/Map;)V

    .line 178
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 306
    iput-boolean p1, p0, Ldolphin/webkit/dr;->k:Z

    .line 307
    invoke-virtual {p0, p1}, Ldolphin/webkit/dr;->a(Z)V

    .line 308
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 1

    .prologue
    .line 182
    iput-object p1, p0, Ldolphin/webkit/dr;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 185
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0, p1}, Lcom/dolphin/player/aj;->a(Lcom/dolphin/player/at;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 328
    iput-boolean p1, p0, Ldolphin/webkit/dr;->a:Z

    .line 329
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public d(Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 2

    .prologue
    .line 194
    :try_start_0
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {p1}, Ldolphin/webkit/HTML5VideoViewProxy;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/player/aj;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 202
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 199
    :catch_2
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Ldolphin/webkit/HTML5VideoViewProxy;)V
    .locals 1

    .prologue
    .line 205
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->b()V

    .line 207
    invoke-virtual {p0, p1}, Ldolphin/webkit/dr;->d(Ldolphin/webkit/HTML5VideoViewProxy;)V

    .line 209
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 79
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->h()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, -0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->g()I

    move-result v0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->b()V

    .line 107
    :cond_0
    return-void
.end method

.method public k()I
    .locals 1

    .prologue
    .line 111
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->k()I

    move-result v0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 118
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->l()I

    move-result v0

    goto :goto_0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->j()V

    .line 129
    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Ldolphin/webkit/dr;->j:Z

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Ldolphin/webkit/dr;->e:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 228
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x4

    .line 231
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->i()I

    move-result v0

    goto :goto_0
.end method

.method public p_()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->d()V

    .line 68
    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Ldolphin/webkit/dr;->k:Z

    return v0
.end method

.method public q_()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Ldolphin/webkit/dr;->a:Z

    return v0
.end method

.method public r_()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0, p1}, Lcom/dolphin/player/aj;->a(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Ldolphin/webkit/dr;->f:Lcom/dolphin/player/aj;

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->c()V

    .line 62
    :cond_0
    return-void
.end method
