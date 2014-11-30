.class public Lcom/acmeaom/android/b/c/k/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/acmeaom/android/b/c/k/d;

.field private b:Lcom/acmeaom/android/b/c/k/c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;

.field private g:Lcom/acmeaom/android/a/a/b/j;

.field private h:Lcom/acmeaom/android/a/a/b/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method private a(F)Lcom/acmeaom/android/a/i/d;
    .locals 6

    .prologue
    const/high16 v2, 0x3f000000

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    .line 286
    sget-object v3, Lcom/acmeaom/android/b/c/k/b;->b:[I

    iget-object v4, p0, Lcom/acmeaom/android/b/c/k/a;->b:Lcom/acmeaom/android/b/c/k/c;

    invoke-virtual {v4}, Lcom/acmeaom/android/b/c/k/c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v0, v2

    move v1, v2

    .line 369
    :goto_0
    :pswitch_0
    new-instance v3, Lcom/acmeaom/android/a/i/d;

    mul-float/2addr v2, p1

    mul-float/2addr v1, p1

    mul-float/2addr v0, p1

    invoke-direct {v3, v2, v1, v0, p1}, Lcom/acmeaom/android/a/i/d;-><init>(FFFF)V

    return-object v3

    .line 288
    :pswitch_1
    sget-object v3, Lcom/acmeaom/android/b/c/k/b;->a:[I

    iget-object v4, p0, Lcom/acmeaom/android/b/c/k/a;->a:Lcom/acmeaom/android/b/c/k/d;

    invoke-virtual {v4}, Lcom/acmeaom/android/b/c/k/d;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    move v2, v1

    move v1, v0

    .line 340
    goto :goto_0

    :pswitch_2
    move v2, v0

    .line 300
    goto :goto_0

    :pswitch_3
    move v2, v0

    move v0, v1

    .line 313
    goto :goto_0

    :pswitch_4
    move v2, v0

    move v5, v0

    move v0, v1

    move v1, v5

    .line 319
    goto :goto_0

    :pswitch_5
    move v5, v1

    move v1, v0

    move v0, v5

    .line 328
    goto :goto_0

    :pswitch_6
    move v2, v1

    move v5, v0

    move v0, v1

    move v1, v5

    .line 334
    goto :goto_0

    :pswitch_7
    move v5, v2

    move v2, v1

    move v1, v5

    .line 348
    goto :goto_0

    :pswitch_8
    move v2, v1

    .line 354
    goto :goto_0

    :pswitch_9
    move v1, v2

    .line 360
    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 288
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static b(Lcom/acmeaom/android/b/c/k/c;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/acmeaom/android/b/c/k/b;->b:[I

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 197
    :pswitch_0
    const-string v0, "Warning"

    goto :goto_0

    .line 199
    :pswitch_1
    const-string v0, "Watch"

    goto :goto_0

    .line 201
    :pswitch_2
    const-string v0, "Advisory"

    goto :goto_0

    .line 203
    :pswitch_3
    const-string v0, "Statement"

    goto :goto_0

    .line 205
    :pswitch_4
    const-string v0, "Forecast"

    goto :goto_0

    .line 207
    :pswitch_5
    const-string v0, "Outlook"

    goto :goto_0

    .line 209
    :pswitch_6
    const-string v0, "Synopsis"

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static b(Lcom/acmeaom/android/b/c/k/d;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/acmeaom/android/b/c/k/b;->a:[I

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 190
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 173
    :pswitch_0
    const-string v0, "Areal Flood"

    goto :goto_0

    .line 175
    :pswitch_1
    const-string v0, "Flash Flood"

    goto :goto_0

    .line 177
    :pswitch_2
    const-string v0, "Marine"

    goto :goto_0

    .line 179
    :pswitch_3
    const-string v0, "Severe T-storm"

    goto :goto_0

    .line 181
    :pswitch_4
    const-string v0, "Tornado"

    goto :goto_0

    .line 184
    :pswitch_5
    const-string v0, "Tropical Storm"

    goto :goto_0

    .line 187
    :pswitch_6
    const-string v0, "Hurricane"

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;)Lcom/acmeaom/android/b/c/k/d;
    .locals 1

    .prologue
    .line 121
    const-string v0, "FA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->b:Lcom/acmeaom/android/b/c/k/d;

    .line 144
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const-string v0, "FF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->c:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "MA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->d:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "SV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->e:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0

    .line 129
    :cond_3
    const-string v0, "TO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->f:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0

    .line 131
    :cond_4
    const-string v0, "TR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->g:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0

    .line 133
    :cond_5
    const-string v0, "TI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->h:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0

    .line 135
    :cond_6
    const-string v0, "HU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->i:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0

    .line 137
    :cond_7
    const-string v0, "HI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->j:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0

    .line 139
    :cond_8
    const-string v0, "TS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->k:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0

    .line 142
    :cond_9
    sget-object v0, Lcom/acmeaom/android/b/c/k/d;->a:Lcom/acmeaom/android/b/c/k/d;

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Lcom/acmeaom/android/b/c/k/c;
    .locals 1

    .prologue
    .line 150
    const-string v0, "W"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/acmeaom/android/b/c/k/c;->b:Lcom/acmeaom/android/b/c/k/c;

    .line 167
    :goto_0
    return-object v0

    .line 152
    :cond_0
    const-string v0, "A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    sget-object v0, Lcom/acmeaom/android/b/c/k/c;->c:Lcom/acmeaom/android/b/c/k/c;

    goto :goto_0

    .line 154
    :cond_1
    const-string v0, "Y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    sget-object v0, Lcom/acmeaom/android/b/c/k/c;->d:Lcom/acmeaom/android/b/c/k/c;

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, "S"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    sget-object v0, Lcom/acmeaom/android/b/c/k/c;->e:Lcom/acmeaom/android/b/c/k/c;

    goto :goto_0

    .line 158
    :cond_3
    const-string v0, "F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    sget-object v0, Lcom/acmeaom/android/b/c/k/c;->f:Lcom/acmeaom/android/b/c/k/c;

    goto :goto_0

    .line 160
    :cond_4
    const-string v0, "O"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    sget-object v0, Lcom/acmeaom/android/b/c/k/c;->g:Lcom/acmeaom/android/b/c/k/c;

    goto :goto_0

    .line 162
    :cond_5
    const-string v0, "N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    sget-object v0, Lcom/acmeaom/android/b/c/k/c;->h:Lcom/acmeaom/android/b/c/k/c;

    goto :goto_0

    .line 165
    :cond_6
    sget-object v0, Lcom/acmeaom/android/b/c/k/c;->a:Lcom/acmeaom/android/b/c/k/c;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/a/b/j;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/a;->g:Lcom/acmeaom/android/a/a/b/j;

    .line 62
    return-void
.end method

.method public a(Lcom/acmeaom/android/b/c/k/c;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/a;->b:Lcom/acmeaom/android/b/c/k/c;

    .line 34
    return-void
.end method

.method public a(Lcom/acmeaom/android/b/c/k/d;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/a;->a:Lcom/acmeaom/android/b/c/k/d;

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/a;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/a;->f:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Lcom/acmeaom/android/a/a/b/j;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/a;->h:Lcom/acmeaom/android/a/a/b/j;

    .line 66
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/a;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/acmeaom/android/b/c/k/a;->e:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/k/a;->j()Lcom/acmeaom/android/b/c/k/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/acmeaom/android/a/a/b/j;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->g:Lcom/acmeaom/android/a/a/b/j;

    return-object v0
.end method

.method public f()Lcom/acmeaom/android/a/a/b/j;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->h:Lcom/acmeaom/android/a/a/b/j;

    return-object v0
.end method

.method g()Lcom/acmeaom/android/a/i/d;
    .locals 1

    .prologue
    .line 218
    const/high16 v0, 0x3f800000

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/k/a;->a(F)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    return-object v0
.end method

.method h()Lcom/acmeaom/android/a/i/d;
    .locals 1

    .prologue
    .line 222
    const/high16 v0, 0x3f000000

    invoke-direct {p0, v0}, Lcom/acmeaom/android/b/c/k/a;->a(F)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 228
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->c:Ljava/lang/String;

    .line 229
    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->a:Lcom/acmeaom/android/b/c/k/d;

    invoke-static {v0}, Lcom/acmeaom/android/b/c/k/a;->b(Lcom/acmeaom/android/b/c/k/d;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/acmeaom/android/b/c/k/a;->d:Ljava/lang/String;

    .line 233
    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/acmeaom/android/b/c/k/a;->b:Lcom/acmeaom/android/b/c/k/c;

    invoke-static {v1}, Lcom/acmeaom/android/b/c/k/a;->b(Lcom/acmeaom/android/b/c/k/c;)Ljava/lang/String;

    move-result-object v1

    .line 237
    :cond_1
    if-eqz v1, :cond_2

    .line 240
    const-string v2, " "

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 243
    new-instance v4, Lcom/acmeaom/android/a/a/b/q;

    invoke-direct {v4, v3}, Lcom/acmeaom/android/a/a/b/q;-><init>(I)V

    .line 244
    invoke-virtual {v4, v0}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v4, v2}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v4, v1}, Lcom/acmeaom/android/a/a/b/q;->a(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v4}, Lcom/acmeaom/android/a/a/b/q;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_2
    return-object v0
.end method

.method public j()Lcom/acmeaom/android/b/c/k/a;
    .locals 1

    .prologue
    .line 374
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/k/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/Throwable;)V

    .line 379
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lcom/acmeaom/android/b/c/k/d;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->a:Lcom/acmeaom/android/b/c/k/d;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 6

    .prologue
    .line 391
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->g:Lcom/acmeaom/android/a/a/b/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->h:Lcom/acmeaom/android/a/a/b/j;

    if-nez v0, :cond_0

    .line 392
    const-string v0, ""

    .line 425
    :goto_0
    return-object v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/k/a;->h:Lcom/acmeaom/android/a/a/b/j;

    if-nez v0, :cond_1

    .line 396
    const-string v0, "Ongoing until further notice"

    goto :goto_0

    .line 399
    :cond_1
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/b/j;-><init>()V

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/j;->e()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 400
    iget-object v2, p0, Lcom/acmeaom/android/b/c/k/a;->h:Lcom/acmeaom/android/a/a/b/j;

    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/j;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 401
    sub-long v0, v2, v0

    .line 403
    const v2, 0x36ee80

    .line 404
    int-to-long v3, v2

    div-long v3, v0, v3

    long-to-int v3, v3

    .line 405
    mul-int/2addr v2, v3

    int-to-long v4, v2

    sub-long/2addr v0, v4

    .line 406
    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 408
    if-ltz v3, :cond_2

    if-gtz v0, :cond_3

    .line 409
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 412
    :cond_3
    const/16 v1, 0x17

    if-le v3, v1, :cond_6

    .line 413
    const/16 v0, 0x30

    if-ge v3, v0, :cond_4

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hrs remaining"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_4
    div-int/lit8 v0, v3, 0x18

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " day"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    const-string v0, "s"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remaining"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_1

    .line 421
    :cond_6
    if-nez v3, :cond_7

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min remaining"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 425
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min remaining"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
