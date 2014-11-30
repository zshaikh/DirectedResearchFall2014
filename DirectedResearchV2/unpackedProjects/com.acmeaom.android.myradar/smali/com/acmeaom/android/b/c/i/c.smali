.class public abstract Lcom/acmeaom/android/b/c/i/c;
.super Lcom/acmeaom/android/c/g/c/e;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/b/b/a;


# static fields
.field private static a:Lcom/acmeaom/android/a/a/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lcom/acmeaom/android/c/e/a;

    const-string v1, " 88\u00b0"

    const-string v2, "normal"

    const/high16 v3, 0x41500000

    invoke-static {}, Lcom/acmeaom/android/a/i/d;->c()Lcom/acmeaom/android/a/i/d;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/acmeaom/android/c/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/acmeaom/android/a/i/d;)V

    .line 85
    invoke-virtual {v0}, Lcom/acmeaom/android/c/e/a;->a()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v0

    sput-object v0, Lcom/acmeaom/android/b/c/i/c;->a:Lcom/acmeaom/android/a/a/c/n;

    .line 86
    return-void
.end method

.method public static a(Lcom/acmeaom/android/b/c/i/a;F)Lcom/acmeaom/android/a/a/c/d;
    .locals 12

    .prologue
    const/high16 v3, 0x40400000

    const/high16 v10, 0x3f800000

    const/high16 v9, 0x3f000000

    const/high16 v8, 0x3fc00000

    const/high16 v2, 0x40000000

    .line 127
    new-instance v7, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v7}, Lcom/acmeaom/android/a/a/c/n;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/acmeaom/android/b/c/i/a;->h:Lcom/acmeaom/android/b/c/i/b;

    sget-object v1, Lcom/acmeaom/android/b/c/i/b;->b:Lcom/acmeaom/android/b/c/i/b;

    if-ne v0, v1, :cond_2

    .line 129
    sget-object v0, Lcom/acmeaom/android/b/c/i/c;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v0, v0, Lcom/acmeaom/android/a/a/c/n;->a:F

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->d(F)F

    move-result v0

    const/high16 v1, 0x40800000

    add-float/2addr v0, v1

    iput v0, v7, Lcom/acmeaom/android/a/a/c/n;->a:F

    .line 130
    sget-object v0, Lcom/acmeaom/android/b/c/i/c;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v0, v0, Lcom/acmeaom/android/a/a/c/n;->b:F

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->d(F)F

    move-result v0

    const/high16 v1, 0x40800000

    add-float/2addr v0, v1

    iput v0, v7, Lcom/acmeaom/android/a/a/c/n;->b:F

    .line 141
    :goto_0
    invoke-static {}, Lcom/acmeaom/android/a/a/c/c;->a()Lcom/acmeaom/android/a/a/c/c;

    move-result-object v5

    .line 143
    iget v0, v7, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v0, p1

    float-to-int v1, v0

    .line 144
    iget v0, v7, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v0, p1

    float-to-int v2, v0

    .line 145
    const/4 v0, 0x0

    const/16 v3, 0x8

    mul-int/lit8 v4, v1, 0x4

    sget-object v6, Lcom/acmeaom/android/a/a/c/h;->b:Lcom/acmeaom/android/a/a/c/h;

    invoke-virtual {v6}, Lcom/acmeaom/android/a/a/c/h;->ordinal()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/acmeaom/android/a/a/c/d;->a(Ljava/lang/Object;IIIILcom/acmeaom/android/a/a/c/c;I)Lcom/acmeaom/android/a/a/c/d;

    move-result-object v3

    .line 153
    invoke-static {v5}, Lcom/acmeaom/android/a/a/c/c;->a(Lcom/acmeaom/android/a/a/c/c;)V

    .line 155
    invoke-static {v3, p1, p1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;FF)V

    .line 158
    new-instance v0, Lcom/acmeaom/android/a/a/c/m;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->b()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/acmeaom/android/a/a/c/m;-><init>(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/n;)V

    .line 159
    invoke-static {v0, v8, v8}, Lcom/acmeaom/android/a/a/c/m;->a(Lcom/acmeaom/android/a/a/c/m;FF)Lcom/acmeaom/android/a/a/c/m;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/acmeaom/android/b/c/i/a;->h:Lcom/acmeaom/android/b/c/i/b;

    sget-object v2, Lcom/acmeaom/android/b/c/i/b;->b:Lcom/acmeaom/android/b/c/i/b;

    if-ne v1, v2, :cond_3

    .line 163
    invoke-static {}, Lcom/acmeaom/android/a/a/c/a;->a()Lcom/acmeaom/android/a/a/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/c/i;->a(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;)Lcom/acmeaom/android/a/a/c/i;

    move-result-object v0

    .line 169
    :goto_1
    invoke-static {v3, v0}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 170
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/a;->a()Lcom/acmeaom/android/a/i/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V

    .line 171
    invoke-static {v3}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;)V

    .line 173
    invoke-static {v3, v0}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 174
    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/a;->b()Lcom/acmeaom/android/a/i/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/acmeaom/android/a/a/c/d;->b(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V

    .line 175
    invoke-static {v3, v8}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;F)V

    .line 176
    invoke-static {v3}, Lcom/acmeaom/android/a/a/c/d;->b(Lcom/acmeaom/android/a/a/c/d;)V

    .line 178
    invoke-static {v0}, Lcom/acmeaom/android/a/a/c/i;->a(Lcom/acmeaom/android/a/a/c/i;)V

    .line 181
    iget-wide v0, p0, Lcom/acmeaom/android/b/c/i/a;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/acmeaom/android/b/a/a;->a(F)Ljava/lang/Number;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/acmeaom/android/b/a/a;->b(Ljava/lang/Number;)F

    move-result v0

    .line 184
    const-string v1, " %.0f\u00b0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 186
    const/4 v2, 0x0

    .line 187
    invoke-static {}, Lcom/acmeaom/android/a/a/c/n;->a()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v1

    .line 188
    const/high16 v0, 0x41500000

    move v11, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v11

    :goto_2
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    .line 189
    new-instance v1, Lcom/acmeaom/android/c/e/a;

    const-string v0, "normal"

    invoke-virtual {p0}, Lcom/acmeaom/android/b/c/i/a;->b()Lcom/acmeaom/android/a/i/d;

    move-result-object v5

    invoke-direct {v1, v4, v0, v2, v5}, Lcom/acmeaom/android/c/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/acmeaom/android/a/i/d;)V

    .line 190
    invoke-virtual {v1}, Lcom/acmeaom/android/c/e/a;->a()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v0

    .line 191
    iget v5, v0, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget v6, v0, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v5, v6

    sget-object v6, Lcom/acmeaom/android/b/c/i/c;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v6, v6, Lcom/acmeaom/android/a/a/c/n;->a:F

    sget-object v8, Lcom/acmeaom/android/b/c/i/c;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v8, v8, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v6, v8

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    .line 196
    :cond_0
    new-instance v2, Lcom/acmeaom/android/a/a/c/l;

    iget v4, v7, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget v5, v0, Lcom/acmeaom/android/a/a/c/n;->a:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v9

    iget v5, v7, Lcom/acmeaom/android/a/a/c/n;->b:F

    iget v6, v0, Lcom/acmeaom/android/a/a/c/n;->b:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v9

    invoke-direct {v2, v4, v5}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    .line 199
    new-instance v4, Lcom/acmeaom/android/a/a/c/m;

    invoke-direct {v4, v2, v0}, Lcom/acmeaom/android/a/a/c/m;-><init>(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/n;)V

    .line 200
    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v1, v3, v4}, Lcom/acmeaom/android/c/e/a;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/m;)V

    .line 204
    :cond_1
    return-object v3

    .line 136
    :cond_2
    sget-object v0, Lcom/acmeaom/android/b/c/i/c;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v0, v0, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->d(F)F

    move-result v0

    mul-float/2addr v0, v2

    sub-float/2addr v0, v10

    iput v0, v7, Lcom/acmeaom/android/a/a/c/n;->a:F

    .line 137
    sget-object v0, Lcom/acmeaom/android/b/c/i/c;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v0, v0, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->d(F)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    iput v0, v7, Lcom/acmeaom/android/a/a/c/n;->b:F

    goto/16 :goto_0

    .line 166
    :cond_3
    invoke-static {}, Lcom/acmeaom/android/a/a/c/a;->a()Lcom/acmeaom/android/a/a/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/c/i;->b(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;)Lcom/acmeaom/android/a/a/c/i;

    move-result-object v0

    goto/16 :goto_1

    .line 188
    :cond_4
    sub-float/2addr v2, v10

    goto :goto_2
.end method

.method static a(Lcom/acmeaom/android/b/c/i/a;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    const-string v0, "%.0f-%.0f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/acmeaom/android/b/c/i/a;->h:Lcom/acmeaom/android/b/c/i/b;

    invoke-virtual {v3}, Lcom/acmeaom/android/b/c/i/b;->ordinal()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/acmeaom/android/b/c/i/a;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/b/ah;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method
