.class public Lorg/c/a/a/a/f;
.super Lorg/c/a/a/s;
.source "SecurityListener.java"


# static fields
.field private static final e:Lorg/c/a/d/c/d;


# instance fields
.field private f:Lorg/c/a/a/o;

.field private g:Lorg/c/a/a/t;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/c/a/a/a/f;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/o;Lorg/c/a/a/t;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p2}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/c/a/a/s;-><init>(Lorg/c/a/a/r;Z)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/a/f;->k:I

    .line 60
    iput-object p1, p0, Lorg/c/a/a/a/f;->f:Lorg/c/a/a/o;

    .line 61
    iput-object p2, p0, Lorg/c/a/a/a/f;->g:Lorg/c/a/a/t;

    .line 62
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityListener:Response Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_0
    const/16 v0, 0x191

    if-ne p2, v0, :cond_1

    iget v0, p0, Lorg/c/a/a/a/f;->k:I

    iget-object v1, p0, Lorg/c/a/a/a/f;->f:Lorg/c/a/a/o;

    invoke-virtual {v1}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/k;->m()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 133
    invoke-virtual {p0, v3}, Lorg/c/a/a/a/f;->b(Z)V

    .line 134
    iput-boolean v4, p0, Lorg/c/a/a/a/f;->j:Z

    .line 142
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/c/a/a/s;->a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V

    .line 143
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0, v4}, Lorg/c/a/a/a/f;->b(Z)V

    .line 139
    invoke-virtual {p0, v4}, Lorg/c/a/a/a/f;->a(Z)V

    .line 140
    iput-boolean v3, p0, Lorg/c/a/a/a/f;->j:Z

    goto :goto_0
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityListener:Header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/a/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    sget-object v0, Lorg/c/a/b/o;->a:Lorg/c/a/b/o;

    invoke-virtual {v0, p1}, Lorg/c/a/b/o;->c(Lorg/c/a/c/f;)I

    move-result v0

    .line 157
    packed-switch v0, :pswitch_data_0

    .line 194
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/c/a/a/s;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 195
    return-void

    .line 162
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Lorg/c/a/a/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p0, v0}, Lorg/c/a/a/a/f;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 167
    const-string v3, "/"

    .line 168
    iget-object v0, p0, Lorg/c/a/a/a/f;->f:Lorg/c/a/a/o;

    invoke-virtual {v0}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/k;->c()Lorg/c/a/a/a/e;

    move-result-object v4

    .line 170
    if-eqz v4, :cond_1

    .line 175
    const-string v0, "realm"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lorg/c/a/a/a/f;->f:Lorg/c/a/a/o;

    invoke-interface {v4, v0, v5, v3}, Lorg/c/a/a/a/e;->a(Ljava/lang/String;Lorg/c/a/a/o;Ljava/lang/String;)Lorg/c/a/a/a/d;

    move-result-object v0

    .line 177
    if-nez v0, :cond_2

    .line 179
    sget-object v1, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Security Realm: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "realm"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_2
    const-string v4, "digest"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    iget-object v1, p0, Lorg/c/a/a/a/f;->f:Lorg/c/a/a/o;

    const-string v3, "/"

    new-instance v4, Lorg/c/a/a/a/c;

    invoke-direct {v4, v0, v2}, Lorg/c/a/a/a/c;-><init>(Lorg/c/a/a/a/d;Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Lorg/c/a/a/o;->a(Ljava/lang/String;Lorg/c/a/a/a/a;)V

    goto :goto_0

    .line 186
    :cond_3
    const-string v2, "basic"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lorg/c/a/a/a/f;->f:Lorg/c/a/a/o;

    new-instance v2, Lorg/c/a/a/a/b;

    invoke-direct {v2, v0}, Lorg/c/a/a/a/b;-><init>(Lorg/c/a/a/a/d;)V

    invoke-virtual {v1, v3, v2}, Lorg/c/a/a/o;->a(Ljava/lang/String;Lorg/c/a/a/a/a;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 107
    aget-object v1, v3, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 108
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v3}, Lorg/c/a/d/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    sget-object v3, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecurityListener: missed scraping authentication details - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_1
    return-object v0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    iput-boolean v4, p0, Lorg/c/a/a/a/f;->h:Z

    .line 203
    iget-boolean v0, p0, Lorg/c/a/a/a/f;->j:Z

    if-eqz v0, :cond_3

    .line 205
    iget-boolean v0, p0, Lorg/c/a/a/a/f;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/c/a/a/a/f;->i:Z

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestComplete, Both complete: Resending from onResponseComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/a/f;->g:Lorg/c/a/a/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_0
    iput-boolean v3, p0, Lorg/c/a/a/a/f;->i:Z

    .line 210
    iput-boolean v3, p0, Lorg/c/a/a/a/f;->h:Z

    .line 211
    invoke-virtual {p0, v4}, Lorg/c/a/a/a/f;->a(Z)V

    .line 212
    invoke-virtual {p0, v4}, Lorg/c/a/a/a/f;->b(Z)V

    .line 213
    iget-object v0, p0, Lorg/c/a/a/a/f;->f:Lorg/c/a/a/o;

    iget-object v1, p0, Lorg/c/a/a/a/f;->g:Lorg/c/a/a/t;

    invoke-virtual {v0, v1}, Lorg/c/a/a/o;->b(Lorg/c/a/a/t;)V

    .line 228
    :goto_0
    return-void

    .line 217
    :cond_1
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestComplete, Response not yet complete onRequestComplete, calling super for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/a/f;->g:Lorg/c/a/a/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_2
    invoke-super {p0}, Lorg/c/a/a/s;->b()V

    goto :goto_0

    .line 224
    :cond_3
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestComplete, delegating to super with Request complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/c/a/a/a/f;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/c/a/a/a/f;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/a/f;->g:Lorg/c/a/a/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_4
    invoke-super {p0}, Lorg/c/a/a/s;->b()V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    iput-boolean v4, p0, Lorg/c/a/a/a/f;->i:Z

    .line 235
    iget-boolean v0, p0, Lorg/c/a/a/a/f;->j:Z

    if-eqz v0, :cond_3

    .line 237
    iget-boolean v0, p0, Lorg/c/a/a/a/f;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/c/a/a/a/f;->i:Z

    if-eqz v0, :cond_1

    .line 239
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponseComplete, Both complete: Resending from onResponseComplete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/a/f;->g:Lorg/c/a/a/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_0
    iput-boolean v3, p0, Lorg/c/a/a/a/f;->i:Z

    .line 242
    iput-boolean v3, p0, Lorg/c/a/a/a/f;->h:Z

    .line 243
    invoke-virtual {p0, v4}, Lorg/c/a/a/a/f;->b(Z)V

    .line 244
    invoke-virtual {p0, v4}, Lorg/c/a/a/a/f;->a(Z)V

    .line 245
    iget-object v0, p0, Lorg/c/a/a/a/f;->f:Lorg/c/a/a/o;

    iget-object v1, p0, Lorg/c/a/a/a/f;->g:Lorg/c/a/a/t;

    invoke-virtual {v0, v1}, Lorg/c/a/a/o;->b(Lorg/c/a/a/t;)V

    .line 261
    :goto_0
    return-void

    .line 250
    :cond_1
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponseComplete, Request not yet complete from onResponseComplete,  calling super "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/a/f;->g:Lorg/c/a/a/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_2
    invoke-super {p0}, Lorg/c/a/a/s;->d()V

    goto :goto_0

    .line 257
    :cond_3
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    sget-object v0, Lorg/c/a/a/a/f;->e:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResponseComplete, delegating to super with Request complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/c/a/a/a/f;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response complete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/c/a/a/a/f;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/a/f;->g:Lorg/c/a/a/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :cond_4
    invoke-super {p0}, Lorg/c/a/a/s;->d()V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 266
    iget v0, p0, Lorg/c/a/a/a/f;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/a/f;->k:I

    .line 267
    invoke-virtual {p0, v2}, Lorg/c/a/a/a/f;->a(Z)V

    .line 268
    invoke-virtual {p0, v2}, Lorg/c/a/a/a/f;->b(Z)V

    .line 269
    iput-boolean v1, p0, Lorg/c/a/a/a/f;->h:Z

    .line 270
    iput-boolean v1, p0, Lorg/c/a/a/a/f;->i:Z

    .line 271
    iput-boolean v1, p0, Lorg/c/a/a/a/f;->j:Z

    .line 272
    invoke-super {p0}, Lorg/c/a/a/s;->f()V

    .line 273
    return-void
.end method
