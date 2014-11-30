.class public Lcom/acmeaom/android/b/c/g/d;
.super Lcom/acmeaom/android/b/c/g/e;
.source "ProGuard"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Number;

.field private e:Ljava/lang/Number;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Number;

.field private i:Ljava/lang/Number;

.field private j:Lcom/acmeaom/android/a/a/b/o;

.field private k:Lcom/acmeaom/android/a/a/b/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/g/e;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/acmeaom/android/b/c/g/d;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private a(F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    float-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 179
    const-string v0, ""

    .line 183
    :goto_0
    return-object v0

    .line 128
    :pswitch_0
    const-string v0, "N"

    goto :goto_0

    .line 131
    :pswitch_1
    const-string v0, "NNE"

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "NE"

    goto :goto_0

    .line 137
    :pswitch_3
    const-string v0, "ENE"

    goto :goto_0

    .line 140
    :pswitch_4
    const-string v0, "E"

    goto :goto_0

    .line 143
    :pswitch_5
    const-string v0, "ESE"

    goto :goto_0

    .line 146
    :pswitch_6
    const-string v0, "SE"

    goto :goto_0

    .line 149
    :pswitch_7
    const-string v0, "SSE"

    goto :goto_0

    .line 152
    :pswitch_8
    const-string v0, "S"

    goto :goto_0

    .line 155
    :pswitch_9
    const-string v0, "SSW"

    goto :goto_0

    .line 158
    :pswitch_a
    const-string v0, "SW"

    goto :goto_0

    .line 161
    :pswitch_b
    const-string v0, "WSW"

    goto :goto_0

    .line 164
    :pswitch_c
    const-string v0, "W"

    goto :goto_0

    .line 167
    :pswitch_d
    const-string v0, "WNW"

    goto :goto_0

    .line 170
    :pswitch_e
    const-string v0, "NW"

    goto :goto_0

    .line 173
    :pswitch_f
    const-string v0, "NNW"

    goto :goto_0

    .line 176
    :pswitch_10
    const-string v0, "N"

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/b/e/a/a;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/acmeaom/android/b/c/g/e;->a(Lcom/acmeaom/android/b/e/a/a;)V

    .line 49
    const-string v0, "name"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->b:Ljava/lang/String;

    .line 50
    const-string v0, "disc"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->c:Ljava/lang/String;

    .line 51
    const-string v0, "gust"

    const-class v1, Ljava/lang/Number;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->d:Ljava/lang/Number;

    .line 52
    const-string v0, "course"

    const-class v1, Ljava/lang/Number;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->e:Ljava/lang/Number;

    .line 53
    const-string v0, "type"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->f:Ljava/lang/String;

    .line 54
    const-string v0, "desc"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->g:Ljava/lang/String;

    .line 55
    const-string v0, "p"

    const-class v1, Ljava/lang/Number;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->h:Ljava/lang/Number;

    .line 56
    const-string v0, "speed"

    const-class v1, Ljava/lang/Number;

    invoke-virtual {p1, v0, v1}, Lcom/acmeaom/android/b/e/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->i:Ljava/lang/Number;

    .line 57
    return-void
.end method

.method public b()Lcom/acmeaom/android/a/a/b/o;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->k:Lcom/acmeaom/android/a/a/b/o;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->k:Lcom/acmeaom/android/a/a/b/o;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->k:Lcom/acmeaom/android/a/a/b/o;

    return-object v0
.end method

.method public c()Lcom/acmeaom/android/a/a/b/o;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->j:Lcom/acmeaom/android/a/a/b/o;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->j:Lcom/acmeaom/android/a/a/b/o;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->j:Lcom/acmeaom/android/a/a/b/o;

    return-object v0
.end method

.method protected d()Lcom/acmeaom/android/b/c/g/f;
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/acmeaom/android/b/c/g/e;->d()Lcom/acmeaom/android/b/c/g/f;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/acmeaom/android/b/c/g/d;->f:Ljava/lang/String;

    .line 69
    const-string v2, "Tropical Depression"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->c:Lcom/acmeaom/android/b/c/g/f;

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    const-string v2, "Tropical Storm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->d:Lcom/acmeaom/android/b/c/g/f;

    goto :goto_0

    .line 73
    :cond_2
    const-string v2, "Extratropical Depression"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->a:Lcom/acmeaom/android/b/c/g/f;

    goto :goto_0

    .line 75
    :cond_3
    const-string v2, "Extratropical Cyclone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->b:Lcom/acmeaom/android/b/c/g/f;

    goto :goto_0

    .line 77
    :cond_4
    const-string v2, "Post-Tropical Cyclone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v0, Lcom/acmeaom/android/b/c/g/f;->b:Lcom/acmeaom/android/b/c/g/f;

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->d:Ljava/lang/Number;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->h:Ljava/lang/Number;

    return-object v0
.end method

.method public k()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->i:Ljava/lang/Number;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/acmeaom/android/b/c/g/d;->e:Ljava/lang/Number;

    if-nez v0, :cond_0

    const-string v0, "N/A"

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/acmeaom/android/b/c/g/d;->e:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/acmeaom/android/b/c/g/d;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/b/c/g/d;->e:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0 )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    const-string v0, "%@ %@ has %d points and %d cones. name = %@"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/acmeaom/android/b/c/g/d;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/acmeaom/android/b/c/g/d;->k:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/o;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/acmeaom/android/b/c/g/d;->j:Lcom/acmeaom/android/a/a/b/o;

    invoke-virtual {v3}, Lcom/acmeaom/android/a/a/b/o;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/acmeaom/android/b/c/g/d;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
